package com.umeng.analytics.vshelper;

/* loaded from: classes.dex */
public class PageNameMonitor implements com.umeng.analytics.vshelper.a {
    public static java.lang.String currentActivity;
    public static java.lang.String currentCustomPage;
    public static java.lang.Object lock = new java.lang.Object();

    public static class a {
        public static final com.umeng.analytics.vshelper.PageNameMonitor a = new com.umeng.analytics.vshelper.PageNameMonitor();
    }

    public PageNameMonitor() {
    }

    public static com.umeng.analytics.vshelper.PageNameMonitor getInstance() {
        return com.umeng.analytics.vshelper.PageNameMonitor.a.a;
    }

    @Override // com.umeng.analytics.vshelper.a
    public void activityPause(java.lang.String str) {
        synchronized (lock) {
            currentActivity = null;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void activityResume(java.lang.String str) {
        synchronized (lock) {
            currentActivity = str;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void customPageBegin(java.lang.String str) {
        synchronized (lock) {
            currentCustomPage = str;
        }
    }

    @Override // com.umeng.analytics.vshelper.a
    public void customPageEnd(java.lang.String str) {
        synchronized (lock) {
            currentCustomPage = null;
        }
    }

    public java.lang.String getCurrenPageName() {
        synchronized (lock) {
            if (currentCustomPage != null) {
                return currentCustomPage;
            }
            if (currentActivity == null) {
                return null;
            }
            return currentActivity;
        }
    }
}
