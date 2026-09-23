package e.a.b.f;

/* loaded from: classes.dex */
public final class l {
    public final java.io.Writer a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.StringBuffer f2544c;

    /* renamed from: d, reason: collision with root package name */
    public final java.lang.StringBuffer f2545d;

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.f.e f2546e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.f.e f2547f;

    public l(java.io.Writer writer, int i, int i2, java.lang.String str) {
        if (writer == null) {
            throw new java.lang.NullPointerException("out == null");
        }
        if (i < 1) {
            throw new java.lang.IllegalArgumentException("leftWidth < 1");
        }
        if (i2 < 1) {
            throw new java.lang.IllegalArgumentException("rightWidth < 1");
        }
        if (str == null) {
            throw new java.lang.NullPointerException("spacer == null");
        }
        java.io.StringWriter stringWriter = new java.io.StringWriter(1000);
        java.io.StringWriter stringWriter2 = new java.io.StringWriter(1000);
        this.a = writer;
        this.b = i;
        this.f2544c = stringWriter.getBuffer();
        this.f2545d = stringWriter2.getBuffer();
        this.f2546e = new e.a.b.f.e(stringWriter, i, "");
        this.f2547f = new e.a.b.f.e(stringWriter2, i2, str);
    }

    public static void a(java.lang.StringBuffer stringBuffer, java.io.Writer writer) throws java.io.IOException {
        int length = stringBuffer.length();
        if (length == 0 || stringBuffer.charAt(length - 1) == '\n') {
            return;
        }
        writer.write(10);
    }

    public void b() {
        try {
            a(this.f2544c, this.f2546e);
            a(this.f2545d, this.f2547f);
            c();
            a(this.f2544c, this.f2546e);
            while (this.f2544c.length() != 0) {
                this.f2547f.write(10);
                c();
            }
            a(this.f2545d, this.f2547f);
            while (this.f2545d.length() != 0) {
                this.f2546e.write(10);
                c();
            }
        } catch (java.io.IOException e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }

    public final void c() throws java.io.IOException {
        int iIndexOf;
        while (true) {
            int iIndexOf2 = this.f2544c.indexOf("\n");
            if (iIndexOf2 < 0 || (iIndexOf = this.f2545d.indexOf("\n")) < 0) {
                return;
            }
            if (iIndexOf2 != 0) {
                this.a.write(this.f2544c.substring(0, iIndexOf2));
            }
            if (iIndexOf != 0) {
                java.io.Writer writer = this.a;
                for (int i = this.b - iIndexOf2; i > 0; i--) {
                    writer.write(32);
                }
                this.a.write(this.f2545d.substring(0, iIndexOf));
            }
            this.a.write(10);
            this.f2544c.delete(0, iIndexOf2 + 1);
            this.f2545d.delete(0, iIndexOf + 1);
        }
    }
}
