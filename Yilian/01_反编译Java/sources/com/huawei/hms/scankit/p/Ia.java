package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ia {
    public android.hardware.Camera a;

    public final synchronized com.huawei.hms.scankit.p.Ba a() {
        java.lang.RuntimeException e2;
        int maxNumMeteringAreas;
        android.graphics.Rect rect;
        try {
            maxNumMeteringAreas = this.a.getParameters().getMaxNumMeteringAreas();
        } catch (java.lang.RuntimeException e3) {
            e2 = e3;
            maxNumMeteringAreas = 0;
        }
        try {
            rect = this.a.getParameters().getMeteringAreas().get(0).rect;
        } catch (java.lang.RuntimeException e4) {
            e2 = e4;
            android.util.Log.w("CameraManager", "CameraMeteringManager::getCameraMeteringData failed: " + e2.getMessage());
            rect = null;
            return new com.huawei.hms.scankit.p.Ba(maxNumMeteringAreas, rect);
        }
        return new com.huawei.hms.scankit.p.Ba(maxNumMeteringAreas, rect);
    }

    public final synchronized void a(android.hardware.Camera camera) {
        this.a = camera;
    }

    public final synchronized void a(java.util.List<com.huawei.hms.scankit.p.Ba.a> list) {
        android.hardware.Camera camera = this.a;
        if (camera == null) {
            return;
        }
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(new android.hardware.Camera.Area(list.get(i).a, list.get(i).b));
        }
        parameters.setMeteringAreas(arrayList);
        try {
            this.a.setParameters(parameters);
        } catch (java.lang.RuntimeException e2) {
            android.util.Log.w("CameraManager", "CameraMeteringManager::setCameraMeteringArea failed: " + e2.getMessage());
        }
    }
}
