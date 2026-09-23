package e.a.b.d.d;

/* loaded from: classes.dex */
public final class c implements e.a.b.d.d.d, java.lang.Comparable<e.a.b.d.d.c> {
    public static final e.a.b.d.d.c A;
    public static final e.a.b.d.d.c B;
    public static final e.a.b.d.d.c C;
    public static final e.a.b.d.d.c D;
    public static final e.a.b.d.d.c F;
    public static final e.a.b.d.d.c G;
    public static final e.a.b.d.d.c H;
    public static final e.a.b.d.d.c I;
    public static final e.a.b.d.d.c J;
    public static final e.a.b.d.d.c K;
    public static final e.a.b.d.d.c L;
    public static final e.a.b.d.d.c M;
    public static final e.a.b.d.d.c N;

    /* renamed from: f, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, e.a.b.d.d.c> f2524f = new java.util.HashMap<>(500);

    /* renamed from: g, reason: collision with root package name */
    public static final e.a.b.d.d.c f2525g = new e.a.b.d.d.c("Z", 1);
    public static final e.a.b.d.d.c h = new e.a.b.d.d.c("B", 2);
    public static final e.a.b.d.d.c i = new e.a.b.d.d.c("C", 3);
    public static final e.a.b.d.d.c j = new e.a.b.d.d.c("D", 4);
    public static final e.a.b.d.d.c k = new e.a.b.d.d.c("F", 5);
    public static final e.a.b.d.d.c l = new e.a.b.d.d.c("I", 6);
    public static final e.a.b.d.d.c m = new e.a.b.d.d.c("J", 7);
    public static final e.a.b.d.d.c n = new e.a.b.d.d.c("S", 8);
    public static final e.a.b.d.d.c o = new e.a.b.d.d.c("V", 0);
    public static final e.a.b.d.d.c p = new e.a.b.d.d.c("<null>", 9);
    public static final e.a.b.d.d.c q = new e.a.b.d.d.c("<addr>", 10);
    public static final e.a.b.d.d.c r;
    public static final e.a.b.d.d.c s;
    public static final e.a.b.d.d.c t;
    public static final e.a.b.d.d.c u;
    public static final e.a.b.d.d.c v;
    public static final e.a.b.d.d.c w;
    public static final e.a.b.d.d.c x;
    public static final e.a.b.d.d.c y;
    public static final e.a.b.d.d.c z;
    public final java.lang.String a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f2526c;

    /* renamed from: d, reason: collision with root package name */
    public e.a.b.d.d.c f2527d;

    /* renamed from: e, reason: collision with root package name */
    public e.a.b.d.d.c f2528e;

    static {
        k(f2525g);
        k(h);
        k(i);
        k(j);
        k(k);
        k(l);
        k(m);
        k(n);
        h("Ljava/lang/annotation/Annotation;");
        r = h("Ljava/lang/Class;");
        h("Ljava/lang/Cloneable;");
        s = h("Ljava/lang/Object;");
        h("Ljava/io/Serializable;");
        t = h("Ljava/lang/String;");
        u = h("Ljava/lang/Throwable;");
        v = h("Ljava/lang/Boolean;");
        w = h("Ljava/lang/Byte;");
        x = h("Ljava/lang/Character;");
        y = h("Ljava/lang/Double;");
        z = h("Ljava/lang/Float;");
        A = h("Ljava/lang/Integer;");
        B = h("Ljava/lang/Long;");
        C = h("Ljava/lang/Short;");
        D = h("Ljava/lang/Void;");
        F = f2525g.d();
        G = h.d();
        H = i.d();
        I = j.d();
        J = k.d();
        K = l.d();
        L = m.d();
        M = s.d();
        N = n.d();
    }

    public c(java.lang.String str, int i2) {
        if (str == null) {
            throw new java.lang.NullPointerException("descriptor == null");
        }
        if (i2 < 0 || i2 >= 11) {
            throw new java.lang.IllegalArgumentException("bad basicType");
        }
        this.a = str;
        this.b = i2;
        this.f2527d = null;
        this.f2528e = null;
    }

