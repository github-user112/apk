#!/bin/bash
# realme RMX2121 (Android 12) v5 安装(覆盖保留数据) + 直连测试
set -u
cd "C:/PJGG/apk"
export ANDROID_ADB_SERVER_PORT=5037
ADB="/c/Program Files (x86)/Nemu/vmonitor/bin/adb_server.exe"
D="-s RWPRTCMVSWQWMJBA"
PY="C:/Users/gpj/.workbuddy/binaries/python/versions/3.13.12/python.exe"
PKG=com.baidu.carlifevehicle
APK="C:/PJGG/apk/cl111.apk"

"$ADB" start-server >/dev/null 2>&1

echo "=== 1. 唤醒 ==="
timeout 20 "$ADB" $D shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
timeout 20 "$ADB" $D shell "input swipe 540 2000 540 600 200" >/dev/null 2>&1
sleep 2

echo "=== 2. 停应用 + 推送 ==="
timeout 30 "$ADB" $D shell "am force-stop $PKG" >/dev/null 2>&1
timeout 150 "$ADB" $D push "$APK" /data/local/tmp/clv5.apk 2>&1 | tail -1 | tr -d '\r'

echo "=== 3. 后台发起覆盖安装 (-r -g) ==="
timeout 240 "$ADB" $D shell "pm install -r -g /data/local/tmp/clv5.apk" > _rl_v5ins.txt 2>&1 &
sleep 8

echo "=== 4. 自动确认安装页 ==="
for i in $(seq 1 10); do
  timeout 25 "$ADB" $D shell "rm -f /sdcard/ins5.xml" >/dev/null 2>&1
  timeout 25 "$ADB" $D shell "uiautomator dump /sdcard/ins5.xml" >/dev/null 2>&1
  timeout 25 "$ADB" $D shell "cat /sdcard/ins5.xml" 2>/dev/null | tr -d '\r' > _ins5.xml
  RES=$("$PY" -c "
import re
try: s=open(r'C:\PJGG\apk\_ins5.xml',encoding='utf-8',errors='replace').read()
except Exception: print('NONE'); raise SystemExit
if len(s)<50: print('NONE'); raise SystemExit
for tg in ['继续安装','完成','打开应用']:
    for m in re.finditer(r'<node[^>]*>', s):
        t=m.group(0)
        tm=re.search(r'text=\"([^\"]*)\"',t)
        if not tm: continue
        if tm.group(1).strip()!=tg: continue
        bd=re.search(r'bounds=\"\[(\d+),(\d+)\]\[(\d+),(\d+)\]\"',t)
        if bd:
            x=(int(bd.group(1))+int(bd.group(3)))//2
            y=(int(bd.group(2))+int(bd.group(4)))//2
            print('%s|%d|%d'%(tg,x,y)); raise SystemExit
print('NONE')
")
  echo "  [$i] $RES"
  case "$RES" in
    NONE) sleep 2 ;;
    *) T=${RES%%|*}; XY=${RES#*|}; X=${XY%%|*}; Y=${XY##*|}
       timeout 20 "$ADB" $D shell "input touchscreen tap $X $Y" >/dev/null 2>&1
       sleep 3
       [ "$T" = "完成" ] || [ "$T" = "打开应用" ] && break ;;
  esac
done
wait 2>/dev/null

echo "=== 5. 安装结果 ==="
cat _rl_v5ins.txt 2>/dev/null | tr -d '\r' | tail -3
timeout 30 "$ADB" $D shell "dumpsys package $PKG | grep -E 'versionName|userId|lastUpdateTime'" 2>&1 | tr -d '\r'

echo "=== 6. 清日志并启动 ==="
timeout 25 "$ADB" $D shell "input keyevent KEYCODE_WAKEUP" >/dev/null 2>&1
timeout 25 "$ADB" $D logcat -c >/dev/null 2>&1
timeout 30 "$ADB" $D shell "am start -n $PKG/.CarlifeActivity" 2>&1 | tr -d '\r'

echo "=== 7. 等待 60 秒 (8s 首次 + 每 8s 重试) ==="
sleep 60

echo "=== 8. 自举器日志 ==="
timeout 60 "$ADB" $D logcat -d -v time 2>&1 | tr -d '\r' | grep -E "CarLifeP2PBoot" | tail -40
echo "--- end bootstrap ---"

echo "=== 9. 直连/P2P 日志 ==="
timeout 60 "$ADB" $D logcat -d -v time 2>&1 | tr -d '\r' | grep -E "WifiDirect|WifiP2p|p2p|createGroup|DiscoverPeers|groupFormed" | tail -25

echo "=== 10. 进程 ==="
timeout 20 "$ADB" $D shell "ps -A | grep -i carlife" 2>&1 | tr -d '\r'

echo "=== 11. 截图 ==="
timeout 40 "$ADB" $D shell "screencap -p /sdcard/rlv5.png" >/dev/null 2>&1
timeout 40 "$ADB" $D pull /sdcard/rlv5.png "C:/PJGG/apk/_real_v5.png" 2>&1 | tail -1 | tr -d '\r'

echo "=== 12. 全量日志 ==="
timeout 90 "$ADB" $D logcat -d -v time > _real_v5log.txt 2>&1
wc -l _real_v5log.txt
echo DONE
