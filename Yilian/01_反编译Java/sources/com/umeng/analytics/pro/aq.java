package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public interface aq<T extends com.umeng.analytics.pro.aq<?, ?>, F extends com.umeng.analytics.pro.ax> extends java.io.Serializable {
    void clear();

    com.umeng.analytics.pro.aq<T, F> deepCopy();

    F fieldForId(int i);

    void read(com.umeng.analytics.pro.bp bpVar);

    void write(com.umeng.analytics.pro.bp bpVar);
}
