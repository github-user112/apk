package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareBsDiffPatchInfo {
    public java.lang.String md5;
    public java.lang.String name;
    public java.lang.String patchMd5;
    public java.lang.String path;
    public java.lang.String rawCrc;

    public ShareBsDiffPatchInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
        this.name = str;
        this.md5 = str2;
        this.rawCrc = str4;
        this.patchMd5 = str5;
        this.path = str3;
    }

    public static boolean checkDiffPatchInfo(com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo shareBsDiffPatchInfo) {
        if (shareBsDiffPatchInfo == null) {
            return false;
        }
        java.lang.String str = shareBsDiffPatchInfo.name;
        java.lang.String str2 = shareBsDiffPatchInfo.md5;
        return str != null && str.length() > 0 && str2 != null && str2.length() == 32;
    }

    public static void parseDiffPatchInfo(java.lang.String str, java.util.ArrayList<com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo> arrayList) {
        java.lang.String[] strArrSplit;
        if (str == null || str.length() == 0) {
            return;
        }
        for (java.lang.String str2 : str.split("\n")) {
            if (str2 != null && str2.length() > 0 && (strArrSplit = str2.split(",", 5)) != null && strArrSplit.length >= 5) {
                arrayList.add(new com.tencent.tinker.loader.shareutil.ShareBsDiffPatchInfo(strArrSplit[0].trim(), strArrSplit[2].trim(), strArrSplit[1].trim(), strArrSplit[3].trim(), strArrSplit[4].trim()));
            }
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append(this.name);
        stringBuffer.append(",");
        stringBuffer.append(this.path);
        stringBuffer.append(",");
        stringBuffer.append(this.md5);
        stringBuffer.append(",");
        stringBuffer.append(this.rawCrc);
        stringBuffer.append(",");
        stringBuffer.append(this.patchMd5);
        return stringBuffer.toString();
    }
}
