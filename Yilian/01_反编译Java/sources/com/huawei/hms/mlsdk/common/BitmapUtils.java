package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public final class BitmapUtils {
    public static final java.lang.String TAG = "BitmapUtils";

    public static android.graphics.Bitmap cut(android.graphics.Bitmap bitmap, android.graphics.Point[] pointArr, int i) {
        if (bitmap == null || pointArr == null || pointArr.length != 4) {
            return null;
        }
        for (android.graphics.Point point : pointArr) {
            if (point == null) {
                return null;
            }
        }
        android.graphics.Point point2 = pointArr[0];
        android.graphics.Point point3 = pointArr[1];
        android.graphics.Point point4 = pointArr[2];
        double dAtan2 = java.lang.Math.atan2(point3.y - point2.y, point3.x - point2.x);
        float degrees = (float) java.lang.Math.toDegrees(dAtan2);
        if (java.lang.Math.abs((int) degrees) <= 0) {
            return cutPaddingExtendRect(bitmap, point2, point4, 0, 0, i);
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i2 = width >> 1;
        int i3 = height >> 1;
        android.graphics.Point point5 = new android.graphics.Point(i2, i3);
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.setRotate(-degrees, i2, i3);
        android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        return cutPaddingExtendRect(bitmapCreateBitmap, rotateCoordinate(bitmap, point5, point2, dAtan2), rotateCoordinate(bitmap, point5, point4, dAtan2), (bitmapCreateBitmap.getWidth() - width) >> 1, (bitmapCreateBitmap.getHeight() - height) >> 1, i);
    }

    public static android.graphics.Bitmap cutPaddingExtendRect(android.graphics.Bitmap bitmap, android.graphics.Point point, android.graphics.Point point2, int i, int i2, int i3) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i4 = (point.x + i) - i3;
        if (i4 < 0) {
            i4 = 0;
        }
        int i5 = (point.y + i2) - i3;
        int i6 = i5 >= 0 ? i5 : 0;
        int i7 = point2.x + i + i3;
        if (i7 <= width) {
            width = i7;
        }
        int i8 = point2.y + i2 + i3;
        if (i8 <= height) {
            height = i8;
        }
        return android.graphics.Bitmap.createBitmap(bitmap, i4, i6, width - i4, height - i6);
    }

    public static android.graphics.Bitmap getBitmap(java.nio.ByteBuffer byteBuffer, com.huawei.hms.mlsdk.common.MLFrame.Property property) throws java.lang.Throwable {
        java.io.ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            byteBuffer.rewind();
            int iLimit = byteBuffer.limit();
            byte[] bArr = new byte[iLimit];
            byteBuffer.get(bArr, 0, iLimit);
            android.graphics.YuvImage yuvImage = new android.graphics.YuvImage(bArr, 17, property.getWidth(), property.getHeight(), null);
            java.io.ByteArrayOutputStream byteArrayOutputStream2 = new java.io.ByteArrayOutputStream();
            try {
                yuvImage.compressToJpeg(new android.graphics.Rect(0, 0, property.getWidth(), property.getHeight()), 100, byteArrayOutputStream2);
                android.graphics.Bitmap bitmapRotateBitmap = rotateBitmap(android.graphics.BitmapFactory.decodeByteArray(byteArrayOutputStream2.toByteArray(), 0, byteArrayOutputStream2.size()), property.getQuadrant());
                com.huawei.hms.ml.common.utils.StreamUtils.closeStreams(byteArrayOutputStream2);
                return bitmapRotateBitmap;
            } catch (java.lang.Throwable th) {
                th = th;
                byteArrayOutputStream = byteArrayOutputStream2;
                com.huawei.hms.ml.common.utils.StreamUtils.closeStreams(byteArrayOutputStream);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static android.graphics.Bitmap rotateBitmap(android.graphics.Bitmap bitmap, int i) {
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.postRotate(i != 1 ? i != 2 ? i != 3 ? 0 : 270 : 180 : 90);
        return android.graphics.Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public static android.graphics.Point rotateCoordinate(android.graphics.Bitmap bitmap, android.graphics.Point point, android.graphics.Point point2, double d2) {
        int height = bitmap.getHeight();
        int i = point2.x;
        int i2 = height - point2.y;
        int i3 = point.x;
        int i4 = height - point.y;
        double d3 = i - i3;
        double dCos = java.lang.Math.cos(d2);
        java.lang.Double.isNaN(d3);
        double d4 = i2 - i4;
        double dSin = java.lang.Math.sin(d2);
        java.lang.Double.isNaN(d4);
        double d5 = i3;
        java.lang.Double.isNaN(d5);
        int i5 = (int) (((dCos * d3) - (dSin * d4)) + d5);
        double dSin2 = java.lang.Math.sin(d2);
        java.lang.Double.isNaN(d3);
        double dCos2 = java.lang.Math.cos(d2);
        java.lang.Double.isNaN(d4);
        double d6 = (dCos2 * d4) + (dSin2 * d3);
        double d7 = i4;
        java.lang.Double.isNaN(d7);
        return new android.graphics.Point(i5, height - ((int) (d6 + d7)));
    }
}
