package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class as extends java.io.ByteArrayOutputStream {
    public as() {
    }

    public as(int i) {
        super(i);
    }

    public byte[] a() {
        return ((java.io.ByteArrayOutputStream) this).buf;
    }

    public int b() {
        return ((java.io.ByteArrayOutputStream) this).count;
    }
}
