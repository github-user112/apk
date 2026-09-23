package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ob {
    public final com.huawei.hms.scankit.p.Jb a;
    public final com.huawei.hms.scankit.p.Kb[] b;

    public Ob(com.huawei.hms.scankit.p.Jb jb) {
        this.a = new com.huawei.hms.scankit.p.Jb(jb);
        this.b = new com.huawei.hms.scankit.p.Kb[(jb.d() - jb.f()) + 1];
    }

    public final com.huawei.hms.scankit.p.Jb a() {
        return this.a;
    }

    public final com.huawei.hms.scankit.p.Kb a(int i) {
        return this.b[c(i)];
    }

    public final void a(int i, com.huawei.hms.scankit.p.Kb kb) {
        this.b[c(i)] = kb;
    }

    public final com.huawei.hms.scankit.p.Kb b(int i) {
        com.huawei.hms.scankit.p.Kb kb;
        com.huawei.hms.scankit.p.Kb kb2;
        com.huawei.hms.scankit.p.Kb kbA = a(i);
        if (kbA != null) {
            return kbA;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            int iC = c(i) - i2;
            if (iC >= 0 && (kb2 = this.b[iC]) != null) {
                return kb2;
            }
            int iC2 = c(i) + i2;
            com.huawei.hms.scankit.p.Kb[] kbArr = this.b;
            if (iC2 < kbArr.length && (kb = kbArr[iC2]) != null) {
                return kb;
            }
        }
        return null;
    }

    public final com.huawei.hms.scankit.p.Kb[] b() {
        return this.b;
    }

    public final int c(int i) {
        return i - this.a.f();
    }

    public java.lang.String toString() {
        java.util.Formatter formatter = new java.util.Formatter();
        try {
            int i = 0;
            for (com.huawei.hms.scankit.p.Kb kb : this.b) {
                if (kb == null) {
                    int i2 = i + 1;
                    formatter.format("%3d:    |   %n", java.lang.Integer.valueOf(i));
                    i = i2;
                } else {
                    formatter.format("%3d: %3d|%3d%n", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(kb.c()), java.lang.Integer.valueOf(kb.e()));
                    i++;
                }
            }
            java.lang.String string = formatter.toString();
            formatter.close();
            return string;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                try {
                    formatter.close();
                } catch (java.lang.Throwable unused) {
                }
                throw th2;
            }
        }
    }
}
