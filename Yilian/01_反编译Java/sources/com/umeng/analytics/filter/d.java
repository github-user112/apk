package com.umeng.analytics.filter;

/* loaded from: classes.dex */
public class d {
    public static final java.lang.String b = "Ă";

    /* renamed from: c, reason: collision with root package name */
    public java.security.MessageDigest f1206c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1208e;
    public final java.lang.String a = "MD5";

    /* renamed from: d, reason: collision with root package name */
    public java.util.Set<java.lang.Object> f1207d = new java.util.HashSet();

    public d(boolean z, java.lang.String str) {
        int i = 0;
        this.f1208e = false;
        this.f1208e = z;
        try {
            this.f1206c = java.security.MessageDigest.getInstance("MD5");
        } catch (java.security.NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        if (str != null) {
            if (!z) {
                java.lang.String[] strArrSplit = str.split(b);
                int length = strArrSplit.length;
                while (i < length) {
                    this.f1207d.add(strArrSplit[i]);
                    i++;
                }
                return;
            }
            try {
                byte[] bArrDecode = android.util.Base64.decode(str.getBytes(), 0);
                while (i < bArrDecode.length / 4) {
                    int i2 = i * 4;
                    this.f1207d.add(java.lang.Integer.valueOf(((bArrDecode[i2 + 0] & 255) << 24) + ((bArrDecode[i2 + 1] & 255) << 16) + ((bArrDecode[i2 + 2] & 255) << 8) + (bArrDecode[i2 + 3] & 255)));
                    i++;
                }
            } catch (java.lang.IllegalArgumentException e3) {
                e3.printStackTrace();
            }
        }
    }

    private java.lang.Integer c(java.lang.String str) {
        try {
            this.f1206c.update(str.getBytes());
            byte[] bArrDigest = this.f1206c.digest();
            return java.lang.Integer.valueOf(((bArrDigest[0] & 255) << 24) + ((bArrDigest[1] & 255) << 16) + ((bArrDigest[2] & 255) << 8) + (bArrDigest[3] & 255));
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void a() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.util.Iterator<java.lang.Object> it = this.f1207d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (sb.length() > 0) {
                sb.append(",");
            }
        }
        java.lang.System.out.println(sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a(java.lang.String str) {
        java.util.Set<java.lang.Object> set;
        java.lang.Integer numC;
        if (this.f1208e) {
            set = this.f1207d;
            numC = c(str);
        } else {
            set = this.f1207d;
            numC = str;
        }
        return set.contains(numC);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b(java.lang.String str) {
        java.util.Set<java.lang.Object> set;
        java.lang.Integer numC;
        if (this.f1208e) {
            set = this.f1207d;
            numC = c(str);
        } else {
            set = this.f1207d;
            numC = str;
        }
        set.add(numC);
    }

    public java.lang.String toString() {
        if (!this.f1208e) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (java.lang.Object obj : this.f1207d) {
                if (sb.length() > 0) {
                    sb.append(b);
                }
                sb.append(obj.toString());
            }
            return sb.toString();
        }
        byte[] bArr = new byte[this.f1207d.size() * 4];
        java.util.Iterator<java.lang.Object> it = this.f1207d.iterator();
        int i = 0;
        while (it.hasNext()) {
            int iIntValue = ((java.lang.Integer) it.next()).intValue();
            int i2 = i + 1;
            bArr[i] = (byte) (((-16777216) & iIntValue) >> 24);
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((16711680 & iIntValue) >> 16);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((65280 & iIntValue) >> 8);
            i = i4 + 1;
            bArr[i4] = (byte) (iIntValue & 255);
        }
        return new java.lang.String(android.util.Base64.encode(bArr, 0));
    }
}
