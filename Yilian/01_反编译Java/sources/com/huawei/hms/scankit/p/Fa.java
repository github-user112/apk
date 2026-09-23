package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Fa {
    public com.huawei.hms.scankit.p.C0230xa a;
    public android.graphics.Point b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.Point f521c;

    public static android.graphics.Point a(android.hardware.Camera.Parameters parameters, android.graphics.Point point, boolean z) {
        java.util.List<android.hardware.Camera.Size> supportedPreviewSizes = !z ? parameters.getSupportedPreviewSizes() : parameters.getSupportedPictureSizes();
        if (supportedPreviewSizes != null && !supportedPreviewSizes.isEmpty()) {
            return a(supportedPreviewSizes, point);
        }
        android.util.Log.e("CameraManager", "CameraConfigImpl::findCameraResolution camera not support");
        return new android.graphics.Point(0, 0);
    }

    public static android.graphics.Point a(java.util.List<android.hardware.Camera.Size> list, android.graphics.Point point) {
        double d2 = point.x;
        double d3 = point.y;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        double d4 = d2 / d3;
        int i = 0;
        double dAbs = Double.MAX_VALUE;
        int i2 = 0;
        for (android.hardware.Camera.Size size : list) {
            int i3 = size.width;
            int i4 = size.height;
            if (i3 == point.x && i4 == point.y) {
                return new android.graphics.Point(i3, i4);
            }
            if (i3 * i4 >= 153600.0d) {
                double d5 = i3;
                double d6 = i4;
                java.lang.Double.isNaN(d5);
                java.lang.Double.isNaN(d6);
                double d7 = (d5 / d6) - d4;
                if (java.lang.Math.abs(d7) < dAbs) {
                    dAbs = java.lang.Math.abs(d7);
                    i2 = i4;
                    i = i3;
                }
            }
        }
        return new android.graphics.Point(i, i2);
    }

    public static void a(android.hardware.Camera.Parameters parameters) {
        java.lang.String str;
        int i = 0;
        java.lang.String[] strArr = {"continuous-picture", "continuous-video", com.google.android.exoplayer2.text.ttml.TtmlNode.TEXT_EMPHASIS_AUTO};
        java.util.List<java.lang.String> supportedFocusModes = parameters.getSupportedFocusModes();
        if (supportedFocusModes == null) {
            android.util.Log.w("CameraManager", "setFocusMode failed, use default");
            return;
        }
        while (true) {
            if (i >= 3) {
                str = null;
                break;
            }
            str = strArr[i];
            if (supportedFocusModes.contains(str)) {
                break;
            } else {
                i++;
            }
        }
        if (str != null) {
            android.util.Log.i("CameraManager", "setFocusMode: ".concat(str));
            parameters.setFocusMode(str);
        }
    }

    public final void a(android.hardware.Camera camera, com.huawei.hms.scankit.p.C0230xa c0230xa) {
        if (camera == null || c0230xa == null) {
            throw new java.lang.IllegalArgumentException("initCameraParameters param is invalid");
        }
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        this.a = c0230xa;
        this.b = a(parameters, c0230xa.a(), false);
        android.util.Log.d("CameraManager", "initCameraParameters previewCameraSize: " + this.b.toString());
        if (c0230xa.c() == 0) {
            this.f521c = a(parameters, c0230xa.a(), true);
            android.util.Log.d("CameraManager", "initCameraParameters pictureCameraSize: " + this.f521c.toString());
        }
        android.graphics.Point point = this.b;
        android.graphics.Point point2 = this.f521c;
        if (this.a != null) {
            android.hardware.Camera.Parameters parameters2 = camera.getParameters();
            parameters2.setPreviewSize(point.x, point.y);
            if (this.a.c() == 0) {
                parameters2.setPictureSize(point2.x, point2.y);
            }
            com.huawei.hms.scankit.p.C0230xa c0230xa2 = this.a;
            if (c0230xa2 != null) {
                java.lang.String strF = c0230xa2.f();
                if (!strF.equals("off") && !strF.equals("torch")) {
                    strF = "off";
                }
                parameters2.setFlashMode(strF);
            }
            a(parameters2);
            if (parameters2.isZoomSupported()) {
                parameters2.setZoom(1);
            } else {
                android.util.Log.w("CameraManager", "initCameraParameters::setDefaultZoom not support zoom");
            }
            if (this.a.e()) {
                parameters2.setRecordingHint(true);
            }
            camera.setParameters(parameters2);
        }
    }
}
