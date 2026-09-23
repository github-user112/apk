package d.j.d;

/* loaded from: classes.dex */
public final class t0 extends java.io.Writer {
    public final java.lang.String a;
    public java.lang.StringBuilder b = new java.lang.StringBuilder(128);

    public t0(java.lang.String str) {
        this.a = str;
    }

    public final void a() {
        if (this.b.length() > 0) {
            android.util.Log.d(this.a, this.b.toString());
            java.lang.StringBuilder sb = this.b;
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        a();
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                a();
            } else {
                this.b.append(c2);
            }
        }
    }
}
