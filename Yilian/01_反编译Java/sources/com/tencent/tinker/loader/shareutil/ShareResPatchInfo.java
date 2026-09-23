package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareResPatchInfo {
    public java.lang.String arscBaseCrc = null;
    public java.lang.String resArscMd5 = null;
    public java.util.ArrayList<java.lang.String> addRes = new java.util.ArrayList<>();
    public java.util.ArrayList<java.lang.String> deleteRes = new java.util.ArrayList<>();
    public java.util.ArrayList<java.lang.String> modRes = new java.util.ArrayList<>();
    public java.util.HashMap<java.lang.String, java.io.File> storeRes = new java.util.HashMap<>();
    public java.util.ArrayList<java.lang.String> largeModRes = new java.util.ArrayList<>();
    public java.util.HashMap<java.lang.String, com.tencent.tinker.loader.shareutil.ShareResPatchInfo.LargeModeInfo> largeModMap = new java.util.HashMap<>();
    public java.util.HashSet<java.util.regex.Pattern> patterns = new java.util.HashSet<>();

    public static class LargeModeInfo {
        public long crc;
        public java.lang.String md5 = null;
        public java.io.File file = null;
    }

    public static boolean checkFileInPattern(java.util.HashSet<java.util.regex.Pattern> hashSet, java.lang.String str) {
        if (hashSet.isEmpty()) {
            return false;
        }
        java.util.Iterator<java.util.regex.Pattern> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    public static boolean checkResPatchInfo(com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo) {
        java.lang.String str;
        return (shareResPatchInfo == null || (str = shareResPatchInfo.resArscMd5) == null || str.length() != 32) ? false : true;
    }

    public static java.util.regex.Pattern convertToPatternString(java.lang.String str) {
        if (str.contains(".")) {
            str = str.replaceAll("\\.", "\\\\.");
        }
        if (str.contains("?")) {
            str = str.replaceAll("\\?", "\\.");
        }
        if (str.contains("*")) {
            str = str.replace("*", ".*");
        }
        return java.util.regex.Pattern.compile(str);
    }

    public static void parseAllResPatchInfo(java.lang.String str, com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo) throws java.lang.NumberFormatException {
        if (str == null || str.length() == 0) {
            return;
        }
        java.lang.String[] strArrSplit = str.split("\n");
        int i = 0;
        while (i < strArrSplit.length) {
            java.lang.String str2 = strArrSplit[i];
            if (str2 != null && str2.length() > 0) {
                if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_TITLE)) {
                    java.lang.String[] strArrSplit2 = str2.split(",", 3);
                    shareResPatchInfo.arscBaseCrc = strArrSplit2[1];
                    shareResPatchInfo.resArscMd5 = strArrSplit2[2];
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_PATTERN_TITLE)) {
                    for (int i2 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i2 > 0; i2--) {
                        i++;
                        shareResPatchInfo.patterns.add(convertToPatternString(strArrSplit[i]));
                    }
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_ADD_TITLE)) {
                    for (int i3 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i3 > 0; i3--) {
                        i++;
                        shareResPatchInfo.addRes.add(strArrSplit[i]);
                    }
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_MOD_TITLE)) {
                    for (int i4 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i4 > 0; i4--) {
                        i++;
                        shareResPatchInfo.modRes.add(strArrSplit[i]);
                    }
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_LARGE_MOD_TITLE)) {
                    for (int i5 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i5 > 0; i5--) {
                        i++;
                        java.lang.String[] strArrSplit3 = strArrSplit[i].split(",", 3);
                        java.lang.String str3 = strArrSplit3[0];
                        com.tencent.tinker.loader.shareutil.ShareResPatchInfo.LargeModeInfo largeModeInfo = new com.tencent.tinker.loader.shareutil.ShareResPatchInfo.LargeModeInfo();
                        largeModeInfo.md5 = strArrSplit3[1];
                        largeModeInfo.crc = java.lang.Long.parseLong(strArrSplit3[2]);
                        shareResPatchInfo.largeModRes.add(str3);
                        shareResPatchInfo.largeModMap.put(str3, largeModeInfo);
                    }
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_DEL_TITLE)) {
                    for (int i6 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i6 > 0; i6--) {
                        i++;
                        shareResPatchInfo.deleteRes.add(strArrSplit[i]);
                    }
                } else if (str2.startsWith(com.tencent.tinker.loader.shareutil.ShareConstants.RES_STORE_TITLE)) {
                    for (int i7 = java.lang.Integer.parseInt(str2.split(":", 2)[1]); i7 > 0; i7--) {
                        i++;
                        shareResPatchInfo.storeRes.put(strArrSplit[i], null);
                    }
                }
            }
            i++;
        }
    }

    public static void parseResPatchInfoFirstLine(java.lang.String str, com.tencent.tinker.loader.shareutil.ShareResPatchInfo shareResPatchInfo) {
        if (str == null || str.length() == 0) {
            return;
        }
        java.lang.String str2 = str.split("\n")[0];
        if (str2 == null || str2.length() <= 0) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException(e.a.c.a.a.e("res meta Corrupted:", str));
        }
        java.lang.String[] strArrSplit = str2.split(",", 3);
        shareResPatchInfo.arscBaseCrc = strArrSplit[1];
        shareResPatchInfo.resArscMd5 = strArrSplit[2];
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("resArscMd5:");
        sbO.append(this.resArscMd5);
        sbO.append("\n");
        stringBuffer.append(sbO.toString());
        stringBuffer.append("arscBaseCrc:" + this.arscBaseCrc + "\n");
        java.util.Iterator<java.util.regex.Pattern> it = this.patterns.iterator();
        while (it.hasNext()) {
            stringBuffer.append(com.tencent.tinker.loader.shareutil.ShareConstants.RES_PATTERN_TITLE + it.next() + "\n");
        }
        java.util.Iterator<java.lang.String> it2 = this.addRes.iterator();
        while (it2.hasNext()) {
            stringBuffer.append("addedSet:" + it2.next() + "\n");
        }
        java.util.Iterator<java.lang.String> it3 = this.modRes.iterator();
        while (it3.hasNext()) {
            stringBuffer.append("modifiedSet:" + it3.next() + "\n");
        }
        java.util.Iterator<java.lang.String> it4 = this.largeModRes.iterator();
        while (it4.hasNext()) {
            stringBuffer.append("largeModifiedSet:" + it4.next() + "\n");
        }
        java.util.Iterator<java.lang.String> it5 = this.deleteRes.iterator();
        while (it5.hasNext()) {
            stringBuffer.append("deletedSet:" + it5.next() + "\n");
        }
        java.util.Iterator<java.lang.String> it6 = this.storeRes.keySet().iterator();
        while (it6.hasNext()) {
            stringBuffer.append("storeSet:" + it6.next() + "\n");
        }
        return stringBuffer.toString();
    }
}
