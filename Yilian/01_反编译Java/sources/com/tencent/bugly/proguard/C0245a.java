package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0245a {
    public static java.lang.String a(java.lang.String str) {
        if (str.equals("java.lang.Integer") || str.equals("int")) {
            return "int32";
        }
        if (str.equals("java.lang.Boolean") || str.equals("boolean")) {
            return "bool";
        }
        if (str.equals("java.lang.Byte") || str.equals("byte")) {
            return "char";
        }
        java.lang.String str2 = "double";
        if (!str.equals("java.lang.Double") && !str.equals("double")) {
            str2 = "float";
            if (!str.equals("java.lang.Float") && !str.equals("float")) {
                if (str.equals("java.lang.Long") || str.equals("long")) {
                    return "int64";
                }
                if (str.equals("java.lang.Short") || str.equals("short")) {
                    return "short";
                }
                if (str.equals("java.lang.Character")) {
                    throw new java.lang.IllegalArgumentException("can not support java.lang.Character");
                }
                return str.equals("java.lang.String") ? "string" : str.equals("java.util.List") ? "list" : str.equals("java.util.Map") ? "map" : str;
            }
        }
        return str2;
    }

    public static java.lang.String a(java.util.ArrayList<java.lang.String> arrayList) {
        java.lang.StringBuilder sb;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, a(arrayList.get(i)));
        }
        java.util.Collections.reverse(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            java.lang.String str = arrayList.get(i2);
            if (str.equals("list")) {
                int i3 = i2 - 1;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("<");
                sbO.append(arrayList.get(i3));
                arrayList.set(i3, sbO.toString());
                sb = new java.lang.StringBuilder();
            } else if (str.equals("map")) {
                int i4 = i2 - 1;
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("<");
                sbO2.append(arrayList.get(i4));
                sbO2.append(",");
                arrayList.set(i4, sbO2.toString());
                sb = new java.lang.StringBuilder();
            } else if (str.equals("Array")) {
                int i5 = i2 - 1;
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("<");
                sbO3.append(arrayList.get(i5));
                arrayList.set(i5, sbO3.toString());
                sb = new java.lang.StringBuilder();
            }
            sb.append(arrayList.get(0));
            sb.append(">");
            arrayList.set(0, sb.toString());
        }
        java.util.Collections.reverse(arrayList);
        java.util.Iterator<java.lang.String> it = arrayList.iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
        }
        return stringBuffer.toString();
    }
}
