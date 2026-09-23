import zipfile, re, sys, collections

def dump(apk, out):
    z = zipfile.ZipFile(apk)
    dexes = [n for n in z.namelist() if n.startswith('classes') and n.endswith('.dex')]
    buf = b''.join(z.read(n) for n in dexes)
    # printable ascii runs
    strs = re.findall(rb'[\x20-\x7e]{5,}', buf)
    cnt = collections.Counter(s.decode('ascii') for s in strs)
    with open(out, 'w', encoding='utf-8') as f:
        for s, c in cnt.most_common():
            f.write('%d\t%s\n' % (c, s))
    print('wrote', out, len(cnt))

if __name__ == '__main__':
    dump(sys.argv[1], sys.argv[2])