    public static e.a.b.d.d.c h(java.lang.String str) {
        e.a.b.d.d.c cVar;
        synchronized (f2524f) {
            cVar = f2524f.get(str);
        }
        if (cVar != null) {
            return cVar;
        }
        try {
            char cCharAt = str.charAt(0);
            if (cCharAt == '[') {
                return h(str.substring(1)).d();
            }
            int length = str.length();
            if (cCharAt == 'L') {
                int i2 = length - 1;
                if (str.charAt(i2) == ';') {
                    for (int i3 = 1; i3 < i2; i3++) {
                        char cCharAt2 = str.charAt(i3);
                        if (cCharAt2 != '(' && cCharAt2 != ')' && cCharAt2 != '.') {
                            if (cCharAt2 == '/') {
                                if (i3 == 1 || i3 == i2 || str.charAt(i3 - 1) == '/') {
                                    throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("bad descriptor: ", str));
                                }
                            } else if (cCharAt2 == ';' || cCharAt2 == '[') {
                            }
                        }
                        throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("bad descriptor: ", str));
                    }
                    return k(new e.a.b.d.d.c(str, 9));
                }
            }
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.e("bad descriptor: ", str));
        } catch (java.lang.IndexOutOfBoundsException unused) {
            throw new java.lang.IllegalArgumentException("descriptor is empty");
        } catch (java.lang.NullPointerException unused2) {
            throw new java.lang.NullPointerException("descriptor == null");
        }
    }

    public static e.a.b.d.d.c i(java.lang.String str) {
        try {
            return str.equals("V") ? o : h(str);
        } catch (java.lang.NullPointerException unused) {
            throw new java.lang.NullPointerException("descriptor == null");
        }
    }

    public static e.a.b.d.d.c k(e.a.b.d.d.c cVar) {
        synchronized (f2524f) {
            java.lang.String str = cVar.a;
            e.a.b.d.d.c cVar2 = f2524f.get(str);
            if (cVar2 != null) {
                return cVar2;
            }
            f2524f.put(str, cVar);
            return cVar;
        }
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        java.lang.String strSubstring;
        switch (this.b) {
            case 0:
                return "void";
            case 1:
                return "boolean";
            case 2:
                return "byte";
            case 3:
                return "char";
            case 4:
                return "double";
            case 5:
                return "float";
            case 6:
                return "int";
            case 7:
                return "long";
            case 8:
                return "short";
            case 9:
                if (this.a.charAt(0) == '[') {
                    return g().a() + "[]";
                }
                if (this.f2526c == null) {
                    if (!j()) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("not an object type: ");
                        sbO.append(this.a);
                        throw new java.lang.IllegalArgumentException(sbO.toString());
                    }
                    if (this.a.charAt(0) == '[') {
                        strSubstring = this.a;
                    } else {
                        java.lang.String str = this.a;
                        strSubstring = str.substring(1, str.length() - 1);
                    }
                    this.f2526c = strSubstring;
                }
                return this.f2526c.replace(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR, ".");
            default:
                return this.a;
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(e.a.b.d.d.c cVar) {
        return this.a.compareTo(cVar.a);
    }

    @Override // e.a.b.d.d.d
    public int c() {
        return this.b;
    }

    public e.a.b.d.d.c d() {
        if (this.f2527d == null) {
            this.f2527d = k(new e.a.b.d.d.c('[' + this.a, 9));
        }
        return this.f2527d;
    }

    public int e() {
        int i2 = this.b;
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6 || i2 == 8) {
            return 6;
        }
        return i2;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e.a.b.d.d.c) {
            return this.a.equals(((e.a.b.d.d.c) obj).a);
        }
        return false;
    }

    public int f() {
        int i2 = this.b;
        return (i2 == 4 || i2 == 7) ? 2 : 1;
    }

    public e.a.b.d.d.c g() {
        if (this.f2528e == null) {
            if (this.a.charAt(0) != '[') {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("not an array type: ");
                sbO.append(this.a);
                throw new java.lang.IllegalArgumentException(sbO.toString());
            }
            this.f2528e = h(this.a.substring(1));
        }
        return this.f2528e;
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return this;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean j() {
        return this.b == 9;
    }

    public java.lang.String toString() {
        return this.a;
    }
}
