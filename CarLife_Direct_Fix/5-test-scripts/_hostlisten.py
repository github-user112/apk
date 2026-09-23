import socket, time, sys
port = 8899
s = socket.socket(); s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(('0.0.0.0', port)); s.listen(5)
print('LISTENING 0.0.0.0:%d' % port, flush=True)
t = time.time()
while time.time() - t < 60:
    try:
        s.settimeout(2); c, a = s.accept()
        print('ACCEPT from %s:%s' % a, flush=True)
        c.send(b'CARLIFE_FAKE_PHONE_OK\n'); c.close()
    except Exception:
        pass
print('listener done', flush=True)
