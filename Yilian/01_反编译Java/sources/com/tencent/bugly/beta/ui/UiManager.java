package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class UiManager {
    public static com.tencent.bugly.beta.global.d upgradeForceChecker;
    public static final java.util.Map<java.lang.Integer, com.tencent.bugly.beta.ui.BaseFrag> TEMP_FRAG = new java.util.concurrent.ConcurrentHashMap();
    public static final java.util.Map<java.lang.Integer, com.tencent.bugly.beta.global.d> TEMP_CAN_SHOW_UPGRADE_CHECKER = new java.util.concurrent.ConcurrentHashMap();
    public static final java.util.Map<java.lang.Integer, com.tencent.bugly.beta.global.d> TEMP_TOP_SHOW_CHECKER = new java.util.concurrent.ConcurrentHashMap();

    public static synchronized boolean canShowUpgrade() {
        java.lang.String topAct = getTopAct();
        if (topAct == null || topAct.equals("background") || topAct.equals("unknown")) {
            return false;
        }
        java.lang.Class<?> cls = null;
        try {
            cls = java.lang.Class.forName(topAct);
        } catch (java.lang.ClassNotFoundException e2) {
            e2.printStackTrace();
        }
        if (!com.tencent.bugly.beta.global.e.b.p.isEmpty()) {
            for (java.lang.Class<? extends android.app.Activity> cls2 : com.tencent.bugly.beta.global.e.b.p) {
                if (android.text.TextUtils.equals(cls2.getName(), topAct) || (cls != null && cls2.isAssignableFrom(cls))) {
                    return true;
                }
            }
            return false;
        }
        if (com.tencent.bugly.beta.global.e.b.q.isEmpty()) {
            return true;
        }
        for (java.lang.Class<? extends android.app.Activity> cls3 : com.tencent.bugly.beta.global.e.b.q) {
            if (android.text.TextUtils.equals(cls3.getName(), topAct) || (cls != null && cls3.isAssignableFrom(cls))) {
                return false;
            }
        }
        return true;
    }

    public static java.lang.String getTopAct() {
        try {
            return com.tencent.bugly.crashreport.common.info.a.n().W;
        } catch (java.lang.SecurityException unused) {
            com.tencent.bugly.proguard.aa.b("无法获取Activity信息，请在AndroidManifest.xml中添加GET_TASKS权限：\n<uses-permission android:name=\"android.permission.GET_TASKS\" />\n", new java.lang.Object[0]);
            return null;
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.a(e2)) {
                return null;
            }
            e2.printStackTrace();
            return null;
        }
    }

    public static synchronized void show(com.tencent.bugly.beta.ui.BaseFrag baseFrag, boolean z) {
        show(baseFrag, z, false, 5000L);
    }

    public static synchronized void show(com.tencent.bugly.beta.ui.BaseFrag baseFrag, boolean z, boolean z2, long j) {
        if (baseFrag != null) {
            if (!baseFrag.isShowing()) {
                int iHashCode = baseFrag.hashCode();
                if (baseFrag instanceof com.tencent.bugly.beta.ui.UpgradeDialog) {
                    com.tencent.bugly.beta.utils.e.b(upgradeForceChecker);
                    if (((com.tencent.bugly.beta.ui.UpgradeDialog) baseFrag).strategyDetail.l == 2) {
                        com.tencent.bugly.beta.global.d dVar = new com.tencent.bugly.beta.global.d(15, baseFrag, java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(z2), java.lang.Long.valueOf(j));
                        upgradeForceChecker = dVar;
                        com.tencent.bugly.beta.utils.e.a(dVar, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                    }
                    if (!z && !canShowUpgrade()) {
                        com.tencent.bugly.beta.global.d dVar2 = TEMP_CAN_SHOW_UPGRADE_CHECKER.get(java.lang.Integer.valueOf(iHashCode));
                        if (dVar2 == null) {
                            dVar2 = new com.tencent.bugly.beta.global.d(11, baseFrag, java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(z2), java.lang.Long.valueOf(j));
                            TEMP_CAN_SHOW_UPGRADE_CHECKER.put(java.lang.Integer.valueOf(iHashCode), dVar2);
                        }
                        com.tencent.bugly.beta.utils.e.b(dVar2);
                        com.tencent.bugly.beta.utils.e.a(dVar2, j);
                        return;
                    }
                    com.tencent.bugly.beta.utils.e.b(TEMP_CAN_SHOW_UPGRADE_CHECKER.remove(java.lang.Integer.valueOf(iHashCode)));
                }
                if (!z2 && !com.tencent.bugly.crashreport.common.info.a.n().E()) {
                    com.tencent.bugly.beta.global.d dVar3 = TEMP_TOP_SHOW_CHECKER.get(java.lang.Integer.valueOf(iHashCode));
                    if (dVar3 == null) {
                        dVar3 = new com.tencent.bugly.beta.global.d(11, baseFrag, java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(z2), java.lang.Long.valueOf(j));
                        TEMP_TOP_SHOW_CHECKER.put(java.lang.Integer.valueOf(iHashCode), dVar3);
                    }
                    com.tencent.bugly.beta.utils.e.b(dVar3);
                    com.tencent.bugly.beta.utils.e.a(dVar3, j);
                    return;
                }
                com.tencent.bugly.beta.utils.e.b(TEMP_TOP_SHOW_CHECKER.remove(java.lang.Integer.valueOf(iHashCode)));
                com.tencent.bugly.beta.global.d dVar4 = new com.tencent.bugly.beta.global.d(17, TEMP_FRAG, java.lang.Integer.valueOf(iHashCode), baseFrag);
                d.j.d.l activity = baseFrag.getActivity();
                if (activity != null) {
                    if (activity instanceof com.tencent.bugly.beta.ui.BetaActivity) {
                        ((com.tencent.bugly.beta.ui.BetaActivity) activity).onDestroyRunnable = dVar4;
                    } else {
                        com.tencent.bugly.beta.utils.e.a(dVar4, 400L);
                    }
                    activity.finish();
                } else {
                    dVar4.run();
                }
            }
        }
    }
}
