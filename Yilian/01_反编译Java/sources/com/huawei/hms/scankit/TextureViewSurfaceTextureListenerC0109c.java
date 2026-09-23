package com.huawei.hms.scankit;

/* renamed from: com.huawei.hms.scankit.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class TextureViewSurfaceTextureListenerC0109c implements android.view.TextureView.SurfaceTextureListener {
    public final /* synthetic */ com.huawei.hms.scankit.C0111e a;

    public TextureViewSurfaceTextureListenerC0109c(com.huawei.hms.scankit.C0111e c0111e) {
        this.a = c0111e;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(android.graphics.SurfaceTexture surfaceTexture, int i, int i2) {
        this.a.E = false;
        if (surfaceTexture == null) {
            com.huawei.hms.scankit.util.a.b(com.huawei.hms.scankit.C0111e.a, "*** WARNING *** surfaceCreated() gave us a null surface!");
        }
        if (this.a.q) {
            return;
        }
        this.a.q = true;
        if (this.a.f449g.checkPermission("android.permission.CAMERA", android.os.Process.myPid(), android.os.Process.myUid()) == 0) {
            com.huawei.hms.scankit.C0111e c0111e = this.a;
            c0111e.a(c0111e.l);
        } else {
            if (!(this.a.f449g instanceof android.app.Activity) || android.os.Build.VERSION.SDK_INT < 23) {
                return;
            }
            this.a.E = true;
            ((android.app.Activity) this.a.f449g).requestPermissions(new java.lang.String[]{"android.permission.CAMERA"}, 1);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(android.graphics.SurfaceTexture surfaceTexture) {
        this.a.q = false;
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(android.graphics.SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(android.graphics.SurfaceTexture surfaceTexture) {
    }
}
