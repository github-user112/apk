package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class e {

    public enum a {
        check_su_binary(new java.lang.String[]{"/system/xbin/which", "su"});

        public java.lang.String[] b;

        a(java.lang.String[] strArr) {
            this.b = strArr;
        }
    }

    public java.util.ArrayList a(com.umeng.commonsdk.internal.utils.e.a aVar) throws java.io.IOException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (android.os.Build.VERSION.SDK_INT > 28) {
            return arrayList;
        }
        try {
            java.lang.Process processExec = java.lang.Runtime.getRuntime().exec(aVar.b);
            new java.io.BufferedWriter(new java.io.OutputStreamWriter(processExec.getOutputStream()));
            java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(processExec.getInputStream()));
            while (true) {
                try {
                    java.lang.String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    arrayList.add(line);
                } catch (java.lang.Exception unused) {
                }
            }
            return arrayList;
        } catch (java.lang.Exception unused2) {
            return null;
        }
    }
}
