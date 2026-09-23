package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class ProjectionRenderer {
    public com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData leftMeshData;
    public int mvpMatrixHandle;
    public int positionHandle;
    public com.google.android.exoplayer2.util.GlUtil.Program program;
    public com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData rightMeshData;
    public int stereoMode;
    public int texCoordsHandle;
    public int textureHandle;
    public int uTexMatrixHandle;
    public static final java.lang.String[] VERTEX_SHADER_CODE = {"uniform mat4 uMvpMatrix;", "uniform mat3 uTexMatrix;", "attribute vec4 aPosition;", "attribute vec2 aTexCoords;", "varying vec2 vTexCoords;", "void main() {", "  gl_Position = uMvpMatrix * aPosition;", "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END};
    public static final java.lang.String[] FRAGMENT_SHADER_CODE = {"#extension GL_OES_EGL_image_external : require", "precision mediump float;", "uniform samplerExternalOES uTexture;", "varying vec2 vTexCoords;", "void main() {", "  gl_FragColor = texture2D(uTexture, vTexCoords);", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END};
    public static final float[] TEX_MATRIX_WHOLE = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] TEX_MATRIX_TOP = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};
    public static final float[] TEX_MATRIX_BOTTOM = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] TEX_MATRIX_LEFT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};
    public static final float[] TEX_MATRIX_RIGHT = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    public static class MeshData {
        public final int drawMode;
        public final java.nio.FloatBuffer textureBuffer;
        public final java.nio.FloatBuffer vertexBuffer;
        public final int vertexCount;

        public MeshData(com.google.android.exoplayer2.video.spherical.Projection.SubMesh subMesh) {
            this.vertexCount = subMesh.getVertexCount();
            this.vertexBuffer = com.google.android.exoplayer2.util.GlUtil.createBuffer(subMesh.vertices);
            this.textureBuffer = com.google.android.exoplayer2.util.GlUtil.createBuffer(subMesh.textureCoords);
            int i = subMesh.mode;
            this.drawMode = i != 1 ? i != 2 ? 4 : 6 : 5;
        }
    }

    public static boolean isSupported(com.google.android.exoplayer2.video.spherical.Projection projection) {
        com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh = projection.leftMesh;
        com.google.android.exoplayer2.video.spherical.Projection.Mesh mesh2 = projection.rightMesh;
        return mesh.getSubMeshCount() == 1 && mesh.getSubMesh(0).textureId == 0 && mesh2.getSubMeshCount() == 1 && mesh2.getSubMesh(0).textureId == 0;
    }

    public void draw(int i, float[] fArr, boolean z) {
        com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData meshData = z ? this.rightMeshData : this.leftMeshData;
        if (meshData == null) {
            return;
        }
        ((com.google.android.exoplayer2.util.GlUtil.Program) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.program)).use();
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        android.opengl.GLES20.glEnableVertexAttribArray(this.positionHandle);
        android.opengl.GLES20.glEnableVertexAttribArray(this.texCoordsHandle);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        int i2 = this.stereoMode;
        android.opengl.GLES20.glUniformMatrix3fv(this.uTexMatrixHandle, 1, false, i2 == 1 ? z ? TEX_MATRIX_BOTTOM : TEX_MATRIX_TOP : i2 == 2 ? z ? TEX_MATRIX_RIGHT : TEX_MATRIX_LEFT : TEX_MATRIX_WHOLE, 0);
        android.opengl.GLES20.glUniformMatrix4fv(this.mvpMatrixHandle, 1, false, fArr, 0);
        android.opengl.GLES20.glActiveTexture(33984);
        android.opengl.GLES20.glBindTexture(36197, i);
        android.opengl.GLES20.glUniform1i(this.textureHandle, 0);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        android.opengl.GLES20.glVertexAttribPointer(this.positionHandle, 3, 5126, false, 12, (java.nio.Buffer) meshData.vertexBuffer);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        android.opengl.GLES20.glVertexAttribPointer(this.texCoordsHandle, 2, 5126, false, 8, (java.nio.Buffer) meshData.textureBuffer);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        android.opengl.GLES20.glDrawArrays(meshData.drawMode, 0, meshData.vertexCount);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        android.opengl.GLES20.glDisableVertexAttribArray(this.positionHandle);
        android.opengl.GLES20.glDisableVertexAttribArray(this.texCoordsHandle);
    }

    public void init() {
        com.google.android.exoplayer2.util.GlUtil.Program program = new com.google.android.exoplayer2.util.GlUtil.Program(VERTEX_SHADER_CODE, FRAGMENT_SHADER_CODE);
        this.program = program;
        this.mvpMatrixHandle = program.getUniformLocation("uMvpMatrix");
        this.uTexMatrixHandle = this.program.getUniformLocation("uTexMatrix");
        this.positionHandle = this.program.getAttribLocation("aPosition");
        this.texCoordsHandle = this.program.getAttribLocation("aTexCoords");
        this.textureHandle = this.program.getUniformLocation("uTexture");
    }

    public void setProjection(com.google.android.exoplayer2.video.spherical.Projection projection) {
        if (isSupported(projection)) {
            this.stereoMode = projection.stereoMode;
            com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData meshData = new com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData(projection.leftMesh.getSubMesh(0));
            this.leftMeshData = meshData;
            if (!projection.singleMesh) {
                meshData = new com.google.android.exoplayer2.video.spherical.ProjectionRenderer.MeshData(projection.rightMesh.getSubMesh(0));
            }
            this.rightMeshData = meshData;
        }
    }

    public void shutdown() {
        com.google.android.exoplayer2.util.GlUtil.Program program = this.program;
        if (program != null) {
            program.delete();
        }
    }
}
