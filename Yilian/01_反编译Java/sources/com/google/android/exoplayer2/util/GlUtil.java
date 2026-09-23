package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class GlUtil {
    public static final java.lang.String EXTENSION_PROTECTED_CONTENT = "EGL_EXT_protected_content";
    public static final java.lang.String EXTENSION_SURFACELESS_CONTEXT = "EGL_KHR_surfaceless_context";
    public static final java.lang.String TAG = "GlUtil";
    public static final int TEXTURE_ID_UNSET = -1;
    public static boolean glAssertionsEnabled = false;

    public static final class Api17 {
        public static android.opengl.EGLContext createEglContext(android.opengl.EGLDisplay eGLDisplay) throws com.google.android.exoplayer2.util.GlUtil.UnsupportedEglVersionException {
            android.opengl.EGLContext eGLContextEglCreateContext = android.opengl.EGL14.eglCreateContext(eGLDisplay, getEglConfig(eGLDisplay), android.opengl.EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
            if (eGLContextEglCreateContext != null) {
                com.google.android.exoplayer2.util.GlUtil.checkGlError();
                return eGLContextEglCreateContext;
            }
            android.opengl.EGL14.eglTerminate(eGLDisplay);
            throw new com.google.android.exoplayer2.util.GlUtil.UnsupportedEglVersionException();
        }

        public static android.opengl.EGLDisplay createEglDisplay() {
            android.opengl.EGLDisplay eGLDisplayEglGetDisplay = android.opengl.EGL14.eglGetDisplay(0);
            com.google.android.exoplayer2.util.GlUtil.checkEglException(!eGLDisplayEglGetDisplay.equals(android.opengl.EGL14.EGL_NO_DISPLAY), "No EGL display.");
            if (!android.opengl.EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0)) {
                com.google.android.exoplayer2.util.GlUtil.throwGlException("Error in eglInitialize.");
            }
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            return eGLDisplayEglGetDisplay;
        }

        public static void destroyEglContext(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLContext eGLContext) {
            if (eGLDisplay == null) {
                return;
            }
            android.opengl.EGLSurface eGLSurface = android.opengl.EGL14.EGL_NO_SURFACE;
            android.opengl.EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, android.opengl.EGL14.EGL_NO_CONTEXT);
            int iEglGetError = android.opengl.EGL14.eglGetError();
            boolean z = iEglGetError == 12288;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(36);
            sb.append("Error releasing context: ");
            sb.append(iEglGetError);
            com.google.android.exoplayer2.util.GlUtil.checkEglException(z, sb.toString());
            if (eGLContext != null) {
                android.opengl.EGL14.eglDestroyContext(eGLDisplay, eGLContext);
                int iEglGetError2 = android.opengl.EGL14.eglGetError();
                boolean z2 = iEglGetError2 == 12288;
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(37);
                sb2.append("Error destroying context: ");
                sb2.append(iEglGetError2);
                com.google.android.exoplayer2.util.GlUtil.checkEglException(z2, sb2.toString());
            }
            android.opengl.EGL14.eglReleaseThread();
            int iEglGetError3 = android.opengl.EGL14.eglGetError();
            boolean z3 = iEglGetError3 == 12288;
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder(35);
            sb3.append("Error releasing thread: ");
            sb3.append(iEglGetError3);
            com.google.android.exoplayer2.util.GlUtil.checkEglException(z3, sb3.toString());
            android.opengl.EGL14.eglTerminate(eGLDisplay);
            int iEglGetError4 = android.opengl.EGL14.eglGetError();
            boolean z4 = iEglGetError4 == 12288;
            java.lang.StringBuilder sb4 = new java.lang.StringBuilder(38);
            sb4.append("Error terminating display: ");
            sb4.append(iEglGetError4);
            com.google.android.exoplayer2.util.GlUtil.checkEglException(z4, sb4.toString());
        }

        public static void focusSurface(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLContext eGLContext, android.opengl.EGLSurface eGLSurface, int i, int i2) {
            int[] iArr = new int[1];
            android.opengl.GLES20.glGetIntegerv(36006, iArr, 0);
            if (iArr[0] != 0) {
                android.opengl.GLES20.glBindFramebuffer(36160, 0);
            }
            android.opengl.EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
            android.opengl.GLES20.glViewport(0, 0, i, i2);
        }

        public static android.opengl.EGLConfig getEglConfig(android.opengl.EGLDisplay eGLDisplay) {
            android.opengl.EGLConfig[] eGLConfigArr = new android.opengl.EGLConfig[1];
            if (!android.opengl.EGL14.eglChooseConfig(eGLDisplay, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12344}, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
                com.google.android.exoplayer2.util.GlUtil.throwGlException("eglChooseConfig failed.");
            }
            return eGLConfigArr[0];
        }

        public static android.opengl.EGLSurface getEglSurface(android.opengl.EGLDisplay eGLDisplay, java.lang.Object obj) {
            return android.opengl.EGL14.eglCreateWindowSurface(eGLDisplay, getEglConfig(eGLDisplay), obj, new int[]{12344}, 0);
        }
    }

    public static final class Attribute {
        public java.nio.Buffer buffer;
        public final int index;
        public final int location;
        public final java.lang.String name;
        public int size;

        public Attribute(java.lang.String str, int i, int i2) {
            this.name = str;
            this.index = i;
            this.location = i2;
        }

        public void bind() {
            java.nio.Buffer buffer = (java.nio.Buffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.buffer, "call setBuffer before bind");
            android.opengl.GLES20.glBindBuffer(34962, 0);
            android.opengl.GLES20.glVertexAttribPointer(this.location, this.size, 5126, false, 0, buffer);
            android.opengl.GLES20.glEnableVertexAttribArray(this.index);
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        public void setBuffer(float[] fArr, int i) {
            this.buffer = com.google.android.exoplayer2.util.GlUtil.createBuffer(fArr);
            this.size = i;
        }
    }

    public static final class GlException extends java.lang.RuntimeException {
        public GlException(java.lang.String str) {
            super(str);
        }
    }

    public static final class Program {
        public final int programId;

        public Program(android.content.Context context, java.lang.String str, java.lang.String str2) {
            this(com.google.android.exoplayer2.util.GlUtil.loadAsset(context, str), com.google.android.exoplayer2.util.GlUtil.loadAsset(context, str2));
        }

        public Program(java.lang.String str, java.lang.String str2) {
            this.programId = android.opengl.GLES20.glCreateProgram();
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            addShader(35633, str);
            addShader(35632, str2);
        }

        public Program(java.lang.String[] strArr, java.lang.String[] strArr2) {
            this(android.text.TextUtils.join("\n", strArr), android.text.TextUtils.join("\n", strArr2));
        }

        private void addShader(int i, java.lang.String str) {
            int iGlCreateShader = android.opengl.GLES20.glCreateShader(i);
            android.opengl.GLES20.glShaderSource(iGlCreateShader, str);
            android.opengl.GLES20.glCompileShader(iGlCreateShader);
            int[] iArr = {0};
            android.opengl.GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
            if (iArr[0] != 1) {
                java.lang.String strGlGetShaderInfoLog = android.opengl.GLES20.glGetShaderInfoLog(iGlCreateShader);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + java.lang.String.valueOf(strGlGetShaderInfoLog).length() + 10);
                sb.append(strGlGetShaderInfoLog);
                sb.append(", source: ");
                sb.append(str);
                com.google.android.exoplayer2.util.GlUtil.throwGlException(sb.toString());
            }
            android.opengl.GLES20.glAttachShader(this.programId, iGlCreateShader);
            android.opengl.GLES20.glDeleteShader(iGlCreateShader);
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        private com.google.android.exoplayer2.util.GlUtil.Attribute createAttribute(int i) {
            int[] iArr = new int[1];
            android.opengl.GLES20.glGetProgramiv(this.programId, 35722, iArr, 0);
            byte[] bArr = new byte[iArr[0]];
            int[] iArr2 = new int[1];
            int i2 = this.programId;
            int i3 = iArr[0];
            android.opengl.GLES20.glGetActiveAttrib(i2, i, i3, iArr2, 0, new int[1], 0, new int[1], 0, bArr, 0);
            java.lang.String str = new java.lang.String(bArr, 0, com.google.android.exoplayer2.util.GlUtil.strlen(bArr));
            return new com.google.android.exoplayer2.util.GlUtil.Attribute(str, i, getAttribLocation(str));
        }

        private com.google.android.exoplayer2.util.GlUtil.Uniform createUniform(int i) {
            int[] iArr = new int[1];
            android.opengl.GLES20.glGetProgramiv(this.programId, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            byte[] bArr = new byte[iArr[0]];
            int i2 = this.programId;
            int i3 = iArr[0];
            android.opengl.GLES20.glGetActiveUniform(i2, i, i3, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            java.lang.String str = new java.lang.String(bArr, 0, com.google.android.exoplayer2.util.GlUtil.strlen(bArr));
            return new com.google.android.exoplayer2.util.GlUtil.Uniform(str, getUniformLocation(str), iArr2[0]);
        }

        public void delete() {
            android.opengl.GLES20.glDeleteProgram(this.programId);
        }

        public int getAttribLocation(java.lang.String str) {
            return android.opengl.GLES20.glGetAttribLocation(this.programId, str);
        }

        public com.google.android.exoplayer2.util.GlUtil.Attribute[] getAttributes() {
            int[] iArr = new int[1];
            android.opengl.GLES20.glGetProgramiv(this.programId, 35721, iArr, 0);
            if (iArr[0] != 2) {
                throw new java.lang.IllegalStateException("Expected two attributes.");
            }
            com.google.android.exoplayer2.util.GlUtil.Attribute[] attributeArr = new com.google.android.exoplayer2.util.GlUtil.Attribute[iArr[0]];
            for (int i = 0; i < iArr[0]; i++) {
                attributeArr[i] = createAttribute(i);
            }
            return attributeArr;
        }

        public int getUniformLocation(java.lang.String str) {
            return android.opengl.GLES20.glGetUniformLocation(this.programId, str);
        }

        public com.google.android.exoplayer2.util.GlUtil.Uniform[] getUniforms() {
            int[] iArr = new int[1];
            android.opengl.GLES20.glGetProgramiv(this.programId, 35718, iArr, 0);
            com.google.android.exoplayer2.util.GlUtil.Uniform[] uniformArr = new com.google.android.exoplayer2.util.GlUtil.Uniform[iArr[0]];
            for (int i = 0; i < iArr[0]; i++) {
                uniformArr[i] = createUniform(i);
            }
            return uniformArr;
        }

        public void use() {
            android.opengl.GLES20.glLinkProgram(this.programId);
            int[] iArr = {0};
            android.opengl.GLES20.glGetProgramiv(this.programId, 35714, iArr, 0);
            if (iArr[0] != 1) {
                java.lang.String strValueOf = java.lang.String.valueOf(android.opengl.GLES20.glGetProgramInfoLog(this.programId));
                com.google.android.exoplayer2.util.GlUtil.throwGlException(strValueOf.length() != 0 ? "Unable to link shader program: \n".concat(strValueOf) : new java.lang.String("Unable to link shader program: \n"));
            }
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            android.opengl.GLES20.glUseProgram(this.programId);
        }
    }

    public static final class Uniform {
        public final int location;
        public final java.lang.String name;
        public int texId;
        public final int type;
        public int unit;
        public final float[] value = new float[16];

        public Uniform(java.lang.String str, int i, int i2) {
            this.name = str;
            this.location = i;
            this.type = i2;
        }

        public void bind() {
            int i = this.type;
            if (i == 5126) {
                android.opengl.GLES20.glUniform1fv(this.location, 1, this.value, 0);
            } else if (i == 35676) {
                android.opengl.GLES20.glUniformMatrix4fv(this.location, 1, false, this.value, 0);
            } else {
                if (this.texId == 0) {
                    throw new java.lang.IllegalStateException("Call setSamplerTexId before bind.");
                }
                android.opengl.GLES20.glActiveTexture(this.unit + 33984);
                int i2 = this.type;
                if (i2 == 36198) {
                    android.opengl.GLES20.glBindTexture(36197, this.texId);
                } else {
                    if (i2 != 35678) {
                        throw new java.lang.IllegalStateException(e.a.c.a.a.F(36, "Unexpected uniform type: ", this.type));
                    }
                    android.opengl.GLES20.glBindTexture(3553, this.texId);
                }
                android.opengl.GLES20.glUniform1i(this.location, this.unit);
                android.opengl.GLES20.glTexParameteri(3553, 10240, 9729);
                android.opengl.GLES20.glTexParameteri(3553, 10241, 9729);
                android.opengl.GLES20.glTexParameteri(3553, 10242, 33071);
                android.opengl.GLES20.glTexParameteri(3553, 10243, 33071);
            }
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
        }

        public void setFloat(float f2) {
            this.value[0] = f2;
        }

        public void setFloats(float[] fArr) {
            java.lang.System.arraycopy(fArr, 0, this.value, 0, fArr.length);
        }

        public void setSamplerTexId(int i, int i2) {
            this.texId = i;
            this.unit = i2;
        }
    }

    public static final class UnsupportedEglVersionException extends java.lang.Exception {
    }

    public static void checkEglException(boolean z, java.lang.String str) {
        if (z) {
            return;
        }
        throwGlException(str);
    }

    public static void checkGlError() {
        int i = 0;
        while (true) {
            int iGlGetError = android.opengl.GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            java.lang.String strValueOf = java.lang.String.valueOf(android.opengl.GLU.gluErrorString(iGlGetError));
            com.google.android.exoplayer2.util.Log.e(TAG, strValueOf.length() != 0 ? "glError ".concat(strValueOf) : new java.lang.String("glError "));
            i = iGlGetError;
        }
        if (i != 0) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(android.opengl.GLU.gluErrorString(i));
            throwGlException(strValueOf2.length() != 0 ? "glError ".concat(strValueOf2) : new java.lang.String("glError "));
        }
    }

    public static java.nio.FloatBuffer createBuffer(int i) {
        return java.nio.ByteBuffer.allocateDirect(i * 4).order(java.nio.ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static java.nio.FloatBuffer createBuffer(float[] fArr) {
        return (java.nio.FloatBuffer) createBuffer(fArr.length).put(fArr).flip();
    }

    public static android.opengl.EGLContext createEglContext(android.opengl.EGLDisplay eGLDisplay) {
        return com.google.android.exoplayer2.util.GlUtil.Api17.createEglContext(eGLDisplay);
    }

    public static android.opengl.EGLDisplay createEglDisplay() {
        return com.google.android.exoplayer2.util.GlUtil.Api17.createEglDisplay();
    }

    public static int createExternalTexture() {
        int[] iArr = new int[1];
        android.opengl.GLES20.glGenTextures(1, java.nio.IntBuffer.wrap(iArr));
        android.opengl.GLES20.glBindTexture(36197, iArr[0]);
        android.opengl.GLES20.glTexParameteri(36197, 10241, 9729);
        android.opengl.GLES20.glTexParameteri(36197, 10240, 9729);
        android.opengl.GLES20.glTexParameteri(36197, 10242, 33071);
        android.opengl.GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError();
        return iArr[0];
    }

    public static void deleteTexture(int i) {
        android.opengl.GLES20.glDeleteTextures(1, new int[]{i}, 0);
        checkGlError();
    }

    public static void destroyEglContext(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLContext eGLContext) {
        com.google.android.exoplayer2.util.GlUtil.Api17.destroyEglContext(eGLDisplay, eGLContext);
    }

    public static void focusSurface(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLContext eGLContext, android.opengl.EGLSurface eGLSurface, int i, int i2) {
        com.google.android.exoplayer2.util.GlUtil.Api17.focusSurface(eGLDisplay, eGLContext, eGLSurface, i, i2);
    }

    public static android.opengl.EGLSurface getEglSurface(android.opengl.EGLDisplay eGLDisplay, java.lang.Object obj) {
        return com.google.android.exoplayer2.util.GlUtil.Api17.getEglSurface(eGLDisplay, obj);
    }

    public static boolean isProtectedContentExtensionSupported(android.content.Context context) {
        java.lang.String strEglQueryString;
        int i = com.google.android.exoplayer2.util.Util.SDK_INT;
        if (i < 24) {
            return false;
        }
        if (i >= 26 || !("samsung".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) || "XT1650".equals(com.google.android.exoplayer2.util.Util.MODEL))) {
            return (com.google.android.exoplayer2.util.Util.SDK_INT >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = android.opengl.EGL14.eglQueryString(android.opengl.EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains(EXTENSION_PROTECTED_CONTENT);
        }
        return false;
    }

    public static boolean isSurfacelessContextExtensionSupported() {
        java.lang.String strEglQueryString;
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 17 && (strEglQueryString = android.opengl.EGL14.eglQueryString(android.opengl.EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains(EXTENSION_SURFACELESS_CONTEXT);
    }

    public static java.lang.String loadAsset(android.content.Context context, java.lang.String str) throws java.io.IOException {
        java.io.InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            return com.google.android.exoplayer2.util.Util.fromUtf8Bytes(com.google.android.exoplayer2.util.Util.toByteArray(inputStreamOpen));
        } finally {
            com.google.android.exoplayer2.util.Util.closeQuietly(inputStreamOpen);
        }
    }

    public static int strlen(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] == 0) {
                return i;
            }
        }
        return bArr.length;
    }

    public static void throwGlException(java.lang.String str) {
        com.google.android.exoplayer2.util.Log.e(TAG, str);
        if (glAssertionsEnabled) {
            throw new com.google.android.exoplayer2.util.GlUtil.GlException(str);
        }
    }
}
