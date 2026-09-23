package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class BetaActivity extends d.j.d.l {
    public java.lang.Runnable onDestroyRunnable = null;

    @Override // d.j.d.l, androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        try {
            requestWindowFeature(1);
            if (com.tencent.bugly.beta.Beta.dialogFullScreen) {
                getWindow().setFlags(1024, 1024);
            }
            android.view.View viewFindViewById = getWindow().getDecorView().findViewById(android.R.id.content);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(new com.tencent.bugly.beta.global.b(1, this, viewFindViewById));
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        int intExtra = getIntent().getIntExtra("frag", -1);
        com.tencent.bugly.beta.ui.BaseFrag baseFrag = com.tencent.bugly.beta.ui.UiManager.TEMP_FRAG.get(java.lang.Integer.valueOf(intExtra));
        if (baseFrag == null) {
            finish();
            return;
        }
        d.j.d.y supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager == null) {
            throw null;
        }
        d.j.d.a aVar = new d.j.d.a(supportFragmentManager);
        aVar.d(android.R.id.content, baseFrag, null, 1);
        if (aVar.r) {
            throw new java.lang.IllegalStateException("commit already called");
        }
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Commit: " + aVar);
            java.io.PrintWriter printWriter = new java.io.PrintWriter(new d.j.d.t0("FragmentManager"));
            aVar.h("  ", printWriter, true);
            printWriter.close();
        }
        aVar.r = true;
        aVar.s = aVar.f2083g ? aVar.q.i.getAndIncrement() : -1;
        d.j.d.y yVar = aVar.q;
        if (yVar.q == null) {
            if (!yVar.F) {
                throw new java.lang.IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new java.lang.IllegalStateException("FragmentManager has been destroyed");
        }
        if (yVar.Q()) {
            throw new java.lang.IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        synchronized (yVar.a) {
            if (yVar.q == null) {
                throw new java.lang.IllegalStateException("Activity has been destroyed");
            }
            yVar.a.add(aVar);
            yVar.a0();
        }
        com.tencent.bugly.beta.ui.UiManager.TEMP_FRAG.remove(java.lang.Integer.valueOf(intExtra));
    }

    @Override // d.j.d.l, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        java.lang.Runnable runnable = this.onDestroyRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        androidx.fragment.app.Fragment fragmentF = getSupportFragmentManager().F(android.R.id.content);
        boolean zOnKeyDown = fragmentF instanceof com.tencent.bugly.beta.ui.BaseFrag ? ((com.tencent.bugly.beta.ui.BaseFrag) fragmentF).onKeyDown(i, keyEvent) : false;
        if (zOnKeyDown) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // d.j.d.l, android.app.Activity
    public void onPause() {
        overridePendingTransition(0, 0);
        super.onPause();
    }
}
