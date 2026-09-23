package d.g.m;

/* loaded from: classes.dex */
public class a {

    /* renamed from: c, reason: collision with root package name */
    public static final android.view.View.AccessibilityDelegate f1984c = new android.view.View.AccessibilityDelegate();
    public final android.view.View.AccessibilityDelegate a = f1984c;
    public final android.view.View.AccessibilityDelegate b = new d.g.m.a.C0048a(this);

    /* renamed from: d.g.m.a$a, reason: collision with other inner class name */
    public static final class C0048a extends android.view.View.AccessibilityDelegate {
        public final d.g.m.a a;

        public C0048a(d.g.m.a aVar) {
            this.a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            return this.a.a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public android.view.accessibility.AccessibilityNodeProvider getAccessibilityNodeProvider(android.view.View view) {
            android.view.accessibility.AccessibilityNodeProvider accessibilityNodeProvider = this.a.a.getAccessibilityNodeProvider(view);
            d.g.m.a0.e eVar = accessibilityNodeProvider != null ? new d.g.m.a0.e(accessibilityNodeProvider) : null;
            if (eVar != null) {
                return (android.view.accessibility.AccessibilityNodeProvider) eVar.a;
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(android.view.View view, android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
            int iKeyAt;
            d.g.m.a0.d dVar = new d.g.m.a0.d(accessibilityNodeInfo);
            boolean zD = d.g.m.s.D(view);
            if (android.os.Build.VERSION.SDK_INT >= 28) {
                dVar.a.setScreenReaderFocusable(zD);
            } else {
                dVar.f(1, zD);
            }
            java.lang.Boolean boolB = new d.g.m.r(d.g.c.tag_accessibility_heading, java.lang.Boolean.class, 28).b(view);
            boolean zBooleanValue = boolB == null ? false : boolB.booleanValue();
            if (android.os.Build.VERSION.SDK_INT >= 28) {
                dVar.a.setHeading(zBooleanValue);
            } else {
                dVar.f(2, zBooleanValue);
            }
            java.lang.CharSequence charSequenceG = d.g.m.s.g(view);
            int i = android.os.Build.VERSION.SDK_INT;
            if (i >= 28) {
                dVar.a.setPaneTitle(charSequenceG);
            } else if (i >= 19) {
                dVar.a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequenceG);
            }
            dVar.h(new d.g.m.q(d.g.c.tag_state_description, java.lang.CharSequence.class, 64, 30).b(view));
            this.a.b(view, dVar);
            java.lang.CharSequence text = accessibilityNodeInfo.getText();
            int i2 = android.os.Build.VERSION.SDK_INT;
            if (i2 >= 19 && i2 < 26) {
                if (i2 >= 19) {
                    dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                    dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                    dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                    dVar.a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
                }
                android.util.SparseArray sparseArray = (android.util.SparseArray) view.getTag(d.g.c.tag_accessibility_clickable_spans);
                if (sparseArray != null) {
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        if (((java.lang.ref.WeakReference) sparseArray.valueAt(i3)).get() == null) {
                            arrayList.add(java.lang.Integer.valueOf(i3));
                        }
                    }
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        sparseArray.remove(((java.lang.Integer) arrayList.get(i4)).intValue());
                    }
                }
                android.text.style.ClickableSpan[] clickableSpanArrD = d.g.m.a0.d.d(text);
                if (clickableSpanArrD != null && clickableSpanArrD.length > 0) {
                    dVar.e().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", d.g.c.accessibility_action_clickable_span);
                    android.util.SparseArray sparseArray2 = (android.util.SparseArray) view.getTag(d.g.c.tag_accessibility_clickable_spans);
                    if (sparseArray2 == null) {
                        sparseArray2 = new android.util.SparseArray();
                        view.setTag(d.g.c.tag_accessibility_clickable_spans, sparseArray2);
                    }
                    for (int i5 = 0; i5 < clickableSpanArrD.length; i5++) {
                        android.text.style.ClickableSpan clickableSpan = clickableSpanArrD[i5];
                        int i6 = 0;
                        while (true) {
                            if (i6 >= sparseArray2.size()) {
                                iKeyAt = d.g.m.a0.d.f1986d;
                                d.g.m.a0.d.f1986d = iKeyAt + 1;
                                break;
                            } else {
                                if (clickableSpan.equals((android.text.style.ClickableSpan) ((java.lang.ref.WeakReference) sparseArray2.valueAt(i6)).get())) {
                                    iKeyAt = sparseArray2.keyAt(i6);
                                    break;
                                }
                                i6++;
                            }
                        }
                        sparseArray2.put(iKeyAt, new java.lang.ref.WeakReference(clickableSpanArrD[i5]));
                        android.text.style.ClickableSpan clickableSpan2 = clickableSpanArrD[i5];
                        android.text.Spanned spanned = (android.text.Spanned) text;
                        dVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(java.lang.Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                        dVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(java.lang.Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                        dVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(java.lang.Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                        dVar.b("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(java.lang.Integer.valueOf(iKeyAt));
                    }
                }
            }
            java.util.List listEmptyList = (java.util.List) view.getTag(d.g.c.tag_accessibility_actions);
            if (listEmptyList == null) {
                listEmptyList = java.util.Collections.emptyList();
            }
            for (int i7 = 0; i7 < listEmptyList.size(); i7++) {
                dVar.a((d.g.m.a0.d.a) listEmptyList.get(i7));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.a.a.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            return this.a.a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(android.view.View view, int i, android.os.Bundle bundle) {
            return this.a.c(view, i, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(android.view.View view, int i) {
            this.a.a.sendAccessibilityEvent(view, i);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.a.a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }

    public void a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void b(android.view.View view, d.g.m.a0.d dVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(android.view.View r8, int r9, android.os.Bundle r10) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r7 = this;
            int r0 = d.g.c.tag_accessibility_actions
            java.lang.Object r0 = r8.getTag(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto Le
            java.util.List r0 = java.util.Collections.emptyList()
        Le:
            r1 = 0
            r2 = 0
        L10:
            int r3 = r0.size()
            if (r2 >= r3) goto L7d
            java.lang.Object r3 = r0.get(r2)
            d.g.m.a0.d$a r3 = (d.g.m.a0.d.a) r3
            r4 = 0
            if (r3 == 0) goto L7c
            int r5 = android.os.Build.VERSION.SDK_INT
            r6 = 21
            if (r5 < r6) goto L2e
            java.lang.Object r5 = r3.a
            android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction r5 = (android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction) r5
            int r5 = r5.getId()
            goto L2f
        L2e:
            r5 = 0
        L2f:
            if (r5 != r9) goto L79
            d.g.m.a0.f r0 = r3.f1992c
            if (r0 == 0) goto L7d
            java.lang.Class<? extends d.g.m.a0.f$a> r0 = r3.b
            if (r0 == 0) goto L72
            java.lang.Class[] r2 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L4f
            java.lang.reflect.Constructor r0 = r0.getDeclaredConstructor(r2)     // Catch: java.lang.Exception -> L4f
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L4f
            java.lang.Object r0 = r0.newInstance(r2)     // Catch: java.lang.Exception -> L4f
            d.g.m.a0.f$a r0 = (d.g.m.a0.f.a) r0     // Catch: java.lang.Exception -> L4f
            if (r0 == 0) goto L4b
            r4 = r0
            goto L72
        L4b:
            throw r4     // Catch: java.lang.Exception -> L4c
        L4c:
            r2 = move-exception
            r4 = r0
            goto L51
        L4f:
            r0 = move-exception
            r2 = r0
        L51:
            java.lang.Class<? extends d.g.m.a0.f$a> r0 = r3.b
            if (r0 != 0) goto L58
            java.lang.String r0 = "null"
            goto L5c
        L58:
            java.lang.String r0 = r0.getName()
        L5c:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to execute command with argument class ViewCommandArgument: "
            r5.append(r6)
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            java.lang.String r5 = "A11yActionCompat"
            android.util.Log.e(r5, r0, r2)
        L72:
            d.g.m.a0.f r0 = r3.f1992c
            boolean r0 = r0.a(r8, r4)
            goto L7e
        L79:
            int r2 = r2 + 1
            goto L10
        L7c:
            throw r4
        L7d:
            r0 = 0
        L7e:
            if (r0 != 0) goto L86
            android.view.View$AccessibilityDelegate r0 = r7.a
            boolean r0 = r0.performAccessibilityAction(r8, r9, r10)
        L86:
            if (r0 != 0) goto Ld5
            int r2 = d.g.c.accessibility_action_clickable_span
            if (r9 != r2) goto Ld5
            r9 = -1
            java.lang.String r0 = "ACCESSIBILITY_CLICKABLE_SPAN_ID"
            int r9 = r10.getInt(r0, r9)
            int r10 = d.g.c.tag_accessibility_clickable_spans
            java.lang.Object r10 = r8.getTag(r10)
            android.util.SparseArray r10 = (android.util.SparseArray) r10
            r0 = 1
            if (r10 == 0) goto Ld4
            java.lang.Object r9 = r10.get(r9)
            java.lang.ref.WeakReference r9 = (java.lang.ref.WeakReference) r9
            if (r9 == 0) goto Ld4
            java.lang.Object r9 = r9.get()
            android.text.style.ClickableSpan r9 = (android.text.style.ClickableSpan) r9
            if (r9 == 0) goto Lcd
            android.view.accessibility.AccessibilityNodeInfo r10 = r8.createAccessibilityNodeInfo()
            java.lang.CharSequence r10 = r10.getText()
            android.text.style.ClickableSpan[] r10 = d.g.m.a0.d.d(r10)
            r2 = 0
        Lbb:
            if (r10 == 0) goto Lcd
            int r3 = r10.length
            if (r2 >= r3) goto Lcd
            r3 = r10[r2]
            boolean r3 = r9.equals(r3)
            if (r3 == 0) goto Lca
            r10 = 1
            goto Lce
        Lca:
            int r2 = r2 + 1
            goto Lbb
        Lcd:
            r10 = 0
        Lce:
            if (r10 == 0) goto Ld4
            r9.onClick(r8)
            r1 = 1
        Ld4:
            r0 = r1
        Ld5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.m.a.c(android.view.View, int, android.os.Bundle):boolean");
    }
}
