import sys, zipfile, os
args = sys.argv[1:]
quiet = False
store = False
delete = False
rest = []
for a in args:
    if a == "-q": quiet = True
    elif a == "-0": store = True
    elif a == "-d": delete = True
    else: rest.append(a)
if delete:
    arc = rest[0]
    names = set(rest[1:])
    tmp = arc + ".tmp"
    with zipfile.ZipFile(arc, "r") as zin, zipfile.ZipFile(tmp, "w") as zout:
        for item in zin.infolist():
            if item.filename in names: continue
            zout.writestr(item, zin.read(item.filename))
    os.replace(tmp, arc)
else:
    arc = rest[0]
    files = rest[1:]
    mode = zipfile.ZIP_STORED if store else zipfile.ZIP_DEFLATED
    with zipfile.ZipFile(arc, "a", mode) as z:
        for f in files:
            z.write(f, f)
sys.exit(0)
