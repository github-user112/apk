package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareArkHotDiffPatchInfo {
    public java.lang.String name;
    public java.lang.String patchMd5;
    public java.lang.String path;

    public ShareArkHotDiffPatchInfo(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.name = str2;
        this.patchMd5 = str3;
        this.path = str;
    }

    public static boolean checkDiffPatchInfo(com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo shareArkHotDiffPatchInfo) {
        if (shareArkHotDiffPatchInfo == null) {
            return false;
        }
        java.lang.String str = shareArkHotDiffPatchInfo.name;
        java.lang.String str2 = shareArkHotDiffPatchInfo.patchMd5;
        return str != null && str.length() > 0 && str2 != null && str2.length() == 32;
    }

    public static void parseDiffPatchInfo(java.lang.String str, java.util.ArrayList<com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo> arrayList) {
        java.lang.String[] strArrSplit;
        if (str == null || arrayList == null) {
            return;
        }
        for (java.lang.String str2 : str.split("\n")) {
            if (str2 != null && str2.length() > 0 && (strArrSplit = str2.split(",", 4)) != null && strArrSplit.length >= 3) {
                arrayList.add(new com.tencent.tinker.loader.shareutil.ShareArkHotDiffPatchInfo(strArrSplit[1].trim(), strArrSplit[0].trim(), strArrSplit[2].trim()));
            }
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append(this.name);
        stringBuffer.append(",");
        stringBuffer.append(this.path);
        stringBuffer.append(",");
        stringBuffer.append(this.patchMd5);
        return stringBuffer.toString();
    }
}
