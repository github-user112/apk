package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class OrientationListener implements android.hardware.SensorEventListener {
    public final android.view.Display display;
    public final com.google.android.exoplayer2.video.spherical.OrientationListener.Listener[] listeners;
    public boolean recenterMatrixComputed;
    public final float[] deviceOrientationMatrix4x4 = new float[16];
    public final float[] tempMatrix4x4 = new float[16];
    public final float[] recenterMatrix4x4 = new float[16];
    public final float[] angles = new float[3];

    public interface Listener {
        void onOrientationChange(float[] fArr, float f2);
    }

    public OrientationListener(android.view.Display display, com.google.android.exoplayer2.video.spherical.OrientationListener.Listener... listenerArr) {
        this.display = display;
        this.listeners = listenerArr;
    }

    private float extractRoll(float[] fArr) {
        android.hardware.SensorManager.remapCoordinateSystem(fArr, 1, 131, this.tempMatrix4x4);
        android.hardware.SensorManager.getOrientation(this.tempMatrix4x4, this.angles);
        return this.angles[2];
    }

    private void notifyListeners(float[] fArr, float f2) {
        for (com.google.android.exoplayer2.video.spherical.OrientationListener.Listener listener : this.listeners) {
            listener.onOrientationChange(fArr, f2);
        }
    }

    private void recenter(float[] fArr) {
        if (!this.recenterMatrixComputed) {
            com.google.android.exoplayer2.video.spherical.FrameRotationQueue.computeRecenterMatrix(this.recenterMatrix4x4, fArr);
            this.recenterMatrixComputed = true;
        }
        float[] fArr2 = this.tempMatrix4x4;
        java.lang.System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        android.opengl.Matrix.multiplyMM(fArr, 0, this.tempMatrix4x4, 0, this.recenterMatrix4x4, 0);
    }

    private void rotateAroundZ(float[] fArr, int i) {
        if (i != 0) {
            int i2 = 130;
            int i3 = 129;
            if (i == 1) {
                i2 = 2;
            } else if (i == 2) {
                i2 = 129;
                i3 = 130;
            } else {
                if (i != 3) {
                    throw new java.lang.IllegalStateException();
                }
                i3 = 1;
            }
            float[] fArr2 = this.tempMatrix4x4;
            java.lang.System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            android.hardware.SensorManager.remapCoordinateSystem(this.tempMatrix4x4, i2, i3, fArr);
        }
    }

    public static void rotateYtoSky(float[] fArr) {
        android.opengl.Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(android.hardware.Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(android.hardware.SensorEvent sensorEvent) {
        android.hardware.SensorManager.getRotationMatrixFromVector(this.deviceOrientationMatrix4x4, sensorEvent.values);
        rotateAroundZ(this.deviceOrientationMatrix4x4, this.display.getRotation());
        float fExtractRoll = extractRoll(this.deviceOrientationMatrix4x4);
        rotateYtoSky(this.deviceOrientationMatrix4x4);
        recenter(this.deviceOrientationMatrix4x4);
        notifyListeners(this.deviceOrientationMatrix4x4, fExtractRoll);
    }
}
