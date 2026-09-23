package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public final class AppSettingHolder<T> {
    public final java.lang.String persistenceKey;
    public final T setting;

    public AppSettingHolder(java.lang.String str, T t) {
        if (str == null) {
            throw new java.lang.NullPointerException("Null PersistentKey");
        }
        if (t == null) {
            throw new java.lang.NullPointerException("Null setting");
        }
        this.persistenceKey = str;
        this.setting = t;
    }

    public static <T> com.huawei.hms.mlsdk.common.AppSettingHolder<T> create(java.lang.String str, T t) {
        return new com.huawei.hms.mlsdk.common.AppSettingHolder<>(str, t);
    }

    public final boolean equals(java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.huawei.hms.mlsdk.common.AppSettingHolder)) {
            return false;
        }
        com.huawei.hms.mlsdk.common.AppSettingHolder appSettingHolder = (com.huawei.hms.mlsdk.common.AppSettingHolder) obj;
        return this.persistenceKey.equals(appSettingHolder.persistenceKey) && this.setting.equals(appSettingHolder.setting);
    }

    public final int hashCode() {
        return java.util.Arrays.hashCode(new java.lang.Object[]{this.persistenceKey, this.setting});
    }

    public final java.lang.String toString() {
        java.lang.String str = this.persistenceKey;
        java.lang.String strValueOf = java.lang.String.valueOf(this.setting);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + java.lang.String.valueOf(str).length() + 97);
        sb.append("MlModelDriverInstanceKey{persistentKey=");
        sb.append(str);
        sb.append(", setting=");
        sb.append(this.setting);
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        return sb.toString();
    }
}
