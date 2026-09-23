package e.f.a.a;

/* loaded from: classes.dex */
public class a {
    public java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, byte[]>> a = new java.util.HashMap<>();
    public java.util.HashMap<java.lang.String, java.lang.Object> b = new java.util.HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, java.lang.Object> f2830c = new java.util.HashMap<>();

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f2831d = "GBK";

    /* renamed from: e, reason: collision with root package name */
    public com.tencent.bugly.proguard.C0252k f2832e = new com.tencent.bugly.proguard.C0252k();

    private void a(java.util.ArrayList<java.lang.String> arrayList, java.lang.Object obj) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        java.lang.Object obj2;
        if (obj.getClass().isArray()) {
            if (!obj.getClass().getComponentType().toString().equals("byte")) {
                throw new java.lang.IllegalArgumentException("only byte[] is supported");
            }
            if (java.lang.reflect.Array.getLength(obj) <= 0) {
                arrayList.add("Array");
                arrayList.add("?");
            } else {
                arrayList.add("java.util.List");
                obj2 = java.lang.reflect.Array.get(obj, 0);
                a(arrayList, obj2);
            }
        }
        if (obj instanceof java.lang.reflect.Array) {
            throw new java.lang.IllegalArgumentException("can not support Array, please use List");
        }
        if (obj instanceof java.util.List) {
            arrayList.add("java.util.List");
            java.util.List list = (java.util.List) obj;
            if (list.size() > 0) {
                obj2 = list.get(0);
                a(arrayList, obj2);
            }
            arrayList.add("?");
        }
        if (!(obj instanceof java.util.Map)) {
            arrayList.add(obj.getClass().getName());
            return;
        }
        arrayList.add("java.util.Map");
        java.util.Map map = (java.util.Map) obj;
        if (map.size() <= 0) {
            arrayList.add("?");
            arrayList.add("?");
        } else {
            java.lang.Object next = map.keySet().iterator().next();
            obj2 = map.get(next);
            arrayList.add(next.getClass().getName());
            a(arrayList, obj2);
        }
    }

    public void a(java.lang.String str) {
        this.f2831d = str;
    }

    public <T> void a(java.lang.String str, T t) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException {
        if (str == null) {
            throw new java.lang.IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new java.lang.IllegalArgumentException("put value can not is null");
        }
        if (t instanceof java.util.Set) {
            throw new java.lang.IllegalArgumentException("can not support Set");
        }
        com.tencent.bugly.proguard.C0253l c0253l = new com.tencent.bugly.proguard.C0253l();
        c0253l.a(this.f2831d);
        c0253l.a(t, 0);
        byte[] bArrA = com.tencent.bugly.proguard.C0255n.a(c0253l.a());
        java.util.HashMap<java.lang.String, byte[]> map = new java.util.HashMap<>(1);
        java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>(1);
        a(arrayList, t);
        map.put(com.tencent.bugly.proguard.C0245a.a(arrayList), bArrA);
        this.f2830c.remove(str);
        this.a.put(str, map);
    }
}
