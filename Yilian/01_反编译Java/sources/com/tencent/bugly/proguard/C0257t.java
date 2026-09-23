package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0257t {

    /* renamed from: com.tencent.bugly.proguard.t$a */
    public static class a implements com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener {
        public final /* synthetic */ com.tencent.bugly.beta.global.e a;

        public a(com.tencent.bugly.beta.global.e eVar) {
            this.a = eVar;
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onApplyFailure(java.lang.String str) {
            this.a.P = false;
            com.tencent.bugly.beta.global.a.b("PatchResult", false);
            com.tencent.bugly.beta.global.a.b("IS_PATCHING", false);
            com.tencent.bugly.proguard.aa.c("Tinker patch failure, result: " + str, new java.lang.Object[0]);
            com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = this.a.Y;
            if (betaPatchListener != null) {
                betaPatchListener.onApplyFailure(str);
            }
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onApplySuccess(java.lang.String str) {
            com.tencent.bugly.beta.global.e eVar = this.a;
            eVar.ea = false;
            eVar.P = true;
            com.tencent.bugly.beta.global.a.b("IS_PATCHING", false);
            com.tencent.bugly.beta.global.a.b("PatchResult", true);
            com.tencent.bugly.proguard.aa.c("Tinker patch success, result: " + str, new java.lang.Object[0]);
            if (this.a.Z) {
                com.tencent.bugly.beta.ui.UiManager.show(new com.tencent.bugly.beta.ui.HotfixDialog(), true);
            }
            com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = this.a.Y;
            if (betaPatchListener != null) {
                betaPatchListener.onApplySuccess(str);
            }
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onDownloadFailure(java.lang.String str) {
            com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = this.a.Y;
            if (betaPatchListener != null) {
                betaPatchListener.onDownloadFailure(str);
            }
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onDownloadSuccess(java.lang.String str) {
            com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = this.a.Y;
            if (betaPatchListener != null) {
                betaPatchListener.onDownloadSuccess(str);
            }
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onPatchRollback() {
            com.tencent.bugly.proguard.aa.c("patch rollback callback.", new java.lang.Object[0]);
            com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = this.a.Y;
            if (betaPatchListener != null) {
                betaPatchListener.onPatchRollback();
            }
            if (com.tencent.bugly.beta.tinker.TinkerManager.getInstance().getPatchDirectory(this.a.v) == null || com.tencent.bugly.beta.tinker.TinkerManager.getInstance().getPatchDirectory(this.a.v).exists()) {
                return;
            }
            com.tencent.bugly.beta.global.a.b("IS_PATCH_ROLL_BACK", false);
        }

        @Override // com.tencent.bugly.beta.tinker.TinkerManager.TinkerListener
        public void onPatchStart() {
            this.a.ea = true;
            com.tencent.bugly.beta.global.a.b("IS_PATCHING", true);
        }
    }

    public static synchronized void a(android.content.Context context) {
        java.lang.String str;
        java.io.File[] fileArrListFiles;
        java.lang.String strA;
        com.tencent.bugly.proguard.B b;
        com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
        java.lang.String absolutePath = context.getDir("dex", 0).getAbsolutePath();
        java.lang.String absolutePath2 = context.getDir("tmpPatch", 32768).getAbsolutePath();
        eVar.I = new java.io.File(absolutePath, "patch.apk");
        if (android.text.TextUtils.isEmpty(com.tencent.bugly.beta.global.a.a("PatchFile", ""))) {
            com.tencent.bugly.beta.global.a.b("PatchFile", eVar.I.getAbsolutePath());
        }
        eVar.J = new java.io.File(absolutePath2, "tmpPatch.apk");
        if (eVar.I != null && android.text.TextUtils.isEmpty(com.tencent.bugly.beta.global.a.a("PatchFile", ""))) {
            com.tencent.bugly.beta.global.a.b("PatchFile", eVar.I.getAbsolutePath());
        }
        java.io.File dir = context.getDir("tmpPatch", 0);
        eVar.K = dir;
        if (dir != null && android.text.TextUtils.isEmpty(com.tencent.bugly.beta.global.a.a("PatchTmpDir", ""))) {
            com.tencent.bugly.beta.global.a.b("PatchTmpDir", eVar.I.getAbsolutePath());
        }
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("hotfix.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
        if (betaGrayStrategy == null || (b = betaGrayStrategy.a) == null || b.u != 3) {
            if (com.tencent.bugly.beta.tinker.TinkerManager.getInstance().getPatchDirectory(eVar.v) != null && !com.tencent.bugly.beta.tinker.TinkerManager.getInstance().getPatchDirectory(eVar.v).exists()) {
                com.tencent.bugly.beta.global.a.b("IS_PATCH_ROLL_BACK", false);
            }
            if (com.tencent.bugly.beta.global.a.a("IS_PATCH_ROLL_BACK", false)) {
                com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onPatchRollback(false);
            }
        } else {
            java.util.Map<java.lang.String, java.lang.String> map = b.q;
            if (map != null) {
                eVar.O = map.get("H2");
            }
            eVar.P = com.tencent.bugly.beta.global.a.a("PatchResult", false);
            eVar.Q = java.lang.Integer.valueOf(com.tencent.bugly.beta.global.a.a("PATCH_MAX_TIMES", "0")).intValue();
            if (eVar.P) {
                com.tencent.bugly.proguard.aa.c("[patch] inject success", new java.lang.Object[0]);
                if (!com.tencent.bugly.beta.global.a.a("UPLOAD_PATCH_RESULT", false)) {
                    com.tencent.bugly.beta.global.a.b("UPLOAD_PATCH_RESULT", true);
                    com.tencent.bugly.proguard.C0256p c0256p = com.tencent.bugly.proguard.C0256p.a;
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                    com.tencent.bugly.proguard.B b2 = betaGrayStrategy.a;
                    if (c0256p.a(new com.tencent.bugly.proguard.C0260z("active", jCurrentTimeMillis, (byte) 0, 0L, null, b2.r, b2.u, null))) {
                        com.tencent.bugly.proguard.aa.c("save patch success event success!", new java.lang.Object[0]);
                    } else {
                        com.tencent.bugly.proguard.aa.b("save patch success event failed!", new java.lang.Object[0]);
                    }
                }
            } else {
                com.tencent.bugly.proguard.aa.c("[patch] inject failure", new java.lang.Object[0]);
                if (!com.tencent.bugly.beta.global.a.a("UPLOAD_PATCH_RESULT", false)) {
                    com.tencent.bugly.beta.global.a.b("UPLOAD_PATCH_RESULT", true);
                    com.tencent.bugly.proguard.C0256p c0256p2 = com.tencent.bugly.proguard.C0256p.a;
                    long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                    com.tencent.bugly.proguard.B b3 = betaGrayStrategy.a;
                    if (c0256p2.a(new com.tencent.bugly.proguard.C0260z("active", jCurrentTimeMillis2, (byte) 1, 0L, null, b3.r, b3.u, null))) {
                        com.tencent.bugly.proguard.aa.c("save patch failed event success!", new java.lang.Object[0]);
                    } else {
                        com.tencent.bugly.proguard.aa.b("save patch failed event failed!", new java.lang.Object[0]);
                    }
                }
            }
        }
        if (android.text.TextUtils.isEmpty(com.tencent.bugly.beta.tinker.TinkerManager.getNewTinkerId())) {
            com.tencent.bugly.proguard.aa.e("[patch] tinker new id is null ,so patch version is invalid", new java.lang.Object[0]);
            eVar.O = "";
        }
        com.tencent.bugly.proguard.ha.c("G15", eVar.O);
        java.io.File file = com.tencent.bugly.beta.global.e.b.J;
        if (file != null && file.exists() && file.delete()) {
            com.tencent.bugly.proguard.aa.c("[patch] delete tmpPatch.apk success", new java.lang.Object[0]);
        }
        java.io.File file2 = com.tencent.bugly.beta.global.e.b.I;
        if (file2 != null && file2.exists() && (strA = com.tencent.bugly.proguard.ha.a(file2, "SHA")) != null) {
            com.tencent.bugly.beta.global.e.b.N = strA;
        }
        if (com.tencent.bugly.beta.tinker.TinkerManager.isTinkerManagerInstalled()) {
            if (android.text.TextUtils.isEmpty(eVar.L)) {
                eVar.L = com.tencent.bugly.beta.tinker.TinkerManager.getTinkerId();
            }
            com.tencent.bugly.proguard.aa.c("TINKER_ID:" + eVar.L, new java.lang.Object[0]);
            eVar.M = com.tencent.bugly.beta.tinker.TinkerManager.getNewTinkerId();
            com.tencent.bugly.proguard.aa.c("NEW_TINKER_ID:" + eVar.M, new java.lang.Object[0]);
            com.tencent.bugly.beta.tinker.TinkerManager.getInstance().setTinkerListener(new com.tencent.bugly.proguard.C0257t.a(eVar));
        }
        if (android.text.TextUtils.isEmpty(com.tencent.bugly.beta.global.a.a("BaseArchName", "")) && (str = eVar.v.getApplicationInfo().nativeLibraryDir) != null && (fileArrListFiles = new java.io.File(str).listFiles()) != null && fileArrListFiles.length > 0) {
            boolean z = false;
            for (java.io.File file3 : fileArrListFiles) {
                if (file3.getName().endsWith(".so")) {
                    java.lang.String strReplace = file3.getName().replace(".so", "");
                    if (strReplace.startsWith("lib")) {
                        strReplace = strReplace.substring(strReplace.indexOf("lib") + 3);
                    }
                    com.tencent.bugly.proguard.aa.c("libName:" + strReplace, new java.lang.Object[0]);
                    java.lang.String absolutePath3 = file3.getAbsolutePath();
                    com.tencent.bugly.proguard.aa.c("soFilePath:" + absolutePath3, new java.lang.Object[0]);
                    java.util.Iterator<java.lang.String> it = eVar.ca.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (strReplace.equals(it.next())) {
                                z = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (!z) {
                        java.lang.String strB = com.tencent.bugly.beta.global.a.b(absolutePath3);
                        com.tencent.bugly.proguard.aa.c("archName:" + strB, new java.lang.Object[0]);
                        if (strB != null && strB.equals("armeabi-v5te")) {
                            strB = "armeabi";
                        }
                        com.tencent.bugly.beta.global.a.b(strReplace, strB);
                        if (android.text.TextUtils.isEmpty(com.tencent.bugly.beta.global.a.a("BaseArchName", ""))) {
                            com.tencent.bugly.beta.global.a.b("BaseArchName", strB);
                        }
                        z = false;
                    }
                }
            }
        }
    }
}
