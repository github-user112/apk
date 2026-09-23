package f.a.i.m;

/* loaded from: classes.dex */
public class b {

    @android.annotation.SuppressLint({"RestrictedApi"})
    public class a extends d.b.p.h {
        public java.lang.ref.WeakReference<d.b.k.h> b;

        public a(f.a.i.m.b bVar, android.view.Window.Callback callback, d.b.k.h hVar) {
            super(callback);
            this.b = new java.lang.ref.WeakReference<>(hVar);
        }

        @Override // android.view.Window.Callback
        public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
            int keyCode = keyEvent.getKeyCode();
            int action = keyEvent.getAction();
            if (this.b.get() != null) {
                if (keyCode == 82 && action == 0) {
                    if (this.b.get().onKeyDown(keyEvent.getKeyCode(), keyEvent)) {
                        return true;
                    }
                } else if (keyCode == 82 && action == 1 && this.b.get().onKeyUp(keyEvent.getKeyCode(), keyEvent)) {
                    return true;
                }
            }
            return this.a.dispatchKeyEvent(keyEvent);
        }
    }

    public b(d.b.k.h hVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        try {
            java.lang.reflect.Field declaredField = d.b.k.h.class.getDeclaredField(com.umeng.analytics.pro.ai.at);
            declaredField.setAccessible(true);
            java.lang.Object obj = declaredField.get(hVar);
            java.lang.reflect.Field declaredField2 = obj.getClass().getSuperclass().getSuperclass().getDeclaredField("mWindow");
            declaredField2.setAccessible(true);
            android.view.Window window = (android.view.Window) declaredField2.get(obj);
            window.setCallback(new f.a.i.m.b.a(this, window.getCallback(), hVar));
        } catch (java.lang.IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (java.lang.NoSuchFieldException e3) {
            e3.printStackTrace();
        }
    }
}
