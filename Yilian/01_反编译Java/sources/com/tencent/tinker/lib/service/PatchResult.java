package com.tencent.tinker.lib.service;

/* loaded from: classes.dex */
public class PatchResult implements java.io.Serializable {
    public static final int PATCH_TYPE_BSDIFF = 0;
    public static final int PATCH_TYPE_CUSTOM = 1;
    public static final int PATCH_TYPE_UNKNOWN = -1;
    public long dexCostTime;
    public long dexoptTriggerTime;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.Throwable f1192e;
    public boolean isOatGenerated;
    public boolean isSuccess;
    public java.lang.String patchVersion;
    public java.lang.String rawPatchFilePath;
    public long resCostTime;
    public long soCostTime;
    public long totalCostTime;
    public int type = -1;
    public boolean useEmergencyMode;

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        stringBuffer.append("\nPatchResult: \n");
        java.lang.StringBuilder sbO = e.a.c.a.a.o("isSuccess:");
        sbO.append(this.isSuccess);
        sbO.append("\n");
        stringBuffer.append(sbO.toString());
        stringBuffer.append("rawPatchFilePath:" + this.rawPatchFilePath + "\n");
        stringBuffer.append("useEmergencyMode:" + this.useEmergencyMode + "\n");
        stringBuffer.append("costTime:" + this.totalCostTime + "\n");
        stringBuffer.append("dexoptTriggerTime:" + this.dexoptTriggerTime + "\n");
        stringBuffer.append("isOatGenerated:" + this.isOatGenerated + "\n");
        if (this.patchVersion != null) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("patchVersion:");
            sbO2.append(this.patchVersion);
            sbO2.append("\n");
            stringBuffer.append(sbO2.toString());
        }
        if (this.f1192e != null) {
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Throwable:");
            sbO3.append(this.f1192e.getMessage());
            sbO3.append("\n");
            stringBuffer.append(sbO3.toString());
        }
        return stringBuffer.toString();
    }
}
