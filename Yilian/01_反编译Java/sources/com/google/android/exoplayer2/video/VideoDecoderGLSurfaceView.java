package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class VideoDecoderGLSurfaceView extends android.opengl.GLSurfaceView implements com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer {
    public final com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView.Renderer renderer;

    public static final class Renderer implements android.opengl.GLSurfaceView.Renderer {
        public static final java.lang.String FRAGMENT_SHADER = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n";
        public static final java.lang.String VERTEX_SHADER = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n";
        public int colorMatrixLocation;
        public com.google.android.exoplayer2.util.GlUtil.Program program;
        public com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer renderedOutputBuffer;
        public final android.opengl.GLSurfaceView surfaceView;
        public static final float[] kColorConversion601 = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};
        public static final float[] kColorConversion709 = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};
        public static final float[] kColorConversion2020 = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};
        public static final java.lang.String[] TEXTURE_UNIFORMS = {"y_tex", "u_tex", "v_tex"};
        public static final java.nio.FloatBuffer TEXTURE_VERTICES = com.google.android.exoplayer2.util.GlUtil.createBuffer(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});
        public final int[] yuvTextures = new int[3];
        public final int[] texLocations = new int[3];
        public final int[] previousWidths = new int[3];
        public final int[] previousStrides = new int[3];
        public final java.util.concurrent.atomic.AtomicReference<com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer> pendingOutputBufferReference = new java.util.concurrent.atomic.AtomicReference<>();
        public final java.nio.FloatBuffer[] textureCoords = new java.nio.FloatBuffer[3];

        public Renderer(android.opengl.GLSurfaceView gLSurfaceView) {
            this.surfaceView = gLSurfaceView;
            for (int i = 0; i < 3; i++) {
                int[] iArr = this.previousWidths;
                this.previousStrides[i] = -1;
                iArr[i] = -1;
            }
        }

        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"program"})
        private void setupTextures() {
            android.opengl.GLES20.glGenTextures(3, this.yuvTextures, 0);
            for (int i = 0; i < 3; i++) {
                android.opengl.GLES20.glUniform1i(this.program.getUniformLocation(TEXTURE_UNIFORMS[i]), i);
                android.opengl.GLES20.glActiveTexture(33984 + i);
                android.opengl.GLES20.glBindTexture(3553, this.yuvTextures[i]);
                android.opengl.GLES20.glTexParameterf(3553, 10241, 9729.0f);
                android.opengl.GLES20.glTexParameterf(3553, 10240, 9729.0f);
                android.opengl.GLES20.glTexParameterf(3553, 10242, 33071.0f);
                android.opengl.GLES20.glTexParameterf(3553, 10243, 33071.0f);
            }
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl10) {
            com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer andSet = this.pendingOutputBufferReference.getAndSet(null);
            if (andSet == null && this.renderedOutputBuffer == null) {
                return;
            }
            if (andSet != null) {
                com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.renderedOutputBuffer;
                if (videoDecoderOutputBuffer != null) {
                    videoDecoderOutputBuffer.release();
                }
                this.renderedOutputBuffer = andSet;
            }
            com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.renderedOutputBuffer);
            float[] fArr = kColorConversion709;
            int i = videoDecoderOutputBuffer2.colorspace;
            if (i == 1) {
                fArr = kColorConversion601;
            } else if (i == 3) {
                fArr = kColorConversion2020;
            }
            android.opengl.GLES20.glUniformMatrix3fv(this.colorMatrixLocation, 1, false, fArr, 0);
            int[] iArr = (int[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvStrides);
            java.nio.ByteBuffer[] byteBufferArr = (java.nio.ByteBuffer[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(videoDecoderOutputBuffer2.yuvPlanes);
            int i2 = 0;
            while (i2 < 3) {
                int i3 = i2 == 0 ? videoDecoderOutputBuffer2.height : (videoDecoderOutputBuffer2.height + 1) / 2;
                android.opengl.GLES20.glActiveTexture(33984 + i2);
                android.opengl.GLES20.glBindTexture(3553, this.yuvTextures[i2]);
                android.opengl.GLES20.glPixelStorei(3317, 1);
                android.opengl.GLES20.glTexImage2D(3553, 0, 6409, iArr[i2], i3, 0, 6409, 5121, byteBufferArr[i2]);
                i2++;
            }
            int i4 = (iArr[0] + 1) / 2;
            int[] iArr2 = {videoDecoderOutputBuffer2.width, i4, i4};
            for (int i5 = 0; i5 < 3; i5++) {
                if (this.previousWidths[i5] != iArr2[i5] || this.previousStrides[i5] != iArr[i5]) {
                    com.google.android.exoplayer2.util.Assertions.checkState(iArr[i5] != 0);
                    float f2 = iArr2[i5] / iArr[i5];
                    this.textureCoords[i5] = com.google.android.exoplayer2.util.GlUtil.createBuffer(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f2, 0.0f, f2, 1.0f});
                    android.opengl.GLES20.glVertexAttribPointer(this.texLocations[i5], 2, 5126, false, 0, (java.nio.Buffer) this.textureCoords[i5]);
                    this.previousWidths[i5] = iArr2[i5];
                    this.previousStrides[i5] = iArr[i5];
                }
            }
            android.opengl.GLES20.glClear(16384);
            android.opengl.GLES20.glDrawArrays(5, 0, 4);
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl10, int i, int i2) {
            android.opengl.GLES20.glViewport(0, 0, i, i2);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl10, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            com.google.android.exoplayer2.util.GlUtil.Program program = new com.google.android.exoplayer2.util.GlUtil.Program(VERTEX_SHADER, FRAGMENT_SHADER);
            this.program = program;
            program.use();
            int attribLocation = this.program.getAttribLocation("in_pos");
            android.opengl.GLES20.glEnableVertexAttribArray(attribLocation);
            android.opengl.GLES20.glVertexAttribPointer(attribLocation, 2, 5126, false, 0, (java.nio.Buffer) TEXTURE_VERTICES);
            this.texLocations[0] = this.program.getAttribLocation("in_tc_y");
            android.opengl.GLES20.glEnableVertexAttribArray(this.texLocations[0]);
            this.texLocations[1] = this.program.getAttribLocation("in_tc_u");
            android.opengl.GLES20.glEnableVertexAttribArray(this.texLocations[1]);
            this.texLocations[2] = this.program.getAttribLocation("in_tc_v");
            android.opengl.GLES20.glEnableVertexAttribArray(this.texLocations[2]);
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            this.colorMatrixLocation = this.program.getUniformLocation("mColorConversion");
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            setupTextures();
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        public void setOutputBuffer(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
            com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer andSet = this.pendingOutputBufferReference.getAndSet(videoDecoderOutputBuffer);
            if (andSet != null) {
                andSet.release();
            }
            this.surfaceView.requestRender();
        }
    }

    public VideoDecoderGLSurfaceView(android.content.Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.renderer = new com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView.Renderer(this);
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(this.renderer);
        setRenderMode(0);
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer
    public void setOutputBuffer(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.renderer.setOutputBuffer(videoDecoderOutputBuffer);
    }
}
