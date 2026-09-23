package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public final class ar {
    public static final java.util.Comparator a = new com.umeng.analytics.pro.ar.a();

    public static class a implements java.util.Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        public int compare(java.lang.Object obj, java.lang.Object obj2) {
            if (obj == null && obj2 == null) {
                return 0;
            }
            if (obj == null) {
                return -1;
            }
            if (obj2 == null) {
                return 1;
            }
            return obj instanceof java.util.List ? com.umeng.analytics.pro.ar.a((java.util.List) obj, (java.util.List) obj2) : obj instanceof java.util.Set ? com.umeng.analytics.pro.ar.a((java.util.Set) obj, (java.util.Set) obj2) : obj instanceof java.util.Map ? com.umeng.analytics.pro.ar.a((java.util.Map) obj, (java.util.Map) obj2) : obj instanceof byte[] ? com.umeng.analytics.pro.ar.a((byte[]) obj, (byte[]) obj2) : com.umeng.analytics.pro.ar.a((java.lang.Comparable) obj, (java.lang.Comparable) obj2);
        }
    }

    public static int a(byte b, byte b2) {
        if (b < b2) {
            return -1;
        }
        return b2 < b ? 1 : 0;
    }

    public static int a(double d2, double d3) {
        if (d2 < d3) {
            return -1;
        }
        return d3 < d2 ? 1 : 0;
    }

    public static int a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i2 < i ? 1 : 0;
    }

    public static int a(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j2 < j ? 1 : 0;
    }

    public static int a(java.lang.Comparable comparable, java.lang.Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    public static int a(java.lang.Object obj, java.lang.Object obj2) {
        if (obj instanceof java.lang.Comparable) {
            return a((java.lang.Comparable) obj, (java.lang.Comparable) obj2);
        }
        if (obj instanceof java.util.List) {
            return a((java.util.List) obj, (java.util.List) obj2);
        }
        if (obj instanceof java.util.Set) {
            return a((java.util.Set) obj, (java.util.Set) obj2);
        }
        if (obj instanceof java.util.Map) {
            return a((java.util.Map) obj, (java.util.Map) obj2);
        }
        if (obj instanceof byte[]) {
            return a((byte[]) obj, (byte[]) obj2);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Cannot compare objects of type ");
        sbO.append(obj.getClass());
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }

    public static int a(java.lang.String str, java.lang.String str2) {
        return str.compareTo(str2);
    }

    public static int a(java.nio.ByteBuffer byteBuffer, byte[] bArr, int i) {
        int iRemaining = byteBuffer.remaining();
        java.lang.System.arraycopy(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), bArr, i, iRemaining);
        return iRemaining;
    }

    public static int a(java.util.List list, java.util.List list2) {
        int iA = a(list.size(), list2.size());
        if (iA != 0) {
            return iA;
        }
        for (int i = 0; i < list.size(); i++) {
            int iCompare = a.compare(list.get(i), list2.get(i));
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return 0;
    }

    public static int a(java.util.Map map, java.util.Map map2) {
        int iA = a(map.size(), map2.size());
        if (iA != 0) {
            return iA;
        }
        java.util.TreeMap treeMap = new java.util.TreeMap(a);
        treeMap.putAll(map);
        java.util.Iterator it = treeMap.entrySet().iterator();
        java.util.TreeMap treeMap2 = new java.util.TreeMap(a);
        treeMap2.putAll(map2);
        java.util.Iterator it2 = treeMap2.entrySet().iterator();
        while (it.hasNext() && it2.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
            java.util.Map.Entry entry2 = (java.util.Map.Entry) it2.next();
            int iCompare = a.compare(entry.getKey(), entry2.getKey());
            if (iCompare != 0) {
                return iCompare;
            }
            int iCompare2 = a.compare(entry.getValue(), entry2.getValue());
            if (iCompare2 != 0) {
                return iCompare2;
            }
        }
        return 0;
    }

    public static int a(java.util.Set set, java.util.Set set2) {
        int iA = a(set.size(), set2.size());
        if (iA != 0) {
            return iA;
        }
        java.util.TreeSet treeSet = new java.util.TreeSet(a);
        treeSet.addAll(set);
        java.util.TreeSet treeSet2 = new java.util.TreeSet(a);
        treeSet2.addAll(set2);
        java.util.Iterator it = treeSet.iterator();
        java.util.Iterator it2 = treeSet2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int iCompare = a.compare(it.next(), it2.next());
            if (iCompare != 0) {
                return iCompare;
            }
        }
        return 0;
    }

    public static int a(short s, short s2) {
        if (s < s2) {
            return -1;
        }
        return s2 < s ? 1 : 0;
    }

    public static int a(boolean z, boolean z2) {
        return java.lang.Boolean.valueOf(z).compareTo(java.lang.Boolean.valueOf(z2));
    }

    public static int a(byte[] bArr, byte[] bArr2) {
        int iA = a(bArr.length, bArr2.length);
        if (iA != 0) {
            return iA;
        }
        for (int i = 0; i < bArr.length; i++) {
            int iA2 = a(bArr[i], bArr2[i]);
            if (iA2 != 0) {
                return iA2;
            }
        }
        return 0;
    }

    public static java.lang.String a(byte b) {
        return java.lang.Integer.toHexString((b | 256) & 511).toUpperCase().substring(1);
    }

    public static void a(java.nio.ByteBuffer byteBuffer, java.lang.StringBuilder sb) {
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset();
        int iPosition = byteBuffer.position() + iArrayOffset;
        int iLimit = byteBuffer.limit() + iArrayOffset;
        int i = iLimit - iPosition > 128 ? iPosition + 128 : iLimit;
        for (int i2 = iPosition; i2 < i; i2++) {
            if (i2 > iPosition) {
                sb.append(" ");
            }
            sb.append(a(bArrArray[i2]));
        }
        if (iLimit != i) {
            sb.append("...");
        }
    }

    public static byte[] a(java.nio.ByteBuffer byteBuffer) {
        if (b(byteBuffer)) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        a(byteBuffer, bArr, 0);
        return bArr;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static boolean b(java.nio.ByteBuffer byteBuffer) {
        return byteBuffer.hasArray() && byteBuffer.position() == 0 && byteBuffer.arrayOffset() == 0 && byteBuffer.remaining() == byteBuffer.capacity();
    }

    public static java.nio.ByteBuffer c(java.nio.ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        return b(byteBuffer) ? byteBuffer : java.nio.ByteBuffer.wrap(a(byteBuffer));
    }

    public static java.nio.ByteBuffer d(java.nio.ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(new byte[byteBuffer.remaining()]);
        if (byteBuffer.hasArray()) {
            java.lang.System.arraycopy(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBufferWrap.array(), 0, byteBuffer.remaining());
        } else {
            byteBuffer.slice().get(byteBufferWrap.array());
        }
        return byteBufferWrap;
    }
}
