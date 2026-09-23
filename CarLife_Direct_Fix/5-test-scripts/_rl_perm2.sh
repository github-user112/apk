#!/bin/bash
# 用 input touchscreen tap 自动点掉 realme 权限弹窗
cd "C:/PJGG/apk"
export ANDROID_ADB_SERVER_PORT=5037
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s RWPRTCMVSWQWMJBA"
PY="C:/Users/gpj/.workbuddy/binaries/python/versions/3.13.12/python.exe"

"$ADB" start-server >/dev/null 2>&1

for i in $(seq 1 15); do
  timeout 25 "$ADB" $D shell "rm -f /sdcard/up.xml" >/dev/null 2>&1
  timeout 25 "$ADB" $D shell "uiautomator dump /sdcard/up.xml" >/dev/null 2>&1
  timeout 25 "$ADB" $D shell "cat /sdcard/up.xml" 2>/dev/null | tr -d '\r' > _up.xml

  RES=$("$PY" -c "
import re
try:
    s=open(r'C:\PJGG\apk\_up.xml',encoding='utf-8',errors='replace').read()
except Exception:
    print('NONE|read-fail'); raise SystemExit
if len(s)<50: print('NONE|empty'); raise SystemExit
focus=''
# 优先级: 精确文案优先
order=['仅在使用中允许','始终允许','使用应用时允许','允许','确定','同意','开始使用','我知道了','我已了解','继续','好的']
best=None
for m in re.finditer(r'<node[^>]*>', s):
    t=m.group(0)
    tm=re.search(r'text=\"([^\"]*)\"',t)
    if not tm: continue
    txt=tm.group(1).strip()
    if not txt: continue
    for rank,tg in enumerate(order):
        if txt==tg:
            bd=re.search(r'bounds=\"\[(\d+),(\d+)\]\[(\d+),(\d+)\]\"',t)
            if bd:
                x=(int(bd.group(1))+int(bd.group(3)))//2
                y=(int(bd.group(2))+int(bd.group(4)))//2
                if best is None or rank<best[0]:
                    best=(rank,txt,x,y)
if best:
    print('%s|%d|%d'%(best[1],best[2],best[3])); raise SystemExit
pkg=set(re.findall(r'package=\"([^\"]+)\"', s))
print('NONE|'+','.join(sorted(pkg))[:100])
")
  echo "[round $i] $RES"
  case "$RES" in
    NONE*) break ;;
    *) T=$(echo "$RES" | cut -d'|' -f1); X=$(echo "$RES" | cut -d'|' -f2); Y=$(echo "$RES" | cut -d'|' -f3)
       timeout 20 "$ADB" $D shell "input touchscreen tap $X $Y" >/dev/null 2>&1
       sleep 2 ;;
  esac
done

echo "=== 最终焦点 ==="
timeout 25 "$ADB" $D shell "dumpsys window 2>/dev/null | grep -iE 'mCurrentFocus'" 2>&1 | tr -d '\r'
echo "=== 权限核查 ==="
timeout 25 "$ADB" $D shell "dumpsys package com.baidu.carlifevehicle 2>/dev/null | grep -E 'android.permission.(ACCESS_FINE_LOCATION|ACCESS_COARSE_LOCATION|RECORD_AUDIO|READ_EXTERNAL_STORAGE|WRITE_EXTERNAL_STORAGE): granted'" 2>&1 | tr -d '\r'
