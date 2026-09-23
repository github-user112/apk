package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Z {
    public java.lang.String a = com.huawei.hms.scankit.p.AbstractC0120b.a().getFilesDir().getPath();

    private java.lang.String a(java.lang.String str) throws java.lang.Throwable {
        java.io.File file = new java.io.File(b(str), e.a.c.a.a.e("hianalytics_", str));
        if (a(file)) {
            return com.huawei.hms.scankit.p.C0175m.a(file);
        }
        java.lang.String strB = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.RSA);
        com.huawei.hms.scankit.p.C0175m.a(file, strB);
        return strB;
    }

    private void a(java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        java.io.File file = new java.io.File(b(str));
        java.io.File file2 = new java.io.File(b(str), e.a.c.a.a.e("hianalytics_", str));
        if (!file.exists() && file.mkdirs()) {
            com.huawei.hms.scankit.p.T.b("ComponentManager", "file directory is mkdirs");
        }
        if (a(file2)) {
            com.huawei.hms.scankit.p.C0175m.a(file2, str2);
        } else {
            com.huawei.hms.scankit.p.T.c("ComponentManager", "refreshComponent():file is not found,and file is create failed");
        }
    }

    private boolean a(java.io.File file) {
        if (file.exists()) {
            return true;
        }
        try {
            return file.createNewFile();
        } catch (java.io.IOException unused) {
            com.huawei.hms.scankit.p.T.c("ComponentManager", "create new file error!");
            return false;
        }
    }

    private char[] a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        byte[] bArrB = com.huawei.hms.scankit.p.C0204s.a().b(str);
        byte[] bArrB2 = com.huawei.hms.scankit.p.C0204s.a().b(str2);
        byte[] bArrB3 = com.huawei.hms.scankit.p.C0204s.a().b(str3);
        byte[] bArrB4 = com.huawei.hms.scankit.p.C0204s.a().b(str4);
        int length = bArrB.length;
        if (length > bArrB2.length) {
            length = bArrB2.length;
        }
        if (length > bArrB3.length) {
            length = bArrB3.length;
        }
        if (length > bArrB4.length) {
            length = bArrB4.length;
        }
        char[] cArr = new char[length];
        for (int i = 0; i < length; i++) {
            cArr[i] = (char) (((bArrB[i] ^ bArrB2[i]) ^ bArrB3[i]) ^ bArrB4[i]);
        }
        return cArr;
    }

    private java.lang.String b(java.lang.String str) {
        return this.a + "/hms/component/".replace("component", str);
    }

    private boolean b() {
        long jB = com.huawei.hms.scankit.p.C0131da.b(com.huawei.hms.scankit.p.AbstractC0120b.a(), "Privacy_MY", "assemblyFlash", -1L);
        if (-1 != jB) {
            return java.lang.System.currentTimeMillis() - jB > 31536000000L;
        }
        com.huawei.hms.scankit.p.T.b("ComponentManager", "First init components");
        return true;
    }

    public java.lang.String a() throws java.lang.Throwable {
        java.lang.String strA;
        java.lang.String strA2;
        java.lang.String strA3;
        java.lang.String strA4;
        if (b()) {
            com.huawei.hms.scankit.p.T.b("ComponentManager", "refresh components");
            strA = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.RSA);
            a("aprpap", strA);
            strA2 = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.RSA);
            a("febdoc", strA2);
            strA3 = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.RSA);
            a("marfil", strA3);
            strA4 = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.RSA);
            a("maywnj", strA4);
            com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "Privacy_MY", "assemblyFlash", java.lang.System.currentTimeMillis());
        } else {
            strA = a("aprpap");
            strA2 = a("febdoc");
            strA3 = a("marfil");
            strA4 = a("maywnj");
        }
        return com.huawei.hms.scankit.p.C0204s.a().a(a(strA, strA2, strA3, "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc"), com.huawei.hms.scankit.p.C0204s.a().b(strA4));
    }
}
