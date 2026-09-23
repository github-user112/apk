#!/usr/bin/env python3
"""Minimal HTTP CONNECT tunnel for use as an ssh ProxyCommand.

Usage: python proxy_connect.py <host> <port>
Reads proxy address from HTTP_PROXY env (default 127.0.0.1:54834).
"""
import os
import socket
import sys
import threading


def parse_proxy(raw):
    raw = raw.replace("http://", "").replace("https://", "").rstrip("/")
    host, _, port = raw.partition(":")
    return host, int(port or 80)


def main():
    if len(sys.argv) < 3:
        sys.stderr.write("usage: proxy_connect.py HOST PORT\n")
        return 2
    host, port = sys.argv[1], int(sys.argv[2])
    phost, pport = parse_proxy(os.environ.get("HTTPS_PROXY") or os.environ.get("https_proxy") or "127.0.0.1:54834")

    s = socket.create_connection((phost, pport), timeout=40)
    s.sendall(("CONNECT %s:%d HTTP/1.1\r\nHost: %s:%d\r\n\r\n" % (host, port, host, port)).encode())
    buf = b""
    while b"\r\n\r\n" not in buf:
        chunk = s.recv(4096)
        if not chunk:
            break
        buf += chunk
    line = buf.split(b"\r\n")[0].decode("latin1", "replace")
    if " 200 " not in line:
        sys.stderr.write("CONNECT failed: %s\n" % line)
        return 1

    def pump(src, dst):
        try:
            while True:
                data = src.recv(65536)
                if not data:
                    break
                dst.sendall(data)
                try:
                    dst.flush()
                except Exception:
                    pass
        except Exception:
            pass
        try:
            dst.shutdown(socket.SHUT_WR)
        except Exception:
            pass
        except BaseException:
            pass

    t = threading.Thread(target=pump, args=(s, sys.stdout.buffer), daemon=True)
    t.start()
    pump(sys.stdin.buffer, s)
    return 0


if __name__ == "__main__":
    sys.exit(main())
