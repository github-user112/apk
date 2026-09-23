package d.a.e.f;

/* loaded from: classes.dex */
public final class b extends d.a.e.f.a<java.lang.String[], java.util.Map<java.lang.String, java.lang.Boolean>> {
    @Override // d.a.e.f.a
    public android.content.Intent a(android.content.Context context, java.lang.String[] strArr) {
        return new android.content.Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // d.a.e.f.a
    public d.a.e.f.a.C0030a<java.util.Map<java.lang.String, java.lang.Boolean>> b(android.content.Context context, java.lang.String[] strArr) {
        java.lang.String[] strArr2 = strArr;
        if (strArr2 == null || strArr2.length == 0) {
            return new d.a.e.f.a.C0030a<>(java.util.Collections.emptyMap());
        }
        d.e.a aVar = new d.e.a();
        boolean z = true;
        for (java.lang.String str : strArr2) {
            boolean z2 = d.g.f.a.a(context, str) == 0;
            aVar.put(str, java.lang.Boolean.valueOf(z2));
            if (!z2) {
                z = false;
            }
        }
        if (z) {
            return new d.a.e.f.a.C0030a<>(aVar);
        }
        return null;
    }

    @Override // d.a.e.f.a
    public java.util.Map<java.lang.String, java.lang.Boolean> c(int i, android.content.Intent intent) {
        if (i == -1 && intent != null) {
            java.lang.String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra != null && stringArrayExtra != null) {
                java.util.HashMap map = new java.util.HashMap();
                int length = stringArrayExtra.length;
                for (int i2 = 0; i2 < length; i2++) {
                    map.put(stringArrayExtra[i2], java.lang.Boolean.valueOf(intArrayExtra[i2] == 0));
                }
                return map;
            }
        }
        return java.util.Collections.emptyMap();
    }
}
