package com.umeng.analytics.filter;

/* loaded from: classes.dex */
public class a extends com.umeng.analytics.filter.EventList {
    public com.umeng.analytics.filter.d a;
    public java.lang.Object b;

    public a(java.lang.String str, java.lang.String str2) {
        super(str, str2);
        this.b = new java.lang.Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    public void eventListChange() {
        if (android.text.TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.b) {
            this.a = null;
            this.a = new com.umeng.analytics.filter.d(false, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(java.lang.String str) {
        boolean zA;
        if (android.text.TextUtils.isEmpty(this.mEventList)) {
            return false;
        }
        synchronized (this.b) {
            if (this.a == null) {
                this.a = new com.umeng.analytics.filter.d(false, this.mEventList);
            }
            zA = this.a.a(str);
        }
        return zA;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z) {
        com.umeng.analytics.AnalyticsConfig.CLEAR_EKV_BL = z;
    }
}
