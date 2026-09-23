package com.tencent.tinker.loader.shareutil;

@com.tencent.tinker.anno.Keep
/* loaded from: classes.dex */
public final class TinkerLogInlineFence extends android.os.Handler {
    public static final java.lang.String TAG = "Tinker.TinkerLogInlineFence";
    public static final android.os.Handler mainThreadHandler = new android.os.Handler(android.os.Looper.getMainLooper());
    public static final java.util.List<java.lang.Object[]> pendingLogs = new java.util.ArrayList();

    public static void dummyThrowExceptionMethod() {
        if (com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.class.isPrimitive()) {
            throw new java.lang.RuntimeException();
        }
    }

    private void handleMessageImpl(android.os.Message message) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp defaultImpl = com.tencent.tinker.loader.shareutil.ShareTinkerLog.getDefaultImpl();
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp impl = com.tencent.tinker.loader.shareutil.ShareTinkerLog.getImpl();
        int i = message.what;
        if (i == 2) {
            java.lang.Object[] objArr = (java.lang.Object[]) message.obj;
            if (impl != null) {
                impl.v((java.lang.String) objArr[2], (java.lang.String) objArr[3], (java.lang.Object[]) objArr[4]);
            }
            if (impl == null || impl == defaultImpl) {
                synchronized (pendingLogs) {
                    pendingLogs.add(objArr);
                }
                return;
            }
            return;
        }
        if (i == 3) {
            java.lang.Object[] objArr2 = (java.lang.Object[]) message.obj;
            if (impl != null) {
                impl.d((java.lang.String) objArr2[2], (java.lang.String) objArr2[3], (java.lang.Object[]) objArr2[4]);
            }
            if (impl == null || impl == defaultImpl) {
                synchronized (pendingLogs) {
                    pendingLogs.add(objArr2);
                }
                return;
            }
            return;
        }
        if (i == 4) {
            java.lang.Object[] objArr3 = (java.lang.Object[]) message.obj;
            if (impl != null) {
                impl.i((java.lang.String) objArr3[2], (java.lang.String) objArr3[3], (java.lang.Object[]) objArr3[4]);
            }
            if (impl == null || impl == defaultImpl) {
                synchronized (pendingLogs) {
                    pendingLogs.add(objArr3);
                }
                return;
            }
            return;
        }
        if (i == 5) {
            java.lang.Object[] objArr4 = (java.lang.Object[]) message.obj;
            if (impl != null) {
                impl.w((java.lang.String) objArr4[2], (java.lang.String) objArr4[3], (java.lang.Object[]) objArr4[4]);
            }
            if (impl == null || impl == defaultImpl) {
                synchronized (pendingLogs) {
                    pendingLogs.add(objArr4);
                }
                return;
            }
            return;
        }
        if (i == 6) {
            java.lang.Object[] objArr5 = (java.lang.Object[]) message.obj;
            if (impl != null) {
                impl.e((java.lang.String) objArr5[2], (java.lang.String) objArr5[3], (java.lang.Object[]) objArr5[4]);
            }
            if (impl == null || impl == defaultImpl) {
                synchronized (pendingLogs) {
                    pendingLogs.add(objArr5);
                }
                return;
            }
            return;
        }
        if (i != 4001) {
            if (i == 4002) {
                printPendingLogs(impl);
                return;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("[-] Bad msg id: ");
            sbO.append(message.what);
            impl.e(TAG, sbO.toString(), new java.lang.Object[0]);
            return;
        }
        java.lang.Object[] objArr6 = (java.lang.Object[]) message.obj;
        if (impl != null) {
            impl.printErrStackTrace((java.lang.String) objArr6[2], (java.lang.Throwable) objArr6[3], (java.lang.String) objArr6[4], (java.lang.Object[]) objArr6[5]);
        }
        if (impl == null || impl == defaultImpl) {
            synchronized (pendingLogs) {
                pendingLogs.add(objArr6);
            }
        }
    }

    private void handleMessage_$noinline$(android.os.Message message) {
        try {
            dummyThrowExceptionMethod();
        } finally {
            handleMessageImpl(message);
        }
    }

