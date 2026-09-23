package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerReport {
    public static final int KEY_APPLIED = 5;
    public static final int KEY_APPLIED_DEXOPT_EXIST = 122;
    public static final int KEY_APPLIED_DEXOPT_FORMAT = 123;
    public static final int KEY_APPLIED_DEXOPT_OTHER = 121;
    public static final int KEY_APPLIED_DEX_EXTRACT = 182;
    public static final int KEY_APPLIED_EXCEPTION = 120;
    public static final int KEY_APPLIED_FAIL_COST_10S_LESS = 206;
    public static final int KEY_APPLIED_FAIL_COST_30S_LESS = 207;
    public static final int KEY_APPLIED_FAIL_COST_5S_LESS = 205;
    public static final int KEY_APPLIED_FAIL_COST_60S_LESS = 208;
    public static final int KEY_APPLIED_FAIL_COST_OTHER = 209;
    public static final int KEY_APPLIED_INFO_CORRUPTED = 124;
    public static final int KEY_APPLIED_LIB_EXTRACT = 183;
    public static final int KEY_APPLIED_PACKAGE_CHECK_APK_TINKER_ID_NOT_FOUND = 153;
    public static final int KEY_APPLIED_PACKAGE_CHECK_DEX_META = 151;
    public static final int KEY_APPLIED_PACKAGE_CHECK_LIB_META = 152;
    public static final int KEY_APPLIED_PACKAGE_CHECK_META_NOT_FOUND = 155;
    public static final int KEY_APPLIED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND = 154;
    public static final int KEY_APPLIED_PACKAGE_CHECK_RES_META = 157;
    public static final int KEY_APPLIED_PACKAGE_CHECK_SIGNATURE = 150;
    public static final int KEY_APPLIED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT = 158;
    public static final int KEY_APPLIED_PACKAGE_CHECK_TINKER_ID_NOT_EQUAL = 156;
    public static final int KEY_APPLIED_PATCH_FILE_EXTRACT = 181;
    public static final int KEY_APPLIED_RESOURCE_EXTRACT = 184;
    public static final int KEY_APPLIED_START = 4;
    public static final int KEY_APPLIED_SUCC_COST_10S_LESS = 201;
    public static final int KEY_APPLIED_SUCC_COST_30S_LESS = 202;
    public static final int KEY_APPLIED_SUCC_COST_5S_LESS = 200;
    public static final int KEY_APPLIED_SUCC_COST_60S_LESS = 203;
    public static final int KEY_APPLIED_SUCC_COST_OTHER = 204;
    public static final int KEY_APPLIED_UPGRADE = 100;
    public static final int KEY_APPLIED_UPGRADE_FAIL = 101;
    public static final int KEY_APPLIED_VERSION_CHECK = 180;
    public static final int KEY_APPLY_WITH_RETRY = 10;
    public static final int KEY_CRASH_CAUSE_XPOSED_ART = 9;
    public static final int KEY_CRASH_CAUSE_XPOSED_DALVIK = 8;
    public static final int KEY_CRASH_FAST_PROTECT = 7;
    public static final int KEY_DOWNLOAD = 1;
    public static final int KEY_LOADED = 6;
    public static final int KEY_LOADED_EXCEPTION_DEX = 252;
    public static final int KEY_LOADED_EXCEPTION_DEX_CHECK = 253;
    public static final int KEY_LOADED_EXCEPTION_RESOURCE = 254;
    public static final int KEY_LOADED_EXCEPTION_RESOURCE_CHECK = 255;
    public static final int KEY_LOADED_INFO_CORRUPTED = 309;
    public static final int KEY_LOADED_INTERPRET_GET_INSTRUCTION_SET_ERROR = 450;
    public static final int KEY_LOADED_INTERPRET_INTERPRET_COMMAND_ERROR = 451;
    public static final int KEY_LOADED_INTERPRET_TYPE_INTERPRET_OK = 452;
    public static final int KEY_LOADED_MISMATCH_DEX = 300;
    public static final int KEY_LOADED_MISMATCH_LIB = 301;
    public static final int KEY_LOADED_MISMATCH_RESOURCE = 302;
    public static final int KEY_LOADED_MISSING_DEX = 303;
    public static final int KEY_LOADED_MISSING_DEX_OPT = 307;
    public static final int KEY_LOADED_MISSING_LIB = 304;
    public static final int KEY_LOADED_MISSING_PATCH_FILE = 305;
    public static final int KEY_LOADED_MISSING_PATCH_INFO = 306;
    public static final int KEY_LOADED_MISSING_RES = 308;
    public static final int KEY_LOADED_PACKAGE_CHECK_APK_TINKER_ID_NOT_FOUND = 353;
    public static final int KEY_LOADED_PACKAGE_CHECK_DEX_META = 351;
    public static final int KEY_LOADED_PACKAGE_CHECK_LIB_META = 352;
    public static final int KEY_LOADED_PACKAGE_CHECK_PACKAGE_META_NOT_FOUND = 356;
    public static final int KEY_LOADED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND = 354;
    public static final int KEY_LOADED_PACKAGE_CHECK_RES_META = 357;
    public static final int KEY_LOADED_PACKAGE_CHECK_SIGNATURE = 350;
    public static final int KEY_LOADED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT = 358;
    public static final int KEY_LOADED_PACKAGE_CHECK_TINKER_ID_NOT_EQUAL = 355;
    public static final int KEY_LOADED_SUCC_COST_1000_LESS = 401;
    public static final int KEY_LOADED_SUCC_COST_3000_LESS = 402;
    public static final int KEY_LOADED_SUCC_COST_5000_LESS = 403;
    public static final int KEY_LOADED_SUCC_COST_500_LESS = 400;
    public static final int KEY_LOADED_SUCC_COST_OTHER = 404;
    public static final int KEY_LOADED_UNCAUGHT_EXCEPTION = 251;
    public static final int KEY_LOADED_UNKNOWN_EXCEPTION = 250;
    public static final int KEY_REQUEST = 0;
    public static final int KEY_TRY_APPLY = 2;
    public static final int KEY_TRY_APPLY_ALREADY_APPLY = 77;
    public static final int KEY_TRY_APPLY_CONDITION_NOT_SATISFIED = 80;
    public static final int KEY_TRY_APPLY_CRASH_LIMIT = 79;
    public static final int KEY_TRY_APPLY_DISABLE = 71;
    public static final int KEY_TRY_APPLY_GOOGLEPLAY = 75;
    public static final int KEY_TRY_APPLY_INSERVICE = 73;
    public static final int KEY_TRY_APPLY_JIT = 81;
    public static final int KEY_TRY_APPLY_MEMORY_LIMIT = 78;
    public static final int KEY_TRY_APPLY_NOT_EXIST = 74;
    public static final int KEY_TRY_APPLY_ROM_SPACE = 76;
    public static final int KEY_TRY_APPLY_RUNNING = 72;
    public static final int KEY_TRY_APPLY_SUCCESS = 3;
    public static final int KEY_TRY_APPLY_UPGRADE = 70;
    public static final java.lang.String TAG = "Tinker.TinkerReport";
    public static com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter;

    public interface Reporter {
        void onReport(int i);

        void onReport(java.lang.String str);
    }

    public static void onApplied(long j, boolean z) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        int i;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter3 = reporter;
        if (reporter3 == null) {
            return;
        }
        if (z) {
            reporter3.onReport(5);
        }
        reporter.onReport(z ? 100 : 101);
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "hp_report report apply cost = %d", java.lang.Long.valueOf(j));
        if (j < 0) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "hp_report report apply cost failed, invalid cost", new java.lang.Object[0]);
            return;
        }
        if (j <= 5000) {
            reporter2 = reporter;
            i = z ? 200 : 205;
        } else if (j <= 10000) {
            reporter2 = reporter;
            i = z ? 201 : 206;
        } else if (j <= 30000) {
            reporter2 = reporter;
            i = z ? 202 : 207;
        } else {
            reporter2 = reporter;
            i = j <= 60000 ? z ? 203 : 208 : z ? 204 : 209;
        }
        reporter2.onReport(i);
    }

    public static void onApplyCrash(java.lang.Throwable th) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(120);
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter3 = reporter;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Tinker Exception:apply tinker occur exception ");
        sbO.append(com.tencent.bugly.beta.tinker.TinkerUtils.getExceptionCauseString(th));
        reporter3.onReport(sbO.toString());
    }

    public static void onApplyDexOptFail(java.lang.Throwable th) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        int i;
        if (reporter == null) {
            return;
        }
        if (th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_EXIST_FAIL)) {
            reporter2 = reporter;
            i = 122;
        } else {
            if (!th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_FORMAT_FAIL)) {
                reporter.onReport(121);
                com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter3 = reporter;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Tinker Exception:apply tinker occur exception ");
                sbO.append(com.tencent.bugly.beta.tinker.TinkerUtils.getExceptionCauseString(th));
                reporter3.onReport(sbO.toString());
                return;
            }
            reporter2 = reporter;
            i = 123;
        }
        reporter2.onReport(i);
    }

    public static void onApplyExtractFail(int i) {
        int i2;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        if (i == 1) {
            i2 = 181;
        } else if (i == 3) {
            i2 = 182;
        } else if (i == 5) {
            i2 = 183;
        } else if (i != 6) {
            return;
        } else {
            i2 = 184;
        }
        reporter2.onReport(i2);
    }

    public static void onApplyInfoCorrupted() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(124);
    }

    public static void onApplyPackageCheckFail(int i) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        int i2;
        if (reporter == null) {
            return;
        }
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "hp_report package check failed, error = %d", java.lang.Integer.valueOf(i));
        switch (i) {
            case -9:
                reporter2 = reporter;
                i2 = 158;
                break;
            case -8:
                reporter2 = reporter;
                i2 = 157;
                break;
            case -7:
                reporter2 = reporter;
                i2 = 156;
                break;
            case -6:
                reporter2 = reporter;
                i2 = 154;
                break;
            case -5:
                reporter2 = reporter;
                i2 = 153;
                break;
            case -4:
                reporter2 = reporter;
                i2 = 152;
                break;
            case -3:
                reporter2 = reporter;
                i2 = 151;
                break;
            case -2:
                reporter2 = reporter;
                i2 = 155;
                break;
            case -1:
                reporter2 = reporter;
                i2 = 150;
                break;
            default:
                return;
        }
        reporter2.onReport(i2);
    }

    public static void onApplyPatchServiceStart() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(4);
    }

    public static void onApplyVersionCheckFail() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(180);
    }

    public static void onFastCrashProtect() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(7);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void onLoadException(java.lang.Throwable r5, int r6) {
        /*
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r0 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            if (r0 != 0) goto L5
            return
        L5:
            r1 = -4
            r2 = 1
            r3 = 0
            if (r6 == r1) goto Lbc
            r1 = -3
            java.lang.String r4 = "Tinker.TinkerReport"
            if (r6 == r1) goto L6c
            r1 = -2
            if (r6 == r1) goto L1b
            r1 = -1
            if (r6 == r1) goto L17
            goto Lc1
        L17:
            r6 = 250(0xfa, float:3.5E-43)
            goto Lbe
        L1b:
            java.lang.String r6 = r5.getMessage()
            java.lang.String r0 = "checkDexInstall failed"
            boolean r6 = r6.contains(r0)
            if (r6 == 0) goto L4a
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r6 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            r0 = 253(0xfd, float:3.55E-43)
            r6.onReport(r0)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "tinker dex check fail:"
            r6.append(r0)
            java.lang.String r0 = r5.getMessage()
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r0 = new java.lang.Object[r3]
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r6, r0)
            goto Lc2
        L4a:
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r6 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            r0 = 252(0xfc, float:3.53E-43)
            r6.onReport(r0)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "tinker dex reflect fail:"
            r6.append(r0)
            java.lang.String r0 = r5.getMessage()
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r0 = new java.lang.Object[r3]
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r6, r0)
            goto Lc1
        L6c:
            java.lang.String r6 = r5.getMessage()
            java.lang.String r0 = "checkResInstall failed"
            boolean r6 = r6.contains(r0)
            if (r6 == 0) goto L9a
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r6 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            r0 = 255(0xff, float:3.57E-43)
            r6.onReport(r0)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "tinker res check fail:"
            r6.append(r0)
            java.lang.String r0 = r5.getMessage()
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r0 = new java.lang.Object[r3]
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r6, r0)
            goto Lc2
        L9a:
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r6 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            r0 = 254(0xfe, float:3.56E-43)
            r6.onReport(r0)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "tinker res reflect fail:"
            r6.append(r0)
            java.lang.String r0 = r5.getMessage()
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r0 = new java.lang.Object[r3]
            com.tencent.tinker.lib.util.TinkerLog.e(r4, r6, r0)
            goto Lc1
        Lbc:
            r6 = 251(0xfb, float:3.52E-43)
        Lbe:
            r0.onReport(r6)
        Lc1:
            r2 = 0
        Lc2:
            if (r2 != 0) goto Lda
            com.tencent.bugly.beta.tinker.TinkerReport$Reporter r6 = com.tencent.bugly.beta.tinker.TinkerReport.reporter
            java.lang.String r0 = "Tinker Exception:load tinker occur exception "
            java.lang.StringBuilder r0 = e.a.c.a.a.o(r0)
            java.lang.String r5 = com.tencent.bugly.beta.tinker.TinkerUtils.getExceptionCauseString(r5)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r6.onReport(r5)
        Lda:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.tinker.TinkerReport.onLoadException(java.lang.Throwable, int):void");
    }

    public static void onLoadFileMisMatch(int i) {
        int i2;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        if (i == 3) {
            i2 = KEY_LOADED_MISMATCH_DEX;
        } else if (i == 5) {
            i2 = KEY_LOADED_MISMATCH_LIB;
        } else if (i != 6) {
            return;
        } else {
            i2 = KEY_LOADED_MISMATCH_RESOURCE;
        }
        reporter2.onReport(i2);
    }

    public static void onLoadFileNotFound(int i) {
        int i2;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        switch (i) {
            case 1:
                i2 = KEY_LOADED_MISSING_PATCH_FILE;
                break;
            case 2:
                i2 = KEY_LOADED_MISSING_PATCH_INFO;
                break;
            case 3:
                i2 = KEY_LOADED_MISSING_DEX;
                break;
            case 4:
                i2 = 307;
                break;
            case 5:
                i2 = KEY_LOADED_MISSING_LIB;
                break;
            case 6:
                i2 = 308;
                break;
            default:
                return;
        }
        reporter2.onReport(i2);
    }

    public static void onLoadInfoCorrupted() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(KEY_LOADED_INFO_CORRUPTED);
    }

    public static void onLoadInterpretReport(int i, java.lang.Throwable th) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        java.lang.StringBuilder sb;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter3 = reporter;
        if (reporter3 == null) {
            return;
        }
        if (i == 0) {
            reporter3.onReport(KEY_LOADED_INTERPRET_TYPE_INTERPRET_OK);
            return;
        }
        if (i == 1) {
            reporter3.onReport(KEY_LOADED_INTERPRET_GET_INSTRUCTION_SET_ERROR);
            reporter2 = reporter;
            sb = new java.lang.StringBuilder();
        } else {
            if (i != 2) {
                return;
            }
            reporter3.onReport(KEY_LOADED_INTERPRET_INTERPRET_COMMAND_ERROR);
            reporter2 = reporter;
            sb = new java.lang.StringBuilder();
        }
        sb.append("Tinker Exception:interpret occur exception ");
        sb.append(com.tencent.bugly.beta.tinker.TinkerUtils.getExceptionCauseString(th));
        reporter2.onReport(sb.toString());
    }

    public static void onLoadPackageCheckFail(int i) {
        int i2;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        switch (i) {
            case -9:
                i2 = KEY_LOADED_PACKAGE_CHECK_TINKERFLAG_NOT_SUPPORT;
                break;
            case -8:
                i2 = KEY_LOADED_PACKAGE_CHECK_RES_META;
                break;
            case -7:
                i2 = KEY_LOADED_PACKAGE_CHECK_TINKER_ID_NOT_EQUAL;
                break;
            case -6:
                i2 = KEY_LOADED_PACKAGE_CHECK_PATCH_TINKER_ID_NOT_FOUND;
                break;
            case -5:
                i2 = KEY_LOADED_PACKAGE_CHECK_APK_TINKER_ID_NOT_FOUND;
                break;
            case -4:
                i2 = KEY_LOADED_PACKAGE_CHECK_LIB_META;
                break;
            case -3:
                i2 = KEY_LOADED_PACKAGE_CHECK_DEX_META;
                break;
            case -2:
                i2 = KEY_LOADED_PACKAGE_CHECK_PACKAGE_META_NOT_FOUND;
                break;
            case -1:
                i2 = KEY_LOADED_PACKAGE_CHECK_SIGNATURE;
                break;
            default:
                return;
        }
        reporter2.onReport(i2);
    }

    public static void onLoaded(long j) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        int i;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter3 = reporter;
        if (reporter3 == null) {
            return;
        }
        reporter3.onReport(6);
        if (j < 0) {
            com.tencent.tinker.lib.util.TinkerLog.e(TAG, "hp_report report load cost failed, invalid cost", new java.lang.Object[0]);
            return;
        }
        if (j <= 500) {
            reporter2 = reporter;
            i = 400;
        } else if (j <= 1000) {
            reporter2 = reporter;
            i = KEY_LOADED_SUCC_COST_1000_LESS;
        } else if (j <= com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS) {
            reporter2 = reporter;
            i = KEY_LOADED_SUCC_COST_3000_LESS;
        } else {
            reporter2 = reporter;
            i = j <= 5000 ? KEY_LOADED_SUCC_COST_5000_LESS : KEY_LOADED_SUCC_COST_OTHER;
        }
        reporter2.onReport(i);
    }

    public static void onReportRetryPatch() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(10);
    }

    public static void onTryApply(boolean z) {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        reporter2.onReport(2);
        reporter.onReport(70);
        if (z) {
            reporter.onReport(3);
        }
    }

    public static void onTryApplyFail(int i) {
        int i2;
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2 = reporter;
        if (reporter2 == null) {
            return;
        }
        switch (i) {
            case -24:
                i2 = 80;
                break;
            case -23:
                i2 = 79;
                break;
            case -22:
                i2 = 78;
                break;
            case -21:
                i2 = 76;
                break;
            case -20:
                i2 = 75;
                break;
            default:
                switch (i) {
                    case -6:
                        i2 = 77;
                        break;
                    case -5:
                        i2 = 81;
                        break;
                    case -4:
                        i2 = 73;
                        break;
                    case -3:
                        i2 = 72;
                        break;
                    case -2:
                        i2 = 74;
                        break;
                    case -1:
                        i2 = 71;
                        break;
                    default:
                        return;
                }
        }
        reporter2.onReport(i2);
    }

    public static void onXposedCrash() {
        com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2;
        int i;
        if (reporter == null) {
            return;
        }
        if (com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isVmArt()) {
            reporter2 = reporter;
            i = 9;
        } else {
            reporter2 = reporter;
            i = 8;
        }
        reporter2.onReport(i);
    }

    public void setReporter(com.tencent.bugly.beta.tinker.TinkerReport.Reporter reporter2) {
        reporter = reporter2;
    }
}
