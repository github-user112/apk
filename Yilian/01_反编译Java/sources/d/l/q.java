package d.l;

/* loaded from: classes.dex */
public final class q {

    /* renamed from: e, reason: collision with root package name */
    public static final java.lang.Class[] f2167e;
    public final java.util.Map<java.lang.String, java.lang.Object> a;
    public final java.util.Map<java.lang.String, d.r.b.InterfaceC0058b> b;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Object<?>> f2168c;

    /* renamed from: d, reason: collision with root package name */
    public final d.r.b.InterfaceC0058b f2169d;

    public class a implements d.r.b.InterfaceC0058b {
        public a() {
        }

        @Override // d.r.b.InterfaceC0058b
        public android.os.Bundle a() {
            for (java.util.Map.Entry entry : new java.util.HashMap(d.l.q.this.b).entrySet()) {
                android.os.Bundle bundleA = ((d.r.b.InterfaceC0058b) entry.getValue()).a();
                d.l.q qVar = d.l.q.this;
                java.lang.String str = (java.lang.String) entry.getKey();
                if (qVar == null) {
                    throw null;
                }
                if (bundleA != null) {
                    for (java.lang.Class cls : d.l.q.f2167e) {
                        if (!cls.isInstance(bundleA)) {
                        }
                    }
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Can't put value with type ");
                    sbO.append(bundleA.getClass());
                    sbO.append(" into saved state");
                    throw new java.lang.IllegalArgumentException(sbO.toString());
                }
                d.l.m mVar = (d.l.m) qVar.f2168c.get(str);
                if (mVar != null) {
                    mVar.g(bundleA);
                } else {
                    qVar.a.put(str, bundleA);
                }
            }
            java.util.Set<java.lang.String> setKeySet = d.l.q.this.a.keySet();
            java.util.ArrayList<? extends android.os.Parcelable> arrayList = new java.util.ArrayList<>(setKeySet.size());
            java.util.ArrayList<? extends android.os.Parcelable> arrayList2 = new java.util.ArrayList<>(arrayList.size());
            for (java.lang.String str2 : setKeySet) {
                arrayList.add(str2);
                arrayList2.add(d.l.q.this.a.get(str2));
            }
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    static {
        java.lang.Class[] clsArr = new java.lang.Class[29];
        clsArr[0] = java.lang.Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = java.lang.Double.TYPE;
        clsArr[3] = double[].class;
        clsArr[4] = java.lang.Integer.TYPE;
        clsArr[5] = int[].class;
        clsArr[6] = java.lang.Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = java.lang.String.class;
        clsArr[9] = java.lang.String[].class;
        clsArr[10] = android.os.Binder.class;
        clsArr[11] = android.os.Bundle.class;
        clsArr[12] = java.lang.Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = java.lang.Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = java.lang.CharSequence.class;
        clsArr[17] = java.lang.CharSequence[].class;
        clsArr[18] = java.util.ArrayList.class;
        clsArr[19] = java.lang.Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = android.os.Parcelable.class;
        clsArr[22] = android.os.Parcelable[].class;
        clsArr[23] = java.io.Serializable.class;
        clsArr[24] = java.lang.Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = android.util.SparseArray.class;
        clsArr[27] = android.os.Build.VERSION.SDK_INT >= 21 ? android.util.Size.class : java.lang.Integer.TYPE;
        clsArr[28] = android.os.Build.VERSION.SDK_INT >= 21 ? android.util.SizeF.class : java.lang.Integer.TYPE;
        f2167e = clsArr;
    }

    public q() {
        this.b = new java.util.HashMap();
        this.f2168c = new java.util.HashMap();
        this.f2169d = new d.l.q.a();
        this.a = new java.util.HashMap();
    }

    public q(java.util.Map<java.lang.String, java.lang.Object> map) {
        this.b = new java.util.HashMap();
        this.f2168c = new java.util.HashMap();
        this.f2169d = new d.l.q.a();
        this.a = new java.util.HashMap(map);
    }

    public static d.l.q a(android.os.Bundle bundle, android.os.Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new d.l.q();
        }
        java.util.HashMap map = new java.util.HashMap();
        if (bundle2 != null) {
            for (java.lang.String str : bundle2.keySet()) {
                map.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new d.l.q(map);
        }
        java.util.ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        java.util.ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new java.lang.IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            map.put((java.lang.String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new d.l.q(map);
    }
}
