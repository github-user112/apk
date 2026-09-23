package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ca {

    public static class a implements java.io.FilenameFilter {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ java.lang.String b;

        public a(java.lang.String str, java.lang.String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(java.io.File file, java.lang.String str) {
            return str != null && str.startsWith(this.a) && str.endsWith(this.b);
        }
    }

    public static long a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (str == null) {
            com.tencent.bugly.proguard.aa.e("File name is null.", new java.lang.Object[0]);
            return -1L;
        }
        try {
            if (str.startsWith(str2) && str.endsWith(str3)) {
                return java.lang.Long.parseLong(str.substring(str2.length(), str.indexOf(str3)));
            }
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
        }
        return -1L;
    }

    public static java.util.List<java.io.File> a(java.lang.String str, java.lang.String str2, java.lang.String str3, long j, boolean z, java.util.Comparator<java.io.File> comparator) {
        java.util.List<java.io.File> arrayList = new java.util.ArrayList<>();
        if (str2 == null || str3 == null) {
            com.tencent.bugly.proguard.aa.e("prefix %s and/or postfix %s is null.", str2, str3);
            return arrayList;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.io.File file = new java.io.File(str);
        if (file.exists() && file.isDirectory()) {
            try {
                java.io.File[] fileArrListFiles = file.listFiles(new com.tencent.bugly.proguard.ca.a(str2, str3));
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    arrayList = z ? a(fileArrListFiles, str2, str3, jCurrentTimeMillis - j, jCurrentTimeMillis) : a(fileArrListFiles, str2, str3, 0L, jCurrentTimeMillis - j);
                }
                return arrayList;
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
            }
        }
        if (comparator != null) {
            java.util.Collections.sort(arrayList, comparator);
        }
        return arrayList;
    }

    public static java.util.List<java.io.File> a(java.io.File[] fileArr, java.lang.String str, java.lang.String str2, long j, long j2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.io.File file : fileArr) {
            long jA = a(file.getName(), str, str2);
            if (jA >= 0 && j <= jA && jA <= j2) {
                arrayList.add(file);
            }
        }
        return arrayList;
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.String str3, long j) {
        try {
            int i = 0;
            for (java.io.File file : a(str, str2, str3, j, false, null)) {
                com.tencent.bugly.proguard.aa.a("File %s is to be deleted.", file.getName());
                if (file.delete()) {
                    i++;
                }
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Number of overdue trace files that has deleted: ");
            sb.append(i);
            com.tencent.bugly.proguard.aa.a(sb.toString(), new java.lang.Object[0]);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
        }
    }

    public static boolean a(java.io.File file, java.lang.String str, long j, boolean z) {
        if (file == null) {
            return false;
        }
        try {
            java.io.BufferedWriter bufferedWriter = new java.io.BufferedWriter(new java.io.FileWriter(file, z));
            boolean zA = a(bufferedWriter, str, file.length(), j);
            bufferedWriter.close();
            return zA;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
            return false;
        }
    }

    public static boolean a(java.io.Writer writer, java.lang.String str, long j, long j2) {
        return a(writer, str.toCharArray(), str.length(), j, j2);
    }

    public static boolean a(java.io.Writer writer, char[] cArr, int i, long j, long j2) throws java.io.IOException {
        if (j >= j2) {
            return false;
        }
        if ((i * 2) + j > j2) {
            try {
                i = (int) ((j2 - j) / 2);
            } catch (java.io.IOException e2) {
                com.tencent.bugly.proguard.aa.b(e2);
                return false;
            }
        }
        writer.write(cArr, 0, i);
        writer.flush();
        return true;
    }

    public static boolean a(java.lang.String str, java.lang.String str2, int i) {
        boolean z = true;
        com.tencent.bugly.proguard.aa.a("rqdp{  sv sd start} %s", str);
        if (str2 != null && str2.trim().length() > 0) {
            java.io.File file = new java.io.File(str);
            try {
                if (!file.exists()) {
                    if (file.getParentFile() != null) {
                        file.getParentFile().mkdirs();
                    }
                    file.createNewFile();
                }
                long j = i;
                if (file.length() >= j) {
                    z = false;
                }
                return a(file, str2, j, z);
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return false;
    }
}
