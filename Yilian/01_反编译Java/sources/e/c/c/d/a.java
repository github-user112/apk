package e.c.c.d;

/* loaded from: classes.dex */
public final class a implements java.lang.Cloneable {
    public int[] a;
    public int b;

    public a() {
        this.b = 0;
        this.a = new int[1];
    }

    public a(int[] iArr, int i) {
        this.a = iArr;
        this.b = i;
    }

    public void a(boolean z) {
        d(this.b + 1);
        if (z) {
            int[] iArr = this.a;
            int i = this.b;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.b++;
    }

    public void b(e.c.c.d.a aVar) {
        int i = aVar.b;
        d(this.b + i);
        for (int i2 = 0; i2 < i; i2++) {
            a(aVar.e(i2));
        }
    }

    public void c(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new java.lang.IllegalArgumentException("Num bits must be between 0 and 32");
        }
        d(this.b + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            a(z);
            i2--;
        }
    }

    public java.lang.Object clone() {
        return new e.c.c.d.a((int[]) this.a.clone(), this.b);
    }

    public final void d(int i) {
        int[] iArr = this.a;
        if (i > (iArr.length << 5)) {
            int[] iArr2 = new int[(i + 31) / 32];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.a = iArr2;
        }
    }

    public boolean e(int i) {
        return ((1 << (i & 31)) & this.a[i / 32]) != 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof e.c.c.d.a)) {
            return false;
        }
        e.c.c.d.a aVar = (e.c.c.d.a) obj;
        return this.b == aVar.b && java.util.Arrays.equals(this.a, aVar.a);
    }

    public int f() {
        return (this.b + 7) / 8;
    }

    public int hashCode() {
        return java.util.Arrays.hashCode(this.a) + (this.b * 31);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.b);
        for (int i = 0; i < this.b; i++) {
            if ((i & 7) == 0) {
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            }
            sb.append(e(i) ? 'X' : '.');
        }
        return sb.toString();
    }
}
