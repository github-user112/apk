package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class k {
    public static boolean a = true;
    public static boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f465c = false;

    /* renamed from: d, reason: collision with root package name */
    public static int f466d;

    /* renamed from: e, reason: collision with root package name */
    public static java.util.LinkedList<com.huawei.hms.scankit.p.C0187ob> f467e = new java.util.LinkedList<>();

    /* renamed from: f, reason: collision with root package name */
    public static java.util.LinkedList<com.huawei.hms.scankit.aiscan.common.p> f468f = new java.util.LinkedList<>();

    /* renamed from: g, reason: collision with root package name */
    public static java.util.LinkedList<com.huawei.hms.scankit.aiscan.common.p> f469g = new java.util.LinkedList<>();

    static {
        if (com.huawei.hms.feature.DynamicModuleInitializer.getContext() == null) {
            android.util.Log.e("ScankitDecode", "static initializer: context null");
            return;
        }
        android.util.Log.i("ScankitDecode", "static initializer: InitModuleBegin");
        com.huawei.hms.scankit.z.b(com.huawei.hms.feature.DynamicModuleInitializer.getContext(), "detect.ms");
        com.huawei.hms.scankit.z.c(com.huawei.hms.feature.DynamicModuleInitializer.getContext(), "anchors.bin");
        com.huawei.hms.scankit.z.a(com.huawei.hms.feature.DynamicModuleInitializer.getContext(), "angle.ms");
        android.util.Log.i("ScankitDecode", "static initializer: InitModuleEnd");
    }

    public static com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.aiscan.common.m mVar, com.huawei.hms.scankit.E e2, java.util.LinkedList<com.huawei.hms.scankit.aiscan.common.x> linkedList, boolean z, boolean z2, int i) {
        com.huawei.hms.scankit.l lVar = new com.huawei.hms.scankit.l(mVar);
        java.util.List<java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> listA = com.huawei.hms.scankit.p.Ac.a(e2.f349c);
        java.util.LinkedList<com.huawei.hms.scankit.p.C0187ob> linkedList2 = f467e;
        if (!z) {
            java.util.Iterator<com.huawei.hms.scankit.aiscan.common.x> it = a(linkedList2, lVar, listA).iterator();
            while (it.hasNext()) {
                linkedList.offer(it.next());
            }
            return null;
        }
        com.huawei.hms.scankit.aiscan.common.x xVarB = b(linkedList2, lVar, listA);
        if (xVarB == null || xVarB.i() == null) {
            return null;
        }
        return xVarB;
    }

    public static com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.l lVar, java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list2, java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list3, java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list4) {
        com.huawei.hms.scankit.aiscan.common.x xVarE = list.size() > 0 ? lVar.e(list, null) : null;
        if ((xVarE == null || xVarE.i() == null) && list3.size() > 0) {
            xVarE = lVar.c(list3, null);
        }
        if ((xVarE == null || xVarE.i() == null) && list2.size() > 0 && (!com.huawei.hms.scankit.p.Bc.a || com.huawei.hms.scankit.p.Bc.f491c)) {
            xVarE = lVar.a(list2, (com.huawei.hms.scankit.p.C0187ob) null);
        }
        return ((xVarE == null || xVarE.i() == null) && list4.size() > 0) ? lVar.b(list4, null) : xVarE;
    }

    public static com.huawei.hms.scankit.aiscan.common.x a(java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list, com.huawei.hms.scankit.l lVar) {
        if (list.size() > 0) {
            return lVar.d(list, null);
        }
        return null;
    }

    public static java.util.List<com.huawei.hms.scankit.aiscan.common.x> a(java.util.List<com.huawei.hms.scankit.p.C0187ob> list, com.huawei.hms.scankit.l lVar, java.util.List<java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> list2) {
        com.huawei.hms.scankit.aiscan.common.x xVarF;
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list3 = list2.get(0);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list4 = list2.get(1);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list5 = list2.get(2);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list6 = list2.get(3);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list7 = list2.get(4);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i = 0;
        while (true) {
            com.huawei.hms.scankit.aiscan.common.x xVarB = null;
            if (i >= list.size()) {
                break;
            }
            lVar.i.a();
            com.huawei.hms.scankit.p.C0187ob c0187ob = list.get(i);
            boolean z = c0187ob.g() == 5.0f;
            boolean z2 = c0187ob.g() == 1.0f;
            boolean z3 = c0187ob.g() == 3.0f;
            boolean z4 = c0187ob.g() == 2.0f;
            boolean z5 = c0187ob.g() == 4.0f;
            if (com.huawei.hms.scankit.p.Bc.b) {
                z = c0187ob.g() == 1.0f;
                z2 = c0187ob.g() == 2.0f;
                z3 = c0187ob.g() == 2.0f;
                z5 = c0187ob.g() == 1.0f;
                z4 = c0187ob.g() == 2.0f;
            }
            lVar.a(c0187ob);
            if (list3.size() > 0 && z2) {
                xVarB = lVar.d(list3, c0187ob);
            }
            if ((xVarB == null || xVarB.i() == null) && list6.size() > 0 && z3) {
                xVarB = lVar.b(list6, c0187ob);
            }
            if ((xVarB == null || xVarB.i() == null) && list5.size() > 0 && z5) {
                xVarB = lVar.c(list5, c0187ob);
            }
            if ((xVarB == null || xVarB.i() == null) && list7.size() > 0 && z4) {
                xVarB = lVar.b(list7, c0187ob);
            }
            if ((xVarB == null || xVarB.i() == null) && list4.size() > 0 && z) {
                xVarB = lVar.a(list4, c0187ob);
            }
            if (xVarB != null && xVarB.i() != null) {
                arrayList.add(xVarB);
            }
            i++;
        }
        if (arrayList.size() == 0 && list3.size() > 0 && (xVarF = lVar.f(list3, null)) != null && xVarF.i() != null) {
            arrayList.add(xVarF);
        }
        return arrayList;
    }

    public static void a() {
        f465c = false;
        f467e = new java.util.LinkedList<>();
        f468f = new java.util.LinkedList<>();
        f469g = new java.util.LinkedList<>();
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.m mVar, int i, int i2, com.huawei.hms.scankit.E e2) {
        com.huawei.hms.scankit.p.Bc.a(e2);
        byte[] bArrB = mVar.a(i, i2, e2.a, e2.b).b();
        int i3 = e2.a;
        int i4 = e2.b;
        java.util.List<com.huawei.hms.scankit.p.C0187ob> listA = new com.huawei.hms.scankit.l(new com.huawei.hms.scankit.aiscan.common.r(bArrB, i3, i4, 0, 0, i3, i4, false)).a(0, com.huawei.hms.scankit.p.Bc.l);
        if (!e2.j) {
            a(listA, e2);
        }
        for (com.huawei.hms.scankit.p.C0187ob c0187ob : listA) {
            c0187ob.a(e2.h, e2.i);
            f467e.offer(c0187ob);
        }
    }

    public static void a(java.util.List<com.huawei.hms.scankit.p.C0187ob> list, com.huawei.hms.scankit.E e2) {
        for (com.huawei.hms.scankit.p.C0187ob c0187ob : list) {
            if (c0187ob.d() < e2.a * 0.1f) {
                f468f.offer(new com.huawei.hms.scankit.aiscan.common.p(c0187ob, e2.h));
            } else {
                float f2 = c0187ob.f() + c0187ob.d();
                int i = e2.a;
                if (f2 > i * 0.9f) {
                    f468f.offer(new com.huawei.hms.scankit.aiscan.common.p(c0187ob, e2.h + i));
                }
            }
            if (c0187ob.e() < e2.b * 0.1f) {
                f469g.offer(new com.huawei.hms.scankit.aiscan.common.p(c0187ob, e2.i));
            } else {
                float fC = c0187ob.c() + c0187ob.e();
                int i2 = e2.b;
                if (fC > i2 * 0.9f) {
                    f469g.offer(new com.huawei.hms.scankit.aiscan.common.p(c0187ob, e2.i + i2));
                }
            }
        }
    }

    public static void a(boolean z) {
        com.huawei.hms.scankit.p.Bc.a = z;
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] a(android.graphics.Bitmap bitmap, com.huawei.hms.scankit.E e2) {
        java.lang.String str;
        byte[] bArrB;
        try {
            e2.a = bitmap.getWidth();
            int height = bitmap.getHeight();
            e2.b = height;
            int[] iArr = new int[e2.a * height];
            bitmap.getPixels(iArr, 0, e2.a, 0, 0, e2.a, height);
            bArrB = new com.huawei.hms.scankit.aiscan.common.s(e2.a, e2.b, iArr).b();
        } catch (java.lang.IllegalArgumentException unused) {
            str = "IllegalArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return a(bArrB, e2);
        } catch (java.lang.OutOfMemoryError unused2) {
            str = "OutOfMemoryError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return a(bArrB, e2);
        } catch (java.lang.UnsupportedOperationException unused3) {
            str = "UnsupportedArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return a(bArrB, e2);
        } catch (java.lang.Exception unused4) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return a(bArrB, e2);
        } catch (java.lang.UnsatisfiedLinkError unused5) {
            str = "UnsatisfiedLinkError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return a(bArrB, e2);
        }
        return a(bArrB, e2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.huawei.hms.scankit.aiscan.common.x[] a(com.huawei.hms.scankit.aiscan.common.m r8, com.huawei.hms.scankit.E r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            com.huawei.hms.scankit.p.Bc.a(r9)
            r1 = 1
            com.huawei.hms.scankit.p.Bc.a(r1)
            int r2 = r9.a
            r3 = 30
            if (r2 < r3) goto L7c
            int r2 = r9.b
            if (r2 < r3) goto L7c
            if (r8 == 0) goto L7c
            int r9 = r9.f349c
            java.util.List r9 = com.huawei.hms.scankit.p.Ac.a(r9)
            r2 = 0
            java.lang.Object r3 = r9.get(r2)
            java.util.List r3 = (java.util.List) r3
            java.lang.Object r4 = r9.get(r1)
            java.util.List r4 = (java.util.List) r4
            r5 = 2
            java.lang.Object r5 = r9.get(r5)
            java.util.List r5 = (java.util.List) r5
            r6 = 3
            java.lang.Object r6 = r9.get(r6)
            java.util.List r6 = (java.util.List) r6
            com.huawei.hms.scankit.l r7 = new com.huawei.hms.scankit.l
            r7.<init>(r8)
            boolean r8 = com.huawei.hms.scankit.p.Bc.l
            java.util.List r8 = r7.a(r1, r8)
            int r1 = r8.size()
            if (r1 <= 0) goto L4f
            java.util.List r0 = a(r8, r7, r9)
            goto L66
        L4f:
            boolean r8 = com.huawei.hms.scankit.p.Bc.f491c
            if (r8 != 0) goto L57
            boolean r8 = com.huawei.hms.scankit.p.Bc.a
            if (r8 != 0) goto L66
        L57:
            com.huawei.hms.scankit.aiscan.common.x r8 = a(r7, r3, r4, r5, r6)
            if (r8 == 0) goto L66
            java.lang.String r9 = r8.i()
            if (r9 == 0) goto L66
            r0.add(r8)
        L66:
            java.util.List r8 = com.huawei.hms.scankit.aiscan.common.E.a(r0)
            int r9 = r8.size()
            if (r9 <= 0) goto L79
            com.huawei.hms.scankit.aiscan.common.x[] r9 = new com.huawei.hms.scankit.aiscan.common.x[r2]
            java.lang.Object[] r8 = r8.toArray(r9)
            com.huawei.hms.scankit.aiscan.common.x[] r8 = (com.huawei.hms.scankit.aiscan.common.x[]) r8
            return r8
        L79:
            com.huawei.hms.scankit.aiscan.common.x[] r8 = new com.huawei.hms.scankit.aiscan.common.x[r2]
            return r8
        L7c:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "width or Height is Illeagle"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.k.a(com.huawei.hms.scankit.aiscan.common.m, com.huawei.hms.scankit.E):com.huawei.hms.scankit.aiscan.common.x[]");
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] a(java.nio.ByteBuffer byteBuffer, com.huawei.hms.scankit.E e2) {
        return a(byteBuffer.array(), e2);
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] a(byte[] bArr, com.huawei.hms.scankit.E e2) {
        java.lang.String str;
        com.huawei.hms.scankit.aiscan.common.x[] xVarArr = new com.huawei.hms.scankit.aiscan.common.x[0];
        try {
            com.huawei.hms.scankit.aiscan.common.x[] xVarArrA = a(bArr, e2, false);
            int length = xVarArrA.length;
            int[] iArr = new int[length];
            int i = 0;
            int i2 = 0;
            while (i < xVarArrA.length) {
                int i3 = i + 1;
                for (int i4 = i3; i4 < xVarArrA.length; i4++) {
                    if (com.huawei.hms.scankit.aiscan.common.E.a(xVarArrA[i].h(), xVarArrA[i4].h()) > 0.7d) {
                        iArr[i4] = 1;
                        i2++;
                    }
                }
                i = i3;
            }
            int length2 = xVarArrA.length - i2;
            xVarArr = new com.huawei.hms.scankit.aiscan.common.x[length2];
            for (int i5 = 0; i5 < length2; i5++) {
                int i6 = i5;
                while (i6 < length) {
                    if (iArr[i6] != 1) {
                        break;
                    }
                    i6++;
                }
                xVarArr[i5] = xVarArrA[i6];
            }
        } catch (java.lang.IllegalArgumentException unused) {
            str = "IllegalArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.Exception unused2) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.OutOfMemoryError unused3) {
            str = "OutOfMemoryError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.UnsatisfiedLinkError unused4) {
            str = "UnsatisfiedLinkError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.UnsupportedOperationException unused5) {
            str = "UnsupportedArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        }
        return xVarArr;
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] a(byte[] bArr, com.huawei.hms.scankit.E e2, boolean z) {
        int i;
        int i2;
        java.util.LinkedList linkedList = new java.util.LinkedList();
        a();
        int iMin = java.lang.Math.min(e2.a, e2.b);
        float f2 = iMin;
        float fMax = java.lang.Math.max(e2.a, e2.b) / f2;
        int i3 = (int) (f2 * 1.78f);
        com.huawei.hms.scankit.aiscan.common.m mVarC = c(bArr, e2);
        com.huawei.hms.scankit.E e3 = new com.huawei.hms.scankit.E(e2);
        if (iMin > 500 && e2.a >= e2.b && e2.f351e && fMax > 3.0f) {
            f465c = true;
            e3.a = i3;
            int i4 = e2.a - 1;
            while (i4 >= 0) {
                i4 -= i3;
                int i5 = i4 >= 0 ? i4 : 0;
                e3.h = i5;
                e3.i = 0;
                a(mVarC, i5, 0, e3);
            }
            java.util.Collections.sort(f467e);
            com.huawei.hms.scankit.aiscan.common.x xVarA = a(mVarC, e3, linkedList, z, true, i3);
            if (xVarA != null) {
                return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA};
            }
            f467e = new java.util.LinkedList<>();
            java.util.Collections.sort(f468f);
            java.util.HashSet hashSet = new java.util.HashSet();
            java.util.Iterator<com.huawei.hms.scankit.aiscan.common.p> it = f468f.iterator();
            while (it.hasNext()) {
                com.huawei.hms.scankit.aiscan.common.p next = it.next();
                if (hashSet.add(java.lang.Integer.valueOf(next.b)) && (i2 = next.b) >= i3 && i2 <= (e2.a - 1) - i3) {
                    e3.a = i3;
                    e3.j = true;
                    int i6 = i2 - (i3 / 2);
                    e3.h = i6;
                    e3.i = 0;
                    a(mVarC, i6, 0, e3);
                }
            }
            java.util.Collections.sort(f467e);
            com.huawei.hms.scankit.aiscan.common.x xVarA2 = a(mVarC, e3, linkedList, z, true, i3);
            if (xVarA2 != null) {
                return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA2};
            }
        } else {
            if (iMin <= 500 || !e2.f351e || fMax <= 3.0f) {
                f465c = false;
                return z ? b(mVarC, e2) : a(mVarC, e2);
            }
            f465c = true;
            e3.b = i3;
            int i7 = e2.b - 1;
            while (i7 >= 0) {
                i7 -= i3;
                int i8 = i7 >= 0 ? i7 : 0;
                e3.h = 0;
                e3.i = i8;
                a(mVarC, 0, i8, e3);
            }
            java.util.Collections.sort(f467e);
            com.huawei.hms.scankit.aiscan.common.x xVarA3 = a(mVarC, e2, linkedList, z, false, i3);
            if (xVarA3 != null) {
                return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA3};
            }
            f467e = new java.util.LinkedList<>();
            java.util.Collections.sort(f469g);
            java.util.HashSet hashSet2 = new java.util.HashSet();
            java.util.Iterator<com.huawei.hms.scankit.aiscan.common.p> it2 = f469g.iterator();
            while (it2.hasNext()) {
                com.huawei.hms.scankit.aiscan.common.p next2 = it2.next();
                if (hashSet2.add(java.lang.Integer.valueOf(next2.b)) && (i = next2.b) >= i3 && i <= (e2.b - 1) - i3) {
                    int i9 = i - (i3 / 2);
                    e3.b = i3;
                    e3.j = true;
                    e3.h = 0;
                    e3.i = i9;
                    a(mVarC, 0, i9, e3);
                }
            }
            java.util.Collections.sort(f467e);
            com.huawei.hms.scankit.aiscan.common.x xVarA4 = a(mVarC, e2, linkedList, z, false, i3);
            if (xVarA4 != null) {
                return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA4};
            }
        }
        com.huawei.hms.scankit.aiscan.common.x[] xVarArr = new com.huawei.hms.scankit.aiscan.common.x[linkedList.size()];
        linkedList.toArray(xVarArr);
        return xVarArr;
    }

    public static com.huawei.hms.scankit.aiscan.common.x b(java.util.List<com.huawei.hms.scankit.p.C0187ob> list, com.huawei.hms.scankit.l lVar, java.util.List<java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> list2) {
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list3 = list2.get(0);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list4 = list2.get(1);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list5 = list2.get(2);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list6 = list2.get(3);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list7 = list2.get(4);
        com.huawei.hms.scankit.aiscan.common.x xVarD = null;
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                lVar.i.a();
            }
            com.huawei.hms.scankit.p.C0187ob c0187ob = list.get(i);
            boolean z = c0187ob.g() == 5.0f;
            boolean z2 = c0187ob.g() == 1.0f;
            boolean z3 = c0187ob.g() == 2.0f;
            boolean z4 = c0187ob.g() == 3.0f;
            boolean z5 = c0187ob.g() == 4.0f;
            if (com.huawei.hms.scankit.p.Bc.b) {
                z = c0187ob.g() == 1.0f;
                z2 = c0187ob.g() == 2.0f;
                z3 = c0187ob.g() == 2.0f;
                z4 = c0187ob.g() == 2.0f;
                z5 = c0187ob.g() == 1.0f;
            }
            lVar.a(c0187ob);
            if ((xVarD == null || xVarD.i() == null) && list3.size() > 0 && z2) {
                b = true;
                xVarD = lVar.d(list3, c0187ob);
            }
            if ((xVarD == null || xVarD.i() == null) && list6.size() > 0 && z4) {
                xVarD = lVar.b(list6, c0187ob);
            }
            if ((xVarD == null || xVarD.i() == null) && list7.size() > 0 && z3) {
                xVarD = lVar.b(list7, c0187ob);
            }
            if ((xVarD == null || xVarD.i() == null) && list5.size() > 0 && z5) {
                xVarD = lVar.c(list5, c0187ob);
            }
            if ((xVarD == null || xVarD.i() == null) && list4.size() > 0 && z) {
                xVarD = lVar.a(list4, c0187ob);
            }
            if (xVarD != null && xVarD.i() != null) {
                break;
            }
        }
        return xVarD;
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] b(android.graphics.Bitmap bitmap, com.huawei.hms.scankit.E e2) {
        java.lang.String str;
        byte[] bArrB;
        try {
            e2.a = bitmap.getWidth();
            int height = bitmap.getHeight();
            e2.b = height;
            int[] iArr = new int[e2.a * height];
            bitmap.getPixels(iArr, 0, e2.a, 0, 0, e2.a, height);
            bArrB = new com.huawei.hms.scankit.aiscan.common.s(e2.a, e2.b, iArr).b();
        } catch (java.lang.IllegalArgumentException unused) {
            str = "IllegalArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return b(bArrB, e2);
        } catch (java.lang.OutOfMemoryError unused2) {
            str = "OutOfMemoryError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return b(bArrB, e2);
        } catch (java.lang.UnsupportedOperationException unused3) {
            str = "UnsupportedArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return b(bArrB, e2);
        } catch (java.lang.Exception unused4) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return b(bArrB, e2);
        } catch (java.lang.UnsatisfiedLinkError unused5) {
            str = "UnsatisfiedLinkError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            bArrB = null;
            return b(bArrB, e2);
        }
        return b(bArrB, e2);
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] b(com.huawei.hms.scankit.aiscan.common.m mVar, com.huawei.hms.scankit.E e2) {
        com.huawei.hms.scankit.aiscan.common.x xVar;
        boolean zA;
        com.huawei.hms.scankit.util.a.c("ScankitDecode", "scankit mode:LITESDK1");
        com.huawei.hms.scankit.p.Bc.a(e2);
        java.util.List<com.huawei.hms.scankit.p.C0187ob> arrayList = new java.util.ArrayList<>();
        if (e2.a < 30 || e2.b < 30 || mVar == null) {
            throw new java.lang.IllegalArgumentException("widthOrHeight is Illeagle");
        }
        java.util.List<java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat>> listA = com.huawei.hms.scankit.p.Ac.a(e2.f349c);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list = listA.get(0);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list2 = listA.get(1);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list3 = listA.get(2);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list4 = listA.get(3);
        java.util.List<com.huawei.hms.scankit.aiscan.common.BarcodeFormat> list5 = listA.get(4);
        com.huawei.hms.scankit.l lVar = new com.huawei.hms.scankit.l(mVar);
        com.huawei.hms.scankit.aiscan.common.x xVarA = null;
        com.huawei.hms.scankit.aiscan.common.x xVarA2 = (!a || f465c) ? null : a(list, lVar);
        if (xVarA2 == null || xVarA2.i() == null) {
            arrayList = lVar.a(0, com.huawei.hms.scankit.p.Bc.l);
        }
        if (arrayList.size() > 0) {
            xVarA2 = b(arrayList, lVar, listA);
        } else if (com.huawei.hms.scankit.p.Bc.f491c || !com.huawei.hms.scankit.p.Bc.a || com.huawei.hms.scankit.p.Bc.b) {
            if ((xVarA2 == null || xVarA2.i() == null) && list3.size() > 0) {
                xVarA2 = lVar.c(list3, null);
            }
            if ((xVarA2 == null || xVarA2.i() == null) && list2.size() > 0 && (!com.huawei.hms.scankit.p.Bc.a || com.huawei.hms.scankit.p.Bc.f491c)) {
                xVarA2 = lVar.a(list2, (com.huawei.hms.scankit.p.C0187ob) null);
            }
            if ((xVarA2 == null || xVarA2.i() == null) && list5.size() > 0) {
                xVarA2 = lVar.b(list5, null);
            }
            if ((xVarA2 == null || xVarA2.i() == null) && list4.size() > 0) {
                xVarA2 = lVar.b(list4, null);
            }
        }
        if (e2.f351e && ((xVarA2 == null || xVarA2.i() == null) && !a && b && !f465c)) {
            xVarA2 = a(list, lVar);
            b = false;
        }
        float fMax = 1.0f;
        if (com.huawei.hms.scankit.p.Bc.f491c) {
            xVar = null;
            zA = false;
        } else {
            zA = lVar.a();
            int i = com.huawei.hms.scankit.p.Bc.f495g - 1;
            if (i <= 0) {
                i = 0;
            }
            com.huawei.hms.scankit.p.Bc.f495g = i;
            if (arrayList.size() > 0) {
                zA = zA || lVar.a(arrayList);
            }
            fMax = java.lang.Math.max(1.0f, lVar.d() > 0.0f ? lVar.d() : java.lang.Math.max(lVar.b(), lVar.c()));
            com.huawei.hms.scankit.aiscan.common.x xVarA3 = com.huawei.hms.scankit.l.a(arrayList, lVar);
            xVarA = com.huawei.hms.scankit.l.a(lVar);
            xVar = xVarA3;
        }
        if (xVarA == null || xVarA.f() != -2) {
            f466d = 0;
        } else {
            f466d++;
        }
        if (xVarA2 != null && xVarA2.i() != null) {
            com.huawei.hms.scankit.util.a.c("ScankitDecode", "ScanCode successful");
            f466d = 0;
            return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA2};
        }
        if (zA) {
            com.huawei.hms.scankit.util.a.c("ScankitDecode", "ScanCode need zoom");
            com.huawei.hms.scankit.aiscan.common.x xVar2 = new com.huawei.hms.scankit.aiscan.common.x(fMax);
            xVar2.b(true);
            f466d = 0;
            return new com.huawei.hms.scankit.aiscan.common.x[]{xVar2};
        }
        if (arrayList.size() > 0 && xVar != null) {
            com.huawei.hms.scankit.util.a.c("ScankitDecode", "ScanCode need exposure");
            f466d = 0;
            return new com.huawei.hms.scankit.aiscan.common.x[]{xVar};
        }
        if (xVarA == null || f466d != 3) {
            com.huawei.hms.scankit.util.a.c("ScankitDecode", "ScanCode null");
            return new com.huawei.hms.scankit.aiscan.common.x[0];
        }
        xVarA.a(true);
        xVarA.a(-1);
        com.huawei.hms.scankit.util.a.c("ScankitDecode", "ScanCode need globalexposure");
        f466d = 0;
        return new com.huawei.hms.scankit.aiscan.common.x[]{xVarA};
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] b(byte[] bArr, com.huawei.hms.scankit.E e2) {
        java.lang.String str;
        com.huawei.hms.scankit.aiscan.common.x[] xVarArr = new com.huawei.hms.scankit.aiscan.common.x[0];
        try {
            return a(bArr, e2, true);
        } catch (java.lang.IllegalArgumentException unused) {
            str = "IllegalArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.UnsupportedOperationException unused2) {
            str = "UnsupportedArgumentException";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.Exception unused3) {
            str = "Exception";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.OutOfMemoryError unused4) {
            str = "OutOfMemoryError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        } catch (java.lang.UnsatisfiedLinkError unused5) {
            str = "UnsatisfiedLinkError";
            com.huawei.hms.scankit.util.a.b("exception", str);
            return xVarArr;
        }
    }

    public static com.huawei.hms.scankit.aiscan.common.m c(byte[] bArr, com.huawei.hms.scankit.E e2) {
        int i = e2.a;
        int i2 = e2.b;
        if (!e2.f350d) {
            return new com.huawei.hms.scankit.aiscan.common.r(bArr, i, i2, 0, 0, i, i2, false);
        }
        byte[] bArr2 = new byte[i * i2];
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                bArr2[(((i4 * i2) + i2) - i3) - 1] = bArr[(i3 * i) + i4];
            }
        }
        e2.a = i2;
        e2.b = i;
        return new com.huawei.hms.scankit.aiscan.common.r(bArr2, i2, i, 0, 0, i2, i, false);
    }
}
