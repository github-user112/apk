#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Decode Tencent Mars xlog .xlog files to plain text (verified on CarLife phone
SDK 8.6.6 logs and any Mars "crypt" container without AES, magic 0x09).

Block layout (Tencent/mars decode_mars_crypt_log_file.py):
  offset 0      : magic byte (0x09 compress-no-crypt, 64-byte key field)
                  0x03/0x04/0x05 -> 4-byte key field
  offset 5..8   : payload length (uint32 LE)
  offset 9..    : crypt-key/header field (64 bytes for 0x09; contains the
                  appender string, e.g. "log_appenderOpen__Lcom_tencent_...")
  headerLen     = 9 + key_len   (0x09 -> 73)
  payload       : [headerLen, headerLen+length)  -- raw DEFLATE stream
  terminator    : byte at headerLen+length must be 0x00

Payload for 0x09 is only compressed (no encryption): zlib.decompressobj(-15).
For 0x03/0x04/0x05 (encrypted) an ECC key would be needed -> report and skip.

Usage:
  python decode_xlog.py <input.xlog> [output.log]
"""
import sys, struct, zlib

MAGIC_END = 0x00
# magic -> crypt-key-field length
KEY_LEN = {
    0x03: 4, 0x04: 4, 0x05: 4,          # compressed, ECC-encrypted
    0x06: 64, 0x08: 64,                 # no-compress variants
    0x07: 64, 0x09: 64,                 # compressed (0x09 = no AES)
    0x0A: 64, 0x0B: 64, 0x0C: 64, 0x0D: 64,  # zstd variants
}

def ratio(b):
    if not b:
        return 0.0
    return sum(1 for c in b if 32 <= c < 127 or c in (9, 10, 13)) / len(b)

def decode_all(raw):
    parts, n = [], len(raw)
    p = ok = skipped_enc = 0
    while p < n:
        m = raw[p]
        if m not in KEY_LEN:
            p += 1
            continue
        key_len = KEY_LEN[m]
        header_len = 9 + key_len
        if p + header_len + 1 > n:
            break
        (length,) = struct.unpack_from('<I', raw, p + 5)
        if length <= 0 or length > 0x400000 or p + header_len + length >= n:
            p += 1
            continue
        if raw[p + header_len + length] != MAGIC_END:
            p += 1
            continue
        payload = raw[p + header_len:p + header_len + length]
        dec = None
        if m in (0x07, 0x09):               # compressed, NOT encrypted (deflate)
            try:
                dco = zlib.decompressobj(-15)
                dec = dco.decompress(payload) + dco.flush()
            except Exception:
                dec = None
        elif m in (0x0B, 0x0D):             # zstd no-crypt (needs zstandard)
            try:
                import zstandard
                dec = zstandard.ZstdDecompressor().decompress(payload)
            except Exception:
                dec = None
        elif m == 0x08:                      # plain text, no compress no crypt
            dec = payload
        if m in (0x03, 0x04, 0x05, 0x06):   # ECC-encrypted -> cannot decode here
            skipped_enc += 1
            p += header_len + length + 1
            continue
        if dec and ratio(dec) > 0.5:
            parts.append(dec)
            ok += 1
        p += header_len + length + 1
    return b"\n".join(parts), ok, skipped_enc

def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 2
    src = sys.argv[1]
    if len(sys.argv) > 2:
        dst = sys.argv[2]
    elif src.lower().endswith(".xlog"):
        dst = src[:-5] + ".log"
    else:
        dst = src + ".log"
    raw = open(src, 'rb').read()
    out, ok, skipped_enc = decode_all(raw)
    if not out:
        print("No blocks decoded. If the file starts with 0x01/0x02 it is the old"
              " v1 crypt format (needs decode_mars_crypt_log_file.py + ECC key).")
        return 1
    open(dst, 'wb').write(out)
    print("blocks={} bytes={} encrypted_skipped={} -> {}".format(ok, len(out), skipped_enc, dst))
    return 0

if __name__ == '__main__':
    sys.exit(main())
