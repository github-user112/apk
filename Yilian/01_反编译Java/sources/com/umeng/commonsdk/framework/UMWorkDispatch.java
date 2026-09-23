package com.umeng.commonsdk.framework;

/* loaded from: classes.dex */
public class UMWorkDispatch {
    public static final java.lang.String GENERAL_CONTENT = "content";
    public static final java.lang.String GENERAL_HEADER = "header";
    public static final java.lang.String KEY_EXCEPTION = "exception";
    public static final int MSG_AUTO_PROCESS = 769;
    public static final int MSG_CHECKER_TIMER = 771;
    public static final int MSG_DELAY_PROCESS = 770;
    public static final int MSG_QUIT = 784;
    public static final int MSG_SEND_EVENT = 768;
    public static android.os.HandlerThread mNetTask;
    public static com.umeng.commonsdk.framework.a mSender;
    public static java.lang.Object mSenderInitLock = new java.lang.Object();
    public static android.os.Handler mTaskHandler;

    public static void Quit() {
        android.os.Handler handler = mTaskHandler;
        if (handler != null) {
            android.os.Message messageObtainMessage = handler.obtainMessage();
            messageObtainMessage.what = MSG_QUIT;
            mTaskHandler.sendMessage(messageObtainMessage);
        }
    }

    public static void delayProcess() {
        org.json.JSONObject jSONObjectBuildEnvelopeWithExtHeader;
        com.umeng.commonsdk.statistics.common.ULog.d("--->>> delayProcess Enter...");
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> delayProcess Enter...");
        android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
        if (appContext == null || !com.umeng.commonsdk.framework.UMFrUtils.isOnline(appContext)) {
            return;
        }
        long jMaxDataSpace = com.umeng.commonsdk.framework.UMEnvelopeBuild.maxDataSpace(appContext);
        com.umeng.commonsdk.framework.UMLogDataProtocol callbackFromModuleName = com.umeng.commonsdk.framework.UMModuleRegister.getCallbackFromModuleName("analytics");
        org.json.JSONObject jSONObject = null;
        if (callbackFromModuleName != null) {
            try {
                jSONObject = callbackFromModuleName.setupReportData(jMaxDataSpace);
                if (jSONObject == null) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> analyticsCB.setupReportData() return null");
                    return;
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, th);
                return;
            }
        }
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        org.json.JSONObject jSONObject2 = (org.json.JSONObject) jSONObject.opt("header");
        org.json.JSONObject jSONObject3 = (org.json.JSONObject) jSONObject.opt("content");
        if (jSONObject2 == null || jSONObject3 == null || (jSONObjectBuildEnvelopeWithExtHeader = com.umeng.commonsdk.framework.UMEnvelopeBuild.buildEnvelopeWithExtHeader(appContext, jSONObject2, jSONObject3)) == null) {
            return;
        }
        try {
            if (jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> autoProcess: Build envelope error code: " + jSONObjectBuildEnvelopeWithExtHeader.getInt("exception"));
            }
        } catch (java.lang.Throwable unused) {
        }
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> autoProcess: removeCacheData ... ");
        callbackFromModuleName.removeCacheData(jSONObjectBuildEnvelopeWithExtHeader);
    }

    public static synchronized boolean eventHasExist() {
        if (mTaskHandler == null) {
            return false;
        }
        return mTaskHandler.hasMessages(MSG_CHECKER_TIMER);
    }

    public static synchronized boolean eventHasExist(int i) {
        if (mTaskHandler == null) {
            return false;
        }
        return mTaskHandler.hasMessages(i);
    }

    public static void handleEvent(android.os.Message message) {
        int i = message.arg1;
        java.lang.Object obj = message.obj;
        com.umeng.commonsdk.framework.UMLogDataProtocol callbackFromModuleName = com.umeng.commonsdk.framework.UMModuleRegister.getCallbackFromModuleName(com.umeng.commonsdk.framework.UMModuleRegister.eventType2ModuleName(i));
        if (callbackFromModuleName != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x");
            sbO.append(java.lang.Integer.toHexString(i));
            sbO.append("]");
            com.umeng.commonsdk.statistics.common.ULog.d(sbO.toString());
            callbackFromModuleName.workEvent(obj, i);
        }
    }

    public static void handleQuit() {
        if (mSender == null || mNetTask == null) {
            return;
        }
        com.umeng.commonsdk.framework.a.c();
        com.umeng.commonsdk.statistics.common.ULog.d("--->>> handleQuit: Quit dispatch thread.");
        mNetTask.quit();
        teardown();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:13:0x0032, B:12:0x002b, B:5:0x0008, B:7:0x000c, B:9:0x001c), top: B:19:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void init() {
        /*
            java.lang.Class<com.umeng.commonsdk.framework.UMWorkDispatch> r0 = com.umeng.commonsdk.framework.UMWorkDispatch.class
            monitor-enter(r0)
            java.lang.String r1 = "--->>> Dispatch: init Enter..."
            com.umeng.commonsdk.statistics.common.ULog.d(r1)     // Catch: java.lang.Throwable -> L39
            android.os.HandlerThread r1 = com.umeng.commonsdk.framework.UMWorkDispatch.mNetTask     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L32
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> L2a
            java.lang.String r2 = "work_thread"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L2a
            com.umeng.commonsdk.framework.UMWorkDispatch.mNetTask = r1     // Catch: java.lang.Throwable -> L2a
            r1.start()     // Catch: java.lang.Throwable -> L2a
            android.os.Handler r1 = com.umeng.commonsdk.framework.UMWorkDispatch.mTaskHandler     // Catch: java.lang.Throwable -> L2a
            if (r1 != 0) goto L32
            com.umeng.commonsdk.framework.UMWorkDispatch$1 r1 = new com.umeng.commonsdk.framework.UMWorkDispatch$1     // Catch: java.lang.Throwable -> L2a
            android.os.HandlerThread r2 = com.umeng.commonsdk.framework.UMWorkDispatch.mNetTask     // Catch: java.lang.Throwable -> L2a
            android.os.Looper r2 = r2.getLooper()     // Catch: java.lang.Throwable -> L2a
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L2a
            com.umeng.commonsdk.framework.UMWorkDispatch.mTaskHandler = r1     // Catch: java.lang.Throwable -> L2a
            goto L32
        L2a:
            r1 = move-exception
            android.content.Context r2 = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext()     // Catch: java.lang.Throwable -> L39
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r2, r1)     // Catch: java.lang.Throwable -> L39
        L32:
            java.lang.String r1 = "--->>> Dispatch: init Exit..."
            com.umeng.commonsdk.statistics.common.ULog.d(r1)     // Catch: java.lang.Throwable -> L39
            monitor-exit(r0)
            return
        L39:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.framework.UMWorkDispatch.init():void");
    }

    public static void registerConnStateObserver(com.umeng.commonsdk.framework.UMSenderStateNotify uMSenderStateNotify) {
        if (mSender != null) {
            com.umeng.commonsdk.framework.a.a(uMSenderStateNotify);
        }
    }

    public static synchronized void removeEvent() {
        if (mTaskHandler == null) {
            return;
        }
        mTaskHandler.removeMessages(MSG_CHECKER_TIMER);
    }

    public static void sendDelayProcessMsg(long j) {
        android.os.Handler handler = mTaskHandler;
        if (handler != null) {
            if (handler.hasMessages(MSG_DELAY_PROCESS)) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> MSG_DELAY_PROCESS has exist. do nothing.");
                return;
            }
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> MSG_DELAY_PROCESS not exist. send it.");
            android.os.Message messageObtainMessage = mTaskHandler.obtainMessage();
            messageObtainMessage.what = MSG_DELAY_PROCESS;
            mTaskHandler.sendMessageDelayed(messageObtainMessage, j);
        }
    }

    public static void sendEvent(android.content.Context context, int i, com.umeng.commonsdk.framework.UMLogDataProtocol uMLogDataProtocol, java.lang.Object obj) {
        sendEventInternal(context, 768, i, uMLogDataProtocol, obj, 0L);
    }

    public static void sendEvent(android.content.Context context, int i, com.umeng.commonsdk.framework.UMLogDataProtocol uMLogDataProtocol, java.lang.Object obj, long j) {
        sendEventInternal(context, 768, i, uMLogDataProtocol, obj, j);
    }

    public static void sendEventEx(android.content.Context context, int i, com.umeng.commonsdk.framework.UMLogDataProtocol uMLogDataProtocol, java.lang.Object obj, long j) {
        sendEventInternal(context, MSG_CHECKER_TIMER, i, uMLogDataProtocol, obj, j);
    }

    public static void sendEventInternal(android.content.Context context, int i, int i2, com.umeng.commonsdk.framework.UMLogDataProtocol uMLogDataProtocol, java.lang.Object obj, long j) {
        if (context == null || uMLogDataProtocol == null) {
            com.umeng.commonsdk.statistics.common.ULog.d("--->>> Context or UMLogDataProtocol parameter cannot be null!");
            return;
        }
        com.umeng.commonsdk.framework.UMModuleRegister.registerAppContext(context.getApplicationContext());
        if (com.umeng.commonsdk.framework.UMModuleRegister.registerCallback(i2, uMLogDataProtocol)) {
            if (mNetTask == null || mTaskHandler == null) {
                init();
            }
            try {
                if (mTaskHandler != null) {
                    if (com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
                        synchronized (mSenderInitLock) {
                            if (mSender == null) {
                                com.umeng.commonsdk.framework.UMFrUtils.syncLegacyEnvelopeIfNeeded(context);
                                mSender = new com.umeng.commonsdk.framework.a(context, mTaskHandler);
                            }
                        }
                    }
                    android.os.Message messageObtainMessage = mTaskHandler.obtainMessage();
                    messageObtainMessage.what = i;
                    messageObtainMessage.arg1 = i2;
                    messageObtainMessage.obj = obj;
                    mTaskHandler.sendMessageDelayed(messageObtainMessage, j);
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(com.umeng.commonsdk.framework.UMModuleRegister.getAppContext(), th);
            }
        }
    }

    public static void teardown() {
        if (mNetTask != null) {
            mNetTask = null;
        }
        if (mTaskHandler != null) {
            mTaskHandler = null;
        }
        if (mSender != null) {
            mSender = null;
        }
    }
}
