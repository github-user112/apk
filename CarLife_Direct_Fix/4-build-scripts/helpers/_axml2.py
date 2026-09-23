import zipfile, struct, sys

def get_strings(data):
    # find string pool chunk (type 0x0001)
    off = 8
    while off < len(data) - 8:
        ct, ch, cs = struct.unpack('<HHI', data[off:off+8])
        if ct == 0x0001:
            scount, scnt, sstyle, flags, strStart, stylesStart = struct.unpack('<IIIIII', data[off+8:off+32])
            strs = []
            if flags & 0x100:
                p = off + strStart
                for i in range(scount):
                    p += 1  # utf16 len varint (assume <128)
                    ln = data[p]; p += 1
                    strs.append(data[p:p+ln].decode('utf-8', 'replace')); p += ln + 1
            else:
                p = off + strStart
                for i in range(scount):
                    ln = struct.unpack('<H', data[p:p+2])[0]; p += 2
                    strs.append(data[p:p+ln*2].decode('utf-16-le', 'replace')); p += ln*2 + 2
            return strs, off, cs
        if cs == 0: break
        off += cs
    return [], 0, 0

# resource ids
RID = {
 0x0101021b:'versionCode', 0x0101021c:'versionName', 0x0101020c:'minSdkVersion',
 0x01010270:'targetSdkVersion', 0x0101026b:'compileSdkVersion', 0x0101026c:'compileSdkVersionCodename'}
NAMES = {'manifest':None}

def parse(path):
    d = zipfile.ZipFile(path).read('AndroidManifest.xml')
    strs, stroff, _ = get_strings(d)
    out = []
    # scan whole file for XML nodes
    off = stroff + struct.unpack('<I', d[stroff+4:stroff+8])[0]
    # find resource map chunk
    rmap = None
    o = 8
    while o < len(d)-8:
        ct, ch, cs = struct.unpack('<HHI', d[o:o+8])
        if ct == 0x0180:
            rmap = d[o+8:o+cs]
            break
        if cs == 0: break
        o += cs
    def rid_name(i):
        if rmap:
            idx = (i >> 16) - 1  # package id 0x7f? for framework 0x01
        return hex(i)
    # walk nodes: start at first 0x0102 chunk
    o = 8
    while o < len(d)-8:
        ct, ch, cs = struct.unpack('<HHI', d[o:o+8])
        if cs == 0: break
        if ct == 0x0102:  # start element
            line, comment = struct.unpack('<II', d[o+8:o+16])
            ns, name = struct.unpack('<II', d[o+16:o+24])
            attrStart, attrSize, attrCount = struct.unpack('<HHH', d[o+24:o+30])
            idIdx, clsIdx, styleIdx = struct.unpack('<HHH', d[o+30:o+36])
            tn = strs[name] if name < len(strs) else '?'
            attrs = []
            p = o + 36
            for i in range(attrCount):
                ans, aname, avalue, atype, adata = struct.unpack('<IIIII', d[p:p+20])
                an = strs[aname] if aname < len(strs) else '?'
                avs = strs[avalue] if (atype == 3 and avalue < len(strs)) else None
                attrs.append((an, atype, adata, avs))
                p += 20
            out.append((tn, attrs))
        o += cs
    return out, strs, rmap

for path in sys.argv[1:]:
    nodes, strs, rmap = parse(path)
    print('#####', path)
    # resolve: build map of resource id -> name using rmap for framework attrs (0x0101xxxx)
    def aname(ans, an, avalue, atype, adata, avs):
        return an
    for tn, attrs in nodes[:1]:
        print('root:', tn)
        for an, atype, adata, avs in attrs:
            v = avs if avs is not None else (adata if atype in (16,18) else str(adata))
            print('   ', an, '=', v)
    # uses-sdk
    for tn, attrs in nodes:
        if tn in ('uses-sdk','uses-feature','uses-permission','application','activity','service','receiver','provider','meta-data'):
            if tn in ('uses-sdk','uses-feature','application'):
                d_ = dict()
                for an, atype, adata, avs in attrs:
                    d_[an] = avs if avs is not None else adata
                print(tn, d_)
    print()
