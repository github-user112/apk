package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class FrameRotationQueue {
    public boolean recenterMatrixComputed;
    public final float[] recenterMatrix = new float[16];
    public final float[] rotationMatrix = new float[16];
    public final com.google.android.exoplayer2.util.TimedValueQueue<float[]> rotations = new com.google.android.exoplayer2.util.TimedValueQueue<>();

    public static void computeRecenterMatrix(float[] fArr, float[] fArr2) {
        android.opengl.Matrix.setIdentityM(fArr, 0);
        float fSqrt = (float) java.lang.Math.sqrt((fArr2[8] * fArr2[8]) + (fArr2[10] * fArr2[10]));
        fArr[0] = fArr2[10] / fSqrt;
        fArr[2] = fArr2[8] / fSqrt;
        fArr[8] = (-fArr2[8]) / fSqrt;
        fArr[10] = fArr2[10] / fSqrt;
    }

    public static void getRotationMatrixFromAngleAxis(float[] fArr, float[] fArr2) {
        float f2 = fArr2[0];
        float f3 = -fArr2[1];
        float f4 = -fArr2[2];
        float length = android.opengl.Matrix.length(f2, f3, f4);
        if (length != 0.0f) {
            android.opengl.Matrix.setRotateM(fArr, 0, (float) java.lang.Math.toDegrees(length), f2 / length, f3 / length, f4 / length);
        } else {
            android.opengl.Matrix.setIdentityM(fArr, 0);
        }
    }

    public boolean pollRotationMatrix(float[] fArr, long j) {
        float[] fArrPollFloor = this.rotations.pollFloor(j);
        if (fArrPollFloor == null) {
            return false;
        }
        getRotationMatrixFromAngleAxis(this.rotationMatrix, fArrPollFloor);
        if (!this.recenterMatrixComputed) {
            computeRecenterMatrix(this.recenterMatrix, this.rotationMatrix);
            this.recenterMatrixComputed = true;
        }
        android.opengl.Matrix.multiplyMM(fArr, 0, this.recenterMatrix, 0, this.rotationMatrix, 0);
        return true;
    }

    public void reset() {
        this.rotations.clear();
        this.recenterMatrixComputed = false;
    }

    public void setRotation(long j, float[] fArr) {
        this.rotations.add(j, fArr);
    }
}
