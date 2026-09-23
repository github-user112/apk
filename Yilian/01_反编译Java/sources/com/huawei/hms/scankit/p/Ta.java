package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ta extends java.util.TimerTask {
    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            com.huawei.hms.scankit.p.Ra.a.a();
        } catch (java.lang.Exception unused) {
            com.huawei.hms.scankit.p.Qa.a("HaLogOnReport", "Failed to report hianalytics data");
        }
    }
}
