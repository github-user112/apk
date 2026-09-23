package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public abstract class BaseFrag extends androidx.fragment.app.Fragment {
    public boolean mIsShowing = false;

    public synchronized void close() {
        d.j.d.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public synchronized boolean isShowing() {
        return this.mIsShowing;
    }

    public abstract boolean onKeyDown(int i, android.view.KeyEvent keyEvent);

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        synchronized (this) {
            this.mIsShowing = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        synchronized (this) {
            this.mIsShowing = true;
        }
    }
}
