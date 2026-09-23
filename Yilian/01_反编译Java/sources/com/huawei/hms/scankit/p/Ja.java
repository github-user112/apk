package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ja {
    public android.hardware.Camera a;

    public final synchronized com.huawei.hms.scankit.p.Ca a() {
        return new com.huawei.hms.scankit.p.Ca(this.a.getParameters().getMaxZoom(), this.a.getParameters().getZoom(), this.a.getParameters().getZoomRatios());
    }

    public final synchronized void a(int i) {
        android.hardware.Camera camera = this.a;
        if (camera == null) {
            return;
        }
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        parameters.setZoom(i);
        try {
            this.a.setParameters(parameters);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.e("CameraManager", "CameraZoomManager::setCameraZoomIndex failed: " + e2.getMessage());
        }
    }

    public final synchronized void a(android.hardware.Camera camera) {
        this.a = camera;
    }

    public final synchronized boolean b() {
        android.hardware.Camera camera = this.a;
        if (camera == null) {
            return false;
        }
        return camera.getParameters().isZoomSupported();
    }
}
