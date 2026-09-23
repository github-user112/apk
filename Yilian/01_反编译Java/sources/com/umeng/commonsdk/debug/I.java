package com.umeng.commonsdk.debug;

/* loaded from: classes.dex */
public class I implements com.umeng.commonsdk.debug.UInterface {
    @Override // com.umeng.commonsdk.debug.UInterface
    public void log(java.lang.String str, java.lang.String str2) {
        android.util.Log.i(str, str2);
    }
}
