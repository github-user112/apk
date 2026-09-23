package d.g.m;

/* loaded from: classes.dex */
public class g {
    public android.view.ViewParent a;
    public android.view.ViewParent b;

    /* renamed from: c, reason: collision with root package name */
    public final android.view.View f1995c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1996d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f1997e;

    public g(android.view.View view) {
        this.f1995c = view;
    }

    public boolean a(float f2, float f3, boolean z) {
        android.view.ViewParent viewParentF;
        if (!this.f1996d || (viewParentF = f(0)) == null) {
            return false;
        }
        return d.b.k.r.Z(viewParentF, this.f1995c, f2, f3, z);
    }

    public boolean b(float f2, float f3) {
        android.view.ViewParent viewParentF;
        if (!this.f1996d || (viewParentF = f(0)) == null) {
            return false;
        }
        return d.b.k.r.a0(viewParentF, this.f1995c, f2, f3);
    }

    public boolean c(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        android.view.ViewParent viewParentF;
        int i4;
        int i5;
        if (!this.f1996d || (viewParentF = f(i3)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.f1995c.getLocationInWindow(iArr2);
                i4 = iArr2[0];
                i5 = iArr2[1];
            } else {
                i4 = 0;
                i5 = 0;
            }
            if (iArr == null) {
                if (this.f1997e == null) {
                    this.f1997e = new int[2];
                }
                iArr = this.f1997e;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            d.b.k.r.b0(viewParentF, this.f1995c, i, i2, iArr, i3);
            if (iArr2 != null) {
                this.f1995c.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i4;
                iArr2[1] = iArr2[1] - i5;
            }
            if (iArr[0] != 0 || iArr[1] != 0) {
                return true;
            }
        } else if (iArr2 != null) {
            iArr2[0] = 0;
            iArr2[1] = 0;
        }
        return false;
    }

    public boolean d(int i, int i2, int i3, int i4, int[] iArr) {
        return e(i, i2, i3, i4, iArr, 0, null);
    }

    public final boolean e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        android.view.ViewParent viewParentF;
        int i6;
        int i7;
        int[] iArr3;
        if (!this.f1996d || (viewParentF = f(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f1995c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            if (this.f1997e == null) {
                this.f1997e = new int[2];
            }
            int[] iArr4 = this.f1997e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        d.b.k.r.c0(viewParentF, this.f1995c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f1995c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    public final android.view.ViewParent f(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i != 1) {
            return null;
        }
        return this.b;
    }

    public boolean g(int i) {
        return f(i) != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean h(int r12, int r13) {
        /*
            r11 = this;
            android.view.ViewParent r0 = r11.f(r13)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto La
            r0 = 1
            goto Lb
        La:
            r0 = 0
        Lb:
            if (r0 == 0) goto Le
            return r1
        Le:
            boolean r0 = r11.f1996d
            if (r0 == 0) goto Lb1
            android.view.View r0 = r11.f1995c
            android.view.ViewParent r0 = r0.getParent()
            android.view.View r3 = r11.f1995c
        L1a:
            if (r0 == 0) goto Lb1
            android.view.View r4 = r11.f1995c
            boolean r5 = r0 instanceof d.g.m.h
            java.lang.String r6 = "ViewParentCompat"
            java.lang.String r7 = "ViewParent "
            r8 = 21
            if (r5 == 0) goto L30
            r9 = r0
            d.g.m.h r9 = (d.g.m.h) r9
            boolean r4 = r9.o(r3, r4, r12, r13)
            goto L61
        L30:
            if (r13 != 0) goto L60
            int r9 = android.os.Build.VERSION.SDK_INT
            if (r9 < r8) goto L54
            boolean r4 = r0.onStartNestedScroll(r3, r4, r12)     // Catch: java.lang.AbstractMethodError -> L3b
            goto L61
        L3b:
            r4 = move-exception
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            r9.append(r7)
            r9.append(r0)
            java.lang.String r10 = " does not implement interface method onStartNestedScroll"
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.util.Log.e(r6, r9, r4)
            goto L60
        L54:
            boolean r9 = r0 instanceof d.g.m.j
            if (r9 == 0) goto L60
            r9 = r0
            d.g.m.j r9 = (d.g.m.j) r9
            boolean r4 = r9.onStartNestedScroll(r3, r4, r12)
            goto L61
        L60:
            r4 = 0
        L61:
            if (r4 == 0) goto La4
            if (r13 == 0) goto L6b
            if (r13 == r1) goto L68
            goto L6d
        L68:
            r11.b = r0
            goto L6d
        L6b:
            r11.a = r0
        L6d:
            android.view.View r2 = r11.f1995c
            if (r5 == 0) goto L77
            d.g.m.h r0 = (d.g.m.h) r0
            r0.h(r3, r2, r12, r13)
            goto La3
        L77:
            if (r13 != 0) goto La3
            int r13 = android.os.Build.VERSION.SDK_INT
            if (r13 < r8) goto L9a
            r0.onNestedScrollAccepted(r3, r2, r12)     // Catch: java.lang.AbstractMethodError -> L81
            goto La3
        L81:
            r12 = move-exception
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            r13.append(r7)
            r13.append(r0)
            java.lang.String r0 = " does not implement interface method onNestedScrollAccepted"
            r13.append(r0)
            java.lang.String r13 = r13.toString()
            android.util.Log.e(r6, r13, r12)
            goto La3
        L9a:
            boolean r13 = r0 instanceof d.g.m.j
            if (r13 == 0) goto La3
            d.g.m.j r0 = (d.g.m.j) r0
            r0.onNestedScrollAccepted(r3, r2, r12)
        La3:
            return r1
        La4:
            boolean r4 = r0 instanceof android.view.View
            if (r4 == 0) goto Lab
            r3 = r0
            android.view.View r3 = (android.view.View) r3
        Lab:
            android.view.ViewParent r0 = r0.getParent()
            goto L1a
        Lb1:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.m.g.h(int, int):boolean");
    }

    public void i(int i) {
        android.view.ViewParent viewParentF = f(i);
        if (viewParentF != null) {
            android.view.View view = this.f1995c;
            if (viewParentF instanceof d.g.m.h) {
                ((d.g.m.h) viewParentF).i(view, i);
            } else if (i == 0) {
                if (android.os.Build.VERSION.SDK_INT >= 21) {
                    try {
                        viewParentF.onStopNestedScroll(view);
                    } catch (java.lang.AbstractMethodError e2) {
                        android.util.Log.e("ViewParentCompat", "ViewParent " + viewParentF + " does not implement interface method onStopNestedScroll", e2);
                    }
                } else if (viewParentF instanceof d.g.m.j) {
                    ((d.g.m.j) viewParentF).onStopNestedScroll(view);
                }
            }
            if (i == 0) {
                this.a = null;
            } else {
                if (i != 1) {
                    return;
                }
                this.b = null;
            }
        }
    }
}
