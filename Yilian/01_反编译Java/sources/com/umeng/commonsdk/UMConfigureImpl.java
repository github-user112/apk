package com.umeng.commonsdk;

/* loaded from: classes.dex */
public class UMConfigureImpl {
    public static java.lang.String a = "delayed_transmission_flag_new";

    /* renamed from: e, reason: collision with root package name */
    public static final int f1423e = 1000;

    /* renamed from: f, reason: collision with root package name */
    public static java.util.concurrent.ScheduledExecutorService f1424f;

    /* renamed from: g, reason: collision with root package name */
    public static android.content.Context f1425g;
    public static java.util.concurrent.CopyOnWriteArrayList<com.umeng.commonsdk.utils.onMessageSendListener> b = new java.util.concurrent.CopyOnWriteArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public static int f1421c = 0;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1422d = false;
    public static int h = 0;
    public static java.lang.Runnable i = new java.lang.Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.umeng.commonsdk.UMConfigureImpl.f1421c == 0 || com.umeng.commonsdk.UMConfigureImpl.h >= 10) {
                    if (!com.umeng.commonsdk.UMConfigureImpl.f1422d) {
                        boolean unused = com.umeng.commonsdk.UMConfigureImpl.f1422d = true;
                        com.umeng.commonsdk.UMConfigureImpl.b(com.umeng.commonsdk.UMConfigureImpl.f1425g);
                    }
                    if (com.umeng.commonsdk.UMConfigureImpl.f1424f != null) {
                        com.umeng.commonsdk.UMConfigureImpl.f1424f.shutdown();
                        java.util.concurrent.ScheduledExecutorService unused2 = com.umeng.commonsdk.UMConfigureImpl.f1424f = null;
                    }
                }
                com.umeng.commonsdk.UMConfigureImpl.f();
            } catch (java.lang.Exception unused3) {
            }
        }
    };

    public static synchronized void b(android.content.Context context) {
        try {
            com.umeng.commonsdk.framework.UMEnvelopeBuild.setTransmissionSendFlag(true);
            if (b != null && b.size() > 0) {
                java.util.Iterator<com.umeng.commonsdk.utils.onMessageSendListener> it = b.iterator();
                while (it.hasNext()) {
                    it.next().onMessageSend();
                }
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static void c(android.content.Context context) {
        try {
            android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(a, 0);
            if (sharedPreferences != null) {
                android.content.SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean(a, true);
                editorEdit.commit();
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static boolean d(android.content.Context context) {
        try {
            android.content.SharedPreferences sharedPreferences = context.getSharedPreferences(a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(a, false);
            }
            return false;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }

    public static /* synthetic */ int f() {
        int i2 = h;
        h = i2 + 1;
        return i2;
    }

    public static void init(android.content.Context context) {
        if (context == null) {
            return;
        }
        f1425g = context;
        try {
            if (f1421c < 1 || d(context)) {
                com.umeng.commonsdk.framework.UMEnvelopeBuild.setTransmissionSendFlag(true);
            } else {
                com.umeng.commonsdk.framework.UMEnvelopeBuild.setTransmissionSendFlag(false);
                c(context);
                if (f1424f == null) {
                    java.util.concurrent.ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = java.util.concurrent.Executors.newScheduledThreadPool(1);
                    f1424f = scheduledExecutorServiceNewScheduledThreadPool;
                    scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(i, 0L, 100L, java.util.concurrent.TimeUnit.MILLISECONDS);
                }
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static synchronized void registerInterruptFlag() {
        try {
            f1421c++;
        } catch (java.lang.Exception unused) {
        }
    }

    public static synchronized void registerMessageSendListener(com.umeng.commonsdk.utils.onMessageSendListener onmessagesendlistener) {
        try {
            if (b != null) {
                b.add(onmessagesendlistener);
            }
            if (com.umeng.commonsdk.framework.UMEnvelopeBuild.getTransmissionSendFlag() && b != null && b.size() > 0) {
                java.util.Iterator<com.umeng.commonsdk.utils.onMessageSendListener> it = b.iterator();
                while (it.hasNext()) {
                    it.next().onMessageSend();
                }
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static synchronized void removeInterruptFlag() {
        try {
            f1421c--;
        } catch (java.lang.Exception unused) {
        }
    }

    public static synchronized void removeMessageSendListener(com.umeng.commonsdk.utils.onMessageSendListener onmessagesendlistener) {
        try {
            if (b != null) {
                b.remove(onmessagesendlistener);
            }
        } catch (java.lang.Exception unused) {
        }
    }
}
