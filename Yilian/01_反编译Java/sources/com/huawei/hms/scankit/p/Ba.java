package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ba {
    public int a;
    public android.graphics.Rect b;

    public static class a {
        public android.graphics.Rect a;
        public int b;

        public a(android.graphics.Rect rect, int i) {
            this.a = rect;
            this.b = i;
        }
    }

    public Ba(int i, android.graphics.Rect rect) {
        this.a = i;
        this.b = new android.graphics.Rect(rect);
    }

    public int a() {
        return this.a;
    }

    public android.graphics.Rect b() {
        return this.b;
    }
}
