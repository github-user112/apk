package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class ExoPlayerLibraryInfo {
    public static final boolean ASSERTIONS_ENABLED = true;
    public static final java.lang.String TAG = "ExoPlayerLib";
    public static final boolean TRACE_ENABLED = true;
    public static final java.lang.String VERSION = "2.16.0";
    public static final int VERSION_INT = 2016000;
    public static final java.lang.String VERSION_SLASHY = "ExoPlayerLib/2.16.0";
    public static final java.util.HashSet<java.lang.String> registeredModules = new java.util.HashSet<>();
    public static java.lang.String registeredModulesString = "goog.exo.core";

    public static synchronized void registerModule(java.lang.String str) {
        if (registeredModules.add(str)) {
            java.lang.String str2 = registeredModulesString;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str2).length() + 2 + java.lang.String.valueOf(str).length());
            sb.append(str2);
            sb.append(", ");
            sb.append(str);
            registeredModulesString = sb.toString();
        }
    }

    public static synchronized java.lang.String registeredModules() {
        return registeredModulesString;
    }
}
