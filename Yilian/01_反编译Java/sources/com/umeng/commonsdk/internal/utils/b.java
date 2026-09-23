package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class b {
    public static final java.lang.String b = "BaseStationUtils";

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1474c = false;

    /* renamed from: d, reason: collision with root package name */
    public static android.content.Context f1475d;
    public android.telephony.PhoneStateListener a;

    /* renamed from: e, reason: collision with root package name */
    public android.telephony.TelephonyManager f1476e;

    public static class a {
        public static final com.umeng.commonsdk.internal.utils.b a = new com.umeng.commonsdk.internal.utils.b(com.umeng.commonsdk.internal.utils.b.f1475d);
    }

    public b(android.content.Context context) {
        this.a = new android.telephony.PhoneStateListener() { // from class: com.umeng.commonsdk.internal.utils.b.1
            /* JADX WARN: Removed duplicated region for block: B:47:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // android.telephony.PhoneStateListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onSignalStrengthsChanged(android.telephony.SignalStrength r10) throws java.lang.NumberFormatException {
                /*
                    Method dump skipped, instructions count: 319
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.b.AnonymousClass1.onSignalStrengthsChanged(android.telephony.SignalStrength):void");
            }
        };
        if (context != null) {
            try {
                this.f1476e = (android.telephony.TelephonyManager) context.getSystemService("phone");
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public static com.umeng.commonsdk.internal.utils.b a(android.content.Context context) {
        if (f1475d == null && context != null) {
            f1475d = context.getApplicationContext();
        }
        return com.umeng.commonsdk.internal.utils.b.a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public java.lang.String e() {
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) f1475d.getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            java.lang.String simOperator = telephonyManager.getSimOperator();
            if (android.text.TextUtils.isEmpty(simOperator)) {
                return null;
            }
            if (!simOperator.equals("46000") && !simOperator.equals("46002")) {
                if (simOperator.equals("46001")) {
                    return "中国联通";
                }
                if (simOperator.equals("46003")) {
                    return "中国电信";
                }
                return null;
            }
            return "中国移动";
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public synchronized boolean a() {
        return f1474c;
    }

    public synchronized void b() {
        com.umeng.commonsdk.statistics.common.ULog.e(b, "base station registerListener");
        try {
            if (this.f1476e != null) {
                this.f1476e.listen(this.a, 256);
            }
            f1474c = true;
        } catch (java.lang.Throwable unused) {
        }
    }

    public synchronized void c() {
        com.umeng.commonsdk.statistics.common.ULog.e(b, "base station unRegisterListener");
        try {
            if (this.f1476e != null) {
                this.f1476e.listen(this.a, 0);
            }
            f1474c = false;
        } catch (java.lang.Throwable unused) {
        }
    }
}
