# -*- coding: utf-8 -*-
import zipfile

APK = r'C:\PJGG\apk\CarLife4.0车机端个人修改版1.9_直连修复v3_Android10以上兼容.apk'
z = zipfile.ZipFile(APK)
d = z.read('classes.dex')

keys = ['CarLife-HU', 'CONFIG_WIFI_DIRECT_NAME', 'setDeviceName',
        'Build$VERSION', 'BluetoothAdapter', 'enable', 'isEnabled']
for k in keys:
    print('%-26s in dex: %s' % (k, k.encode('utf-8') in d))

print('\ndex size:', len(d))
print('assets/bdcf 尾部:')
print(z.read('assets/bdcf').decode('utf-8')[-260:])
