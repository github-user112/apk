package d.g.e;

/* loaded from: classes.dex */
public class e extends android.app.Activity implements d.l.h, d.g.m.d.a {
    public d.e.h<java.lang.Class<? extends d.g.e.e.a>, d.g.e.e.a> mExtraDataMap = new d.e.h<>();
    public d.l.i mLifecycleRegistry = new d.l.i(this);

    @java.lang.Deprecated
    public static class a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        android.view.View decorView = getWindow().getDecorView();
        if (decorView == null || !d.g.m.s.e(decorView, keyEvent)) {
            return d.g.m.d.a(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent keyEvent) {
        android.view.View decorView = getWindow().getDecorView();
        if (decorView == null || !d.g.m.s.e(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @java.lang.Deprecated
    public <T extends d.g.e.e.a> T getExtraData(java.lang.Class<T> cls) {
        return (T) this.mExtraDataMap.getOrDefault(cls, null);
    }

    public d.l.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // android.app.Activity
    @android.annotation.SuppressLint({"RestrictedApi"})
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        d.l.p.c(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        d.l.i iVar = this.mLifecycleRegistry;
        d.l.e.b bVar = d.l.e.b.CREATED;
        iVar.d("markState");
        iVar.d("setCurrentState");
        iVar.g(bVar);
        super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @java.lang.Deprecated
    public void putExtraData(d.g.e.e.a aVar) {
        this.mExtraDataMap.put(aVar.getClass(), aVar);
    }

    @Override // d.g.m.d.a
    public boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