    public static void printPendingLogs(final com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp) {
        synchronized (pendingLogs) {
            if (tinkerLogImp != null) {
                if (!pendingLogs.isEmpty()) {
                    new java.lang.Thread(new java.lang.Runnable() { // from class: com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.1
                        @Override // java.lang.Runnable
                        public void run() {
                            final java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", java.util.Locale.ENGLISH);
                            synchronized (com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.pendingLogs) {
                                for (final java.lang.Object[] objArr : com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.pendingLogs) {
                                    com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.mainThreadHandler.post(new java.lang.Runnable() { // from class: com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            java.lang.String strF = e.a.c.a.a.f("[PendingLog @ ", simpleDateFormat.format(new java.util.Date(((java.lang.Long) objArr[1]).longValue())), "] ");
                                            int iIntValue = ((java.lang.Integer) objArr[0]).intValue();
                                            if (iIntValue == 2) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp2 = tinkerLogImp;
                                                java.lang.String str = (java.lang.String) objArr[2];
                                                java.lang.StringBuilder sbO = e.a.c.a.a.o(strF);
                                                sbO.append((java.lang.String) objArr[3]);
                                                tinkerLogImp2.v(str, sbO.toString(), (java.lang.Object[]) objArr[4]);
                                                return;
                                            }
                                            if (iIntValue == 3) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp3 = tinkerLogImp;
                                                java.lang.String str2 = (java.lang.String) objArr[2];
                                                java.lang.StringBuilder sbO2 = e.a.c.a.a.o(strF);
                                                sbO2.append((java.lang.String) objArr[3]);
                                                tinkerLogImp3.d(str2, sbO2.toString(), (java.lang.Object[]) objArr[4]);
                                                return;
                                            }
                                            if (iIntValue == 4) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp4 = tinkerLogImp;
                                                java.lang.String str3 = (java.lang.String) objArr[2];
                                                java.lang.StringBuilder sbO3 = e.a.c.a.a.o(strF);
                                                sbO3.append((java.lang.String) objArr[3]);
                                                tinkerLogImp4.i(str3, sbO3.toString(), (java.lang.Object[]) objArr[4]);
                                                return;
                                            }
                                            if (iIntValue == 5) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp5 = tinkerLogImp;
                                                java.lang.String str4 = (java.lang.String) objArr[2];
                                                java.lang.StringBuilder sbO4 = e.a.c.a.a.o(strF);
                                                sbO4.append((java.lang.String) objArr[3]);
                                                tinkerLogImp5.w(str4, sbO4.toString(), (java.lang.Object[]) objArr[4]);
                                                return;
                                            }
                                            if (iIntValue == 6) {
                                                com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp6 = tinkerLogImp;
                                                java.lang.String str5 = (java.lang.String) objArr[2];
                                                java.lang.StringBuilder sbO5 = e.a.c.a.a.o(strF);
                                                sbO5.append((java.lang.String) objArr[3]);
                                                tinkerLogImp6.e(str5, sbO5.toString(), (java.lang.Object[]) objArr[4]);
                                                return;
                                            }
                                            if (iIntValue != 4001) {
                                                return;
                                            }
                                            com.tencent.tinker.loader.shareutil.ShareTinkerLog.TinkerLogImp tinkerLogImp7 = tinkerLogImp;
                                            java.lang.Object[] objArr2 = objArr;
                                            java.lang.String str6 = (java.lang.String) objArr2[2];
                                            java.lang.Throwable th = (java.lang.Throwable) objArr2[3];
                                            java.lang.StringBuilder sbO6 = e.a.c.a.a.o(strF);
                                            sbO6.append((java.lang.String) objArr[4]);
                                            tinkerLogImp7.printErrStackTrace(str6, th, sbO6.toString(), (java.lang.Object[]) objArr[5]);
                                        }
                                    });
                                }
                                com.tencent.tinker.loader.shareutil.TinkerLogInlineFence.pendingLogs.clear();
                            }
                        }
                    }, "tinker_log_printer").start();
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        handleMessage_$noinline$(message);
    }
}
