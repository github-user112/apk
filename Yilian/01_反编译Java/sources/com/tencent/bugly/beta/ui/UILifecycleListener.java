package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public interface UILifecycleListener<T> {
    void onCreate(android.content.Context context, android.view.View view, T t);

    void onDestroy(android.content.Context context, android.view.View view, T t);

    void onPause(android.content.Context context, android.view.View view, T t);

    void onResume(android.content.Context context, android.view.View view, T t);

    void onStart(android.content.Context context, android.view.View view, T t);

    void onStop(android.content.Context context, android.view.View view, T t);
}
