package com.huawei.hms.mlsdk.common;

/* loaded from: classes.dex */
public class MLFrame {
    public static final int SCREEN_FIRST_QUADRANT = 0;
    public static final int SCREEN_FOURTH_QUADRANT = 3;
    public static final int SCREEN_SECOND_QUADRANT = 1;
    public static final int SCREEN_THIRD_QUADRANT = 2;
    public android.graphics.Bitmap bitmap;
    public java.nio.ByteBuffer byteBuffer;
    public byte[] bytes;
    public volatile java.lang.Boolean frameInit;
    public com.huawei.hms.mlsdk.common.MLFrame.Property property;
    public int recMode;

    public static class Creator {
        public com.huawei.hms.mlsdk.common.MLFrame frame = new com.huawei.hms.mlsdk.common.MLFrame();

        public com.huawei.hms.mlsdk.common.MLFrame create() {
            if (this.frame.byteBuffer == null && this.frame.bitmap == null) {
                throw new java.lang.IllegalStateException("Failed to create image instance, both bitmap and byteBuffer data are not specified.");
            }
            return this.frame;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator setBitmap(android.graphics.Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            this.frame.bitmap = bitmap;
            com.huawei.hms.mlsdk.common.MLFrame.Property propertyAcquireProperty = this.frame.acquireProperty();
            propertyAcquireProperty.width = width;
            propertyAcquireProperty.height = height;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator setFramePropertyExt(com.huawei.hms.mlsdk.common.MLFrame.Property.Ext ext) {
            this.frame.acquireProperty().ext = ext;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator setItemIdentity(int i) {
            this.frame.acquireProperty().itemIdentity = i;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator setQuadrant(int i) {
            this.frame.acquireProperty().quadrant = i;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator setTimestamp(long j) {
            this.frame.acquireProperty().timestamp = j;
            return this;
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Creator writeByteBufferData(java.nio.ByteBuffer byteBuffer, int i, int i2, int i3) {
            if (byteBuffer == null) {
                throw new java.lang.IllegalArgumentException("Parameter： data is not specified");
            }
            if (byteBuffer.capacity() < i * i2) {
                throw new java.lang.IllegalArgumentException("Not enough capacity for image data size.");
            }
            if (i3 != 17 && i3 != 16 && i3 != 842094169) {
                throw new java.lang.IllegalArgumentException("Parameter formatType:" + i3 + " is not supported");
            }
            this.frame.byteBuffer = byteBuffer;
            com.huawei.hms.mlsdk.common.MLFrame.Property propertyAcquireProperty = this.frame.acquireProperty();
            if (propertyAcquireProperty != null) {
                propertyAcquireProperty.formatType = i3;
                propertyAcquireProperty.width = i;
                propertyAcquireProperty.height = i2;
            }
            return this;
        }
    }

    public static class Property {
        public static final int IMAGE_FORMAT_NV21 = 17;
        public static final int IMAGE_FORMAT_YV12 = 842094169;
        public static final int SCREEN_FIRST_QUADRANT = 0;
        public static final int SCREEN_FOURTH_QUADRANT = 3;
        public static final int SCREEN_SECOND_QUADRANT = 1;
        public static final int SCREEN_THIRD_QUADRANT = 2;
        public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext ext;
        public int formatType;
        public int height;
        public int itemIdentity;
        public int quadrant;
        public long timestamp;
        public int width;

        public static class Creator {
            public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext ext;
            public int formatType;
            public int height;
            public int itemIdentity;
            public int quadrant;
            public long timestamp;
            public int width;

            public com.huawei.hms.mlsdk.common.MLFrame.Property create() {
                return new com.huawei.hms.mlsdk.common.MLFrame.Property(this.width, this.height, this.quadrant, this.formatType, this.itemIdentity, this.timestamp, this.ext);
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setExt(com.huawei.hms.mlsdk.common.MLFrame.Property.Ext ext) {
                this.ext = ext;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setFormatType(int i) {
                this.formatType = i;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setHeight(int i) {
                this.height = i;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setItemIdentity(int i) {
                this.itemIdentity = i;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setQuadrant(int i) {
                this.quadrant = i;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setTimestamp(int i) {
                this.timestamp = i;
                return this;
            }

            public com.huawei.hms.mlsdk.common.MLFrame.Property.Creator setWidth(int i) {
                this.width = i;
                return this;
            }
        }

        public static class Ext {
            public int lensId;
            public int maxZoom;
            public android.graphics.Rect rect;
            public int zoom;

            public static class Creator {
                public int maxZoom;
                public android.graphics.Rect rect;
                public int lensId = 0;
                public int zoom = 0;

                public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext build() {
                    return new com.huawei.hms.mlsdk.common.MLFrame.Property.Ext(this.lensId, this.zoom, this.maxZoom, this.rect);
                }

                public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext.Creator setLensId(int i) {
                    this.lensId = i;
                    return this;
                }

                public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext.Creator setMaxZoom(int i) {
                    this.maxZoom = i;
                    return this;
                }

                public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext.Creator setRect(android.graphics.Rect rect) {
                    this.rect = rect;
                    return this;
                }

                public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext.Creator setZoom(int i) {
                    this.zoom = i;
                    return this;
                }
            }

            public Ext(int i, int i2, int i3, android.graphics.Rect rect) {
                this.lensId = 0;
                this.zoom = 0;
                this.lensId = i;
                this.zoom = i2;
                this.maxZoom = i3;
                this.rect = rect;
            }

            public int getLensId() {
                return this.lensId;
            }

            public int getMaxZoom() {
                return this.maxZoom;
            }

            public android.graphics.Rect getRect() {
                return this.rect;
            }

            public int getZoom() {
                return this.zoom;
            }
        }

        public Property() {
            this.quadrant = 0;
            this.formatType = -1;
            this.itemIdentity = -1;
            this.ext = new com.huawei.hms.mlsdk.common.MLFrame.Property.Ext.Creator().build();
        }

        public Property(int i, int i2, int i3, int i4, int i5, long j, com.huawei.hms.mlsdk.common.MLFrame.Property.Ext ext) {
            this.quadrant = 0;
            this.formatType = -1;
            this.itemIdentity = -1;
            this.width = i;
            this.height = i2;
            this.quadrant = i3;
            this.formatType = i4;
            this.itemIdentity = i5;
            this.timestamp = j;
            this.ext = ext;
        }

        public Property(com.huawei.hms.mlsdk.common.MLFrame.Property property) {
            this.quadrant = 0;
            this.formatType = -1;
            this.itemIdentity = -1;
            this.width = property.getWidth();
            this.height = property.getHeight();
            this.formatType = property.getFormatType();
            this.quadrant = property.getQuadrant();
            this.itemIdentity = property.getItemIdentity();
            this.timestamp = property.getTimestamp();
            this.ext = property.getExt();
        }

        public com.huawei.hms.mlsdk.common.MLFrame.Property.Ext getExt() {
            return this.ext;
        }

        public int getFormatType() {
            return this.formatType;
        }

        public int getHeight() {
            return this.height;
        }

        public int getItemIdentity() {
            return this.itemIdentity;
        }

        public int getQuadrant() {
            return this.quadrant;
        }

        public long getTimestamp() {
            return this.timestamp;
        }

        public int getWidth() {
            return this.width;
        }

        public void resetWidthAndHeight() {
            if (this.quadrant % 2 != 0) {
                int i = this.width;
                this.width = this.height;
                this.height = i;
            }
            this.quadrant = 0;
        }
    }

    public MLFrame() {
        this.frameInit = java.lang.Boolean.FALSE;
        this.property = new com.huawei.hms.mlsdk.common.MLFrame.Property();
        this.byteBuffer = null;
        this.bitmap = null;
    }

    public MLFrame(android.graphics.Bitmap bitmap) {
        this.frameInit = java.lang.Boolean.FALSE;
        this.bitmap = bitmap;
    }

    public MLFrame(android.graphics.Bitmap bitmap, com.huawei.hms.mlsdk.common.MLFrame.Property property) {
        this.frameInit = java.lang.Boolean.FALSE;
        this.bitmap = bitmap;
        this.property = property == null ? new com.huawei.hms.mlsdk.common.MLFrame.Property() : property;
    }

    public MLFrame(java.nio.ByteBuffer byteBuffer, com.huawei.hms.mlsdk.common.MLFrame.Property property) {
        this.frameInit = java.lang.Boolean.FALSE;
        this.byteBuffer = byteBuffer;
        this.property = property == null ? new com.huawei.hms.mlsdk.common.MLFrame.Property() : property;
    }

    public MLFrame(byte[] bArr) {
        this.frameInit = java.lang.Boolean.FALSE;
        this.bytes = bArr;
    }

    public MLFrame(byte[] bArr, com.huawei.hms.mlsdk.common.MLFrame.Property property) {
        this(java.nio.ByteBuffer.wrap(bArr), property);
    }

    public static com.huawei.hms.mlsdk.common.MLFrame fromBitmap(android.graphics.Bitmap bitmap) {
        return new com.huawei.hms.mlsdk.common.MLFrame(bitmap);
    }

    public static com.huawei.hms.mlsdk.common.MLFrame fromByteArray(byte[] bArr, com.huawei.hms.mlsdk.common.MLFrame.Property property) {
        return new com.huawei.hms.mlsdk.common.MLFrame(bArr, property);
    }

    public static com.huawei.hms.mlsdk.common.MLFrame fromByteBuffer(java.nio.ByteBuffer byteBuffer, com.huawei.hms.mlsdk.common.MLFrame.Property property) {
        return new com.huawei.hms.mlsdk.common.MLFrame(byteBuffer, property);
    }

    public static com.huawei.hms.mlsdk.common.MLFrame fromFilePath(android.content.Context context, android.net.Uri uri) throws java.io.IOException {
        if (context == null) {
            throw new java.lang.IllegalArgumentException("Parameter context is mandatory");
        }
        if (uri == null) {
            throw new java.lang.IllegalArgumentException("Parameter uri is mandatory");
        }
        android.graphics.Bitmap bitmap = android.provider.MediaStore.Images.Media.getBitmap(context.getContentResolver(), uri);
        if (bitmap != null) {
            return new com.huawei.hms.mlsdk.common.MLFrame(bitmap);
        }
        throw new java.lang.RuntimeException("Failed to load bitmap from uri");
    }

    @android.annotation.TargetApi(19)
    public static com.huawei.hms.mlsdk.common.MLFrame fromMediaImage(android.media.Image image, int i) {
        int format = image.getFormat();
        if (format != 256 && format != 35) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unsupported format: ");
            sbO.append(image.getFormat());
            sbO.append(", Only JPEG and YUV_420_888 are supported");
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        com.huawei.hms.mlsdk.common.MLFrame mLFrame = null;
        if (format == 256) {
            android.media.Image.Plane[] planes = image.getPlanes();
            if (planes != null && planes.length == 1 && planes[0] != null && planes[0].getBuffer() != null) {
                java.nio.ByteBuffer buffer = planes[0].getBuffer();
                int iRemaining = buffer.remaining();
                byte[] bArr = new byte[iRemaining];
                buffer.get(bArr);
                mLFrame = i != 0 ? new com.huawei.hms.mlsdk.common.MLFrame(rotate(android.graphics.BitmapFactory.decodeByteArray(bArr, 0, iRemaining), i)) : new com.huawei.hms.mlsdk.common.MLFrame(bArr);
            }
        } else {
            com.huawei.hms.mlsdk.common.MLFrame.Property.Creator creator = new com.huawei.hms.mlsdk.common.MLFrame.Property.Creator();
            creator.setFormatType(17).setWidth(image.getWidth()).setHeight(image.getHeight()).setQuadrant(i);
            mLFrame = new com.huawei.hms.mlsdk.common.MLFrame(com.huawei.hms.ml.common.utils.ImageConvertUtils.getDataFromImage(image, 2), creator.create());
        }
        if (mLFrame != null) {
            return mLFrame;
        }
        throw new java.lang.IllegalStateException("Failed to create frame from media image.");
    }

    private android.util.Pair<java.lang.Integer, java.lang.Integer> getPreviewSize() {
        java.lang.Integer numValueOf;
        int height;
        com.huawei.hms.mlsdk.common.MLFrame.Property property = this.property;
        if (property == null) {
            return null;
        }
        if (property.getItemIdentity() != -1) {
            boolean z = true;
            if (this.property.getQuadrant() != 1 && this.property.getQuadrant() != 3) {
                z = false;
            }
            com.huawei.hms.mlsdk.common.MLFrame.Property property2 = this.property;
            numValueOf = java.lang.Integer.valueOf(z ? property2.getHeight() : property2.getWidth());
            height = z ? this.property.getWidth() : this.property.getHeight();
        } else {
            numValueOf = java.lang.Integer.valueOf(wrapBitmap().getWidth());
            height = wrapBitmap().getHeight();
        }
        return android.util.Pair.create(numValueOf, java.lang.Integer.valueOf(height));
    }

    private boolean isSupportedYuvFormat(int i) {
        return i == 842094169 || i == 17;
    }

    public static android.graphics.Bitmap rotate(android.graphics.Bitmap bitmap, int i) {
        if (i < 0 || i > 3) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.F(29, "Invalid quadrant: ", i));
        }
        if (i == 0) {
            return bitmap;
        }
        android.graphics.Matrix matrix = new android.graphics.Matrix();
        matrix.postRotate(i * 90);
        return android.graphics.Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    private final android.graphics.Bitmap wrapBitmap() throws java.io.IOException {
        android.graphics.Bitmap bitmap = this.bitmap;
        if (bitmap != null) {
            return bitmap;
        }
        if (this.property != null) {
            byte[] bArrWrapJpeg = wrapJpeg(false);
            android.graphics.Bitmap bitmapDecodeByteArray = android.graphics.BitmapFactory.decodeByteArray(bArrWrapJpeg, 0, bArrWrapJpeg.length);
            if (this.property.getQuadrant() != 0) {
                bitmapDecodeByteArray = rotate(bitmapDecodeByteArray, this.property.getQuadrant());
            }
            this.bitmap = bitmapDecodeByteArray;
        }
        return this.bitmap;
    }

    public java.nio.ByteBuffer acquireGrayByteBuffer() {
        java.nio.ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer != null && this.property != null) {
            com.huawei.hms.ml.common.utils.ImageConvertUtils.nv21ToGray(byteBuffer.array(), this.property.width, this.property.height);
        }
        return this.byteBuffer;
    }

    public com.huawei.hms.mlsdk.common.MLFrame.Property acquireProperty() {
        return this.property;
    }

    public final android.util.Pair<byte[], java.lang.Float> create(int i, int i2) throws java.io.IOException {
        byte[] bArrBitmap2Jpeg;
        int iIntValue = ((java.lang.Integer) getPreviewSize().first).intValue();
        int iIntValue2 = ((java.lang.Integer) getPreviewSize().second).intValue();
        float fMin = java.lang.Math.min(i / iIntValue, i2 / iIntValue2);
        float f2 = 1.0f;
        if (fMin >= 1.0f) {
            bArrBitmap2Jpeg = wrapJpeg(true);
        } else {
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            matrix.postScale(fMin, fMin);
            f2 = fMin;
            bArrBitmap2Jpeg = com.huawei.hms.ml.common.utils.ImageConvertUtils.bitmap2Jpeg(android.graphics.Bitmap.createBitmap(wrapBitmap(), 0, 0, iIntValue, iIntValue2, matrix, true), 100);
        }
        return android.util.Pair.create(bArrBitmap2Jpeg, java.lang.Float.valueOf(f2));
    }

    public java.nio.ByteBuffer getByteBuffer() {
        return this.byteBuffer;
    }

    public final synchronized com.huawei.hms.mlsdk.common.MLFrame getFrame(boolean z, boolean z2) {
        if (this.frameInit.booleanValue()) {
            return this;
        }
        if (!z && this.byteBuffer != null) {
            int formatType = this.property.getFormatType();
            if (z2 && formatType != 17) {
                if (formatType == 842094169) {
                    this.byteBuffer = java.nio.ByteBuffer.wrap(com.huawei.hms.ml.common.utils.ImageConvertUtils.byteToNv21(com.huawei.hms.ml.common.utils.ImageConvertUtils.buffer2Byte(this.byteBuffer)));
                }
                com.huawei.hms.mlsdk.common.MLFrame.Property.Creator creator = new com.huawei.hms.mlsdk.common.MLFrame.Property.Creator();
                creator.setFormatType(17).setWidth(this.property.getWidth()).setHeight(this.property.getHeight()).setQuadrant(this.property.getQuadrant());
                this.property = creator.create();
                this.frameInit = java.lang.Boolean.TRUE;
                return this;
            }
            this.frameInit = java.lang.Boolean.TRUE;
            return this;
        }
        this.bitmap = getPreviewBitmap();
        this.property = new com.huawei.hms.mlsdk.common.MLFrame.Creator().setBitmap(readBitmap()).create().property;
        this.frameInit = java.lang.Boolean.TRUE;
        return this;
    }

    public android.graphics.Bitmap getPreviewBitmap() {
        if (this.bytes == null && this.byteBuffer == null && this.bitmap == null) {
            throw new java.lang.IllegalStateException("At least one of bytes, byteBuffer or bitmap should be not null");
        }
        return wrapBitmap();
    }

    public int getRecMode() {
        return this.recMode;
    }

    public final void initialize() {
        java.nio.ByteBuffer byteBuffer = this.byteBuffer;
        if (byteBuffer != null) {
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(byteBuffer.capacity());
            byteBuffer.rewind();
            byteBufferAllocate.put(byteBuffer);
            byteBuffer.rewind();
            byteBufferAllocate.flip();
            this.byteBuffer = byteBufferAllocate;
        }
    }

    public android.graphics.Bitmap readBitmap() {
        return this.bitmap;
    }

    public void setRecMode(int i) {
        this.recMode = i;
    }

    public final byte[] wrapJpeg(boolean z) throws java.io.IOException {
        byte[] bArr = this.bytes;
        if (bArr != null) {
            return bArr;
        }
        byte[] bArrNv21ToJpeg = null;
        if (this.byteBuffer != null) {
            int formatType = this.property.getFormatType();
            if (!isSupportedYuvFormat(formatType)) {
                throw new java.lang.IllegalStateException("Only support NV21 or YV12");
            }
            if (!z || this.property.getQuadrant() == 0) {
                byte[] bArrBuffer2Byte = com.huawei.hms.ml.common.utils.ImageConvertUtils.buffer2Byte(this.byteBuffer);
                if (842094169 == formatType) {
                    bArrBuffer2Byte = com.huawei.hms.ml.common.utils.ImageConvertUtils.byteToNv21(bArrBuffer2Byte);
                }
                bArrNv21ToJpeg = com.huawei.hms.ml.common.utils.ImageConvertUtils.nv21ToJpeg(bArrBuffer2Byte, this.property.getWidth(), this.property.getHeight());
                if (this.property.getQuadrant() == 0) {
                    this.bytes = bArrNv21ToJpeg;
                }
            }
        }
        if (bArrNv21ToJpeg != null) {
            return bArrNv21ToJpeg;
        }
        byte[] bArrBitmap2Jpeg = com.huawei.hms.ml.common.utils.ImageConvertUtils.bitmap2Jpeg(wrapBitmap(), 100);
        this.bytes = bArrBitmap2Jpeg;
        return bArrBitmap2Jpeg;
    }
}
