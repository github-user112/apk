import sys, zipfile, struct

# minimal AXML parser: extract strings + selected attr values
def parse_axml(data):
    out = []
    # header
    if data[:4] != b'\x03\x00\x08\x00':
        return None
    strings_off = struct.unpack('<I', data[16:20])[0]
    # string pool
    # chunk type at strings_off
    ct, ch, cs = struct.unpack('<HHI', data[strings_off:strings_off+8])
    scount, scount2, sstyle, flags, strStart, stylesStart = struct.unpack('<IIIIII', data[strings_off+8:strings_off+32])
    strs = []
    if flags & 0x100:  # UTF-8
        off = strings_off + strStart
        for i in range(scount):
            # utf16 len
            ln = data[off]
            off += 1
            ln2 = data[off]
            off += 1
            strs.append(data[off:off+ln2].decode('utf-8', 'replace'))
            off += ln2 + 1
    else:
        off = strings_off + strStart
        for i in range(scount):
            ln = struct.unpack('<H', data[off:off+2])[0]
            off += 2
            strs.append(data[off:off+ln*2].decode('utf-16-le', 'replace'))
            off += ln*2 + 2
    return strs

def scan(path):
    z = zipfile.ZipFile(path)
    d = z.read('AndroidManifest.xml')
    strs = parse_axml(d)
    # resource map: we just dump strings that look interesting
    keys = ['package', 'minSdk', 'targetSdk', 'versionName', 'versionCode', 'compileSdk']
    res = {}
    for s in strs:
        for k in ('com.baidu', 'com.android'):
            pass
    pkgs = [s for s in strs if s.count('.') >= 2 and s.startswith('com.') and ' ' not in s and len(s) < 60]
    out = []
    out.append('== %s ==' % path)
    out.append('candidate packages: %s' % sorted(set(pkgs))[:20])
    # crude: find minSdkVersion by locating known attr resource ids is complex; use string heuristics on full file
    return '\n'.join(out)

for p in sys.argv[1:]:
    print(scan(p))
