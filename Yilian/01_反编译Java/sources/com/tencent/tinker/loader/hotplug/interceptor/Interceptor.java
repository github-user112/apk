package com.tencent.tinker.loader.hotplug.interceptor;

/* loaded from: classes.dex */
public abstract class Interceptor<T_TARGET> {
    public static final java.lang.String TAG = "Tinker.Interceptor";
    public T_TARGET mTarget = null;
    public volatile boolean mInstalled = false;

    public interface ITinkerHotplugProxy {
    }

    public T_TARGET decorate(T_TARGET t_target) {
        return t_target;
    }

    public abstract T_TARGET fetchTarget();

    public abstract void inject(T_TARGET t_target);

    public synchronized void install() {
        try {
            T_TARGET t_targetFetchTarget = fetchTarget();
            this.mTarget = t_targetFetchTarget;
            T_TARGET t_targetDecorate = decorate(t_targetFetchTarget);
            if (t_targetDecorate != t_targetFetchTarget) {
                inject(t_targetDecorate);
            } else {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "target: " + t_targetFetchTarget + " was already hooked.", new java.lang.Object[0]);
            }
            this.mInstalled = true;
        } catch (java.lang.Throwable th) {
            this.mTarget = null;
            throw new com.tencent.tinker.loader.hotplug.interceptor.InterceptFailedException(th);
        }
    }

    public synchronized void uninstall() {
        com.tencent.tinker.loader.hotplug.interceptor.InterceptFailedException interceptFailedException;
        if (this.mInstalled) {
            try {
                inject(this.mTarget);
                this.mTarget = null;
                this.mInstalled = false;
            } finally {
            }
        }
    }
}
