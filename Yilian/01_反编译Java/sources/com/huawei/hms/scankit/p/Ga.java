package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ga {
    public android.hardware.Camera a;

    public final synchronized com.huawei.hms.scankit.p.C0235ya a() {
        return new com.huawei.hms.scankit.p.C0235ya(this.a.getParameters().getMaxExposureCompensation(), this.a.getParameters().getMinExposureCompensation(), this.a.getParameters().getExposureCompensation(), this.a.getParameters().getExposureCompensationStep());
    }

    public final synchronized void a(int i) {
        android.hardware.Camera camera = this.a;
        if (camera == null) {
            return;
        }
        try {
            android.hardware.Camera.Parameters parameters = camera.getParameters();
            parameters.setExposureCompensation(i);
            this.a.setParameters(parameters);
        } catch (java.lang.RuntimeException unused) {
            android.util.Log.w("CameraManager", "CameraExposureManager::setCompensation failed");
        }
    }

    public final synchronized void a(android.hardware.Camera camera) {
        this.a = camera;
    }
}
