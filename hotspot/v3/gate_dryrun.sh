#!/bin/bash
# gate 七场景干跑（每场景独立进程 + timeout，规避 MSYS fork 抖动）
# 用法: bash gate_dryrun.sh
cd "$(dirname "$0")" || exit 1
WORK=/tmp/gate_test
mkdir -p "$WORK"

# 每次从生产脚本重新提取函数（保证干跑的就是真实代码）
sed -n '/^proc_uptime()/,/^}/p;/^has_mod()/,/^}/p;/^uptime_s()/,/^}/p;/^fw_sample()/,/^}/p;/^settle()/,/^}/p' \
  ../boot_hotspot.sh > "$WORK/funcs.sh"

# 公共 stub 环境：MOCK_* 由场景以环境变量传入
cat > "$WORK/stubs.sh" <<'EOF'
settings() {
  if [ -n "$MOCK_FLAP" ]; then   # 抖动场景：第 2 次采样不就绪，其余就绪
    N=$(( ${N:-0} + 1 ))
    if [ "$N" = "2" ]; then echo 1; else echo 0; fi
    return
  fi
  echo "$MOCK_W"
}
getprop()  { echo "$MOCK_D"; }
ps()       { echo "$MOCK_PS"; }
busybox()  { local sub="$1"; shift; if [ "$sub" = "tr" ]; then command tr "$@"; fi; }
sleep()    { :; }
log()      { echo "$*"; }
glog()     { echo "$*"; }
source /tmp/gate_test/funcs.sh
has_mod()  { return $MOCK_MOD; }        # 0=模块已加载 1=未加载
uptime_s() { echo "${MOCK_UP:-40}"; }
SETTLE_UP=80
settle
EOF

PASS=0; FAIL=0
run_case() {
  local name="$1" expect="$2"; shift 2
  local out
  out=$(env "$@" timeout 90 bash "$WORK/stubs.sh" 2>&1)
  local rc=$?
  local open_line=$(echo "$out" | grep "OPEN" | tail -1)
  if [ $rc -eq 124 ]; then
    echo "FAIL  $name：settle 挂起（环境超时）"; FAIL=$((FAIL+1)); return
  fi
  if echo "$open_line" | grep -q "reason=$expect"; then
    echo "PASS  $name -> $open_line"; PASS=$((PASS+1))
  else
    echo "FAIL  $name（期望 reason=$expect）"; echo "$out" | tail -4; FAIL=$((FAIL+1))
  fi
}

run_case "1.fast(wifi_on=0/无supp/无模块)" "fast" \
  MOCK_W=0 MOCK_D= MOCK_PS= MOCK_MOD=1
run_case "2.fast被模块挡(已insmod/未fork supp)->80s硬顶" "hard-cap" \
  MOCK_W=0 MOCK_D= MOCK_PS= MOCK_MOD=0
run_case "3.init-done(drv=ok+supp)" "init-done" \
  MOCK_W=1 MOCK_D=ok MOCK_PS="root 1234 wpa_supplicant" MOCK_MOD=0
run_case "4.supp-only(无drv属性+supp)" "supp-only" \
  MOCK_W=1 MOCK_D= MOCK_PS="root 1234 wpa_supplicant" MOCK_MOD=0
run_case "5.null不再当fast->80s硬顶" "hard-cap" \
  MOCK_W=null MOCK_D= MOCK_PS= MOCK_MOD=1
run_case "6.抖动重置(第2次不就绪)" "fast" \
  MOCK_FLAP=1 MOCK_D= MOCK_PS= MOCK_MOD=1
run_case "7.相对硬顶(绝对up=200也等满80s)" "hard-cap" \
  MOCK_W=1 MOCK_D= MOCK_PS= MOCK_MOD=0 MOCK_UP=200

# 场景 7 附加断言：必须 waited=80s，而非第一次采样就放行
env MOCK_W=1 MOCK_D= MOCK_PS= MOCK_MOD=0 MOCK_UP=200 timeout 90 bash "$WORK/stubs.sh" 2>&1 \
  | grep "OPEN" | grep -q "waited=80s" \
  && echo "PASS  7b.硬顶确在 waited=80s（非绝对up触发）" && PASS=$((PASS+1)) \
  || { echo "FAIL  7b.waited!=80s"; FAIL=$((FAIL+1)); }

echo "=============================="
echo "结果: PASS=$PASS FAIL=$FAIL"
[ $FAIL -eq 0 ]
