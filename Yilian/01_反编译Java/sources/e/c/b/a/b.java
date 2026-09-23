package e.c.b.a;

/* loaded from: classes.dex */
public abstract class b implements e.c.b.a.g<java.lang.Character> {

    public static abstract class a extends e.c.b.a.b {
        @Override // e.c.b.a.g
        @java.lang.Deprecated
        public boolean apply(java.lang.Character ch) {
            return b(ch.charValue());
        }
    }

    /* renamed from: e.c.b.a.b$b, reason: collision with other inner class name */
    public static final class C0069b extends e.c.b.a.b.a {
        public final char a;

        public C0069b(char c2) {
            this.a = c2;
        }

        @Override // e.c.b.a.b
        public boolean b(char c2) {
            return c2 == this.a;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("CharMatcher.is('");
            char c2 = this.a;
            char[] cArr = {'\\', 'u', 0, 0, 0, 0};
            for (int i = 0; i < 4; i++) {
                cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
                c2 = (char) (c2 >> 4);
            }
            sbO.append(java.lang.String.copyValueOf(cArr));
            sbO.append("')");
            return sbO.toString();
        }
    }

    public static abstract class c extends e.c.b.a.b.a {
        public final java.lang.String a;

        public c(java.lang.String str) {
            this.a = str;
        }

        public final java.lang.String toString() {
            return this.a;
        }
    }

    public static final class d extends e.c.b.a.b.c {
        public static final e.c.b.a.b.d b = new e.c.b.a.b.d();

        public d() {
            super("CharMatcher.none()");
        }

        @Override // e.c.b.a.b
        public int a(java.lang.CharSequence charSequence, int i) {
            e.c.b.a.f.e(i, charSequence.length());
            return -1;
        }

        @Override // e.c.b.a.b
        public boolean b(char c2) {
            return false;
        }
    }

    public int a(java.lang.CharSequence charSequence, int i) {
        int length = charSequence.length();
        e.c.b.a.f.e(i, length);
        while (i < length) {
            if (b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean b(char c2);
}
