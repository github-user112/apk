package e.a.b.f;

/* loaded from: classes.dex */
public final class e extends java.io.FilterWriter {
    public final java.lang.String a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2536c;

    /* renamed from: d, reason: collision with root package name */
    public int f2537d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2538e;

    /* renamed from: f, reason: collision with root package name */
    public int f2539f;

    public e(java.io.Writer writer, int i, java.lang.String str) {
        super(writer);
        if (writer == null) {
            throw new java.lang.NullPointerException("out == null");
        }
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("width < 0");
        }
        this.b = i != 0 ? i : Integer.MAX_VALUE;
        this.f2536c = i >> 1;
        this.a = str.length() == 0 ? null : str;
        this.f2537d = 0;
        this.f2538e = this.f2536c != 0;
        this.f2539f = 0;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) {
        synchronized (((java.io.FilterWriter) this).lock) {
            boolean z = true;
            if (this.f2538e) {
                if (i == 32) {
                    int i2 = this.f2539f + 1;
                    this.f2539f = i2;
                    if (i2 >= this.f2536c) {
                        this.f2539f = this.f2536c;
                        this.f2538e = false;
                    }
                } else {
                    this.f2538e = false;
                }
            }
            if (this.f2537d == this.b && i != 10) {
                ((java.io.FilterWriter) this).out.write(10);
                this.f2537d = 0;
            }
            if (this.f2537d == 0) {
                if (this.a != null) {
                    ((java.io.FilterWriter) this).out.write(this.a);
                }
                if (!this.f2538e) {
                    for (int i3 = 0; i3 < this.f2539f; i3++) {
                        ((java.io.FilterWriter) this).out.write(32);
                    }
                    this.f2537d = this.f2539f;
                }
            }
            ((java.io.FilterWriter) this).out.write(i);
            if (i == 10) {
                this.f2537d = 0;
                if (this.f2536c == 0) {
                    z = false;
                }
                this.f2538e = z;
                this.f2539f = 0;
            } else {
                this.f2537d++;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(java.lang.String str, int i, int i2) {
        synchronized (((java.io.FilterWriter) this).lock) {
            while (i2 > 0) {
                write(str.charAt(i));
                i++;
                i2--;
            }
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        synchronized (((java.io.FilterWriter) this).lock) {
            while (i2 > 0) {
                write(cArr[i]);
                i++;
                i2--;
            }
        }
    }
}
