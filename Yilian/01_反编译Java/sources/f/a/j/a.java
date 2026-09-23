package f.a.j;

/* loaded from: classes.dex */
public class a {
    public final java.lang.String a(java.lang.ClassLoader classLoader, java.lang.Class<?> cls) throws java.lang.NoSuchFieldException {
        try {
            java.lang.reflect.Field declaredField = cls.getDeclaredField(androidx.core.content.FileProvider.ATTR_PATH);
            declaredField.setAccessible(true);
            return (java.lang.String) declaredField.get(classLoader);
        } catch (java.lang.ClassCastException | java.lang.IllegalAccessException | java.lang.NoSuchFieldException unused) {
            java.lang.String string = classLoader.toString();
            if (!string.contains("DexPathList")) {
                int iLastIndexOf = string.lastIndexOf(91);
                if (iLastIndexOf != -1) {
                    string = string.substring(iLastIndexOf + 1);
                }
                int iIndexOf = string.indexOf(93);
                return iIndexOf == -1 ? string : string.substring(0, iIndexOf);
            }
            int iIndexOf2 = string.indexOf("DexPathList") + 11;
            if (string.length() <= iIndexOf2 + 4) {
                return string;
            }
            java.lang.String strSubstring = string.substring(iIndexOf2);
            int iIndexOf3 = strSubstring.indexOf(93);
            if (strSubstring.charAt(0) != '[' || strSubstring.charAt(1) != '[' || iIndexOf3 < 0) {
                return string;
            }
            java.lang.String[] strArrSplit = strSubstring.substring(2, iIndexOf3).split(",");
            for (int i = 0; i < strArrSplit.length; i++) {
                int iIndexOf4 = strArrSplit[i].indexOf(34);
                int iLastIndexOf2 = strArrSplit[i].lastIndexOf(34);
                if (iIndexOf4 > 0 && iIndexOf4 < iLastIndexOf2) {
                    strArrSplit[i] = strArrSplit[i].substring(iIndexOf4 + 1, iLastIndexOf2);
                }
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            for (java.lang.String str : strArrSplit) {
                if (sb.length() > 0) {
                    sb.append(':');
                }
                sb.append(str);
            }
            return sb.toString();
        }
    }

    public java.io.File[] b(java.lang.String str) {
        int iLastIndexOf;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (str.startsWith("dexPath=")) {
            int iIndexOf = str.indexOf(44);
            str = iIndexOf == -1 ? str.substring(8) : str.substring(8, iIndexOf);
        }
        for (java.lang.String str2 : str.split(":")) {
            if (str2.startsWith("/data/app/") && (iLastIndexOf = str2.lastIndexOf(".apk")) == str2.length() - 4) {
                int iIndexOf2 = str2.indexOf("-");
                if (iIndexOf2 != -1) {
                    iLastIndexOf = iIndexOf2;
                }
                java.io.File file = new java.io.File(e.a.c.a.a.e("/data/data/", str2.substring(10, iLastIndexOf)));
                if (file.isDirectory() && file.canWrite()) {
                    java.io.File file2 = new java.io.File(file, "cache");
                    if (file2.exists() || file2.mkdir()) {
                        if (file2.isDirectory() && file2.canWrite()) {
                            arrayList.add(file2);
                        }
                    }
                }
            }
        }
        return (java.io.File[]) arrayList.toArray(new java.io.File[arrayList.size()]);
    }
}
