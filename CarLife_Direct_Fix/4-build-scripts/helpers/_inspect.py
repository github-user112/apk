import zipfile, sys, json

apk = r'C:\PJGG\apk\signed\CarLife_patched_unsigned-aligned-debugSigned.apk'
z = zipfile.ZipFile(apk)
libs = [i.filename for i in z.infolist() if i.filename.startswith('lib/')]
other = [i.filename for i in z.infolist() if ('AndroidManifest' in i.filename or i.filename.startswith('classes'))]
out = []
out.append('lib count = %d' % len(libs))
out.extend(libs[:40])
out.append('--- manifest/classes ---')
out.extend(other)
total = sum(i.file_size for i in z.infolist())
out.append('total uncompressed = %d' % total)
with open(r'C:\PJGG\apk\_dev4.txt', 'w', encoding='utf-8') as f:
    f.write('\n'.join(out))
print('ok')
