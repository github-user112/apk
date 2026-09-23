.class public final Lcom/google/android/exoplayer2/util/GlUtil$Uniform;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniform"
.end annotation


# instance fields
.field public final location:I

.field public final name:Ljava/lang/String;

.field public texId:I

.field public final type:I

.field public unit:I

.field public final value:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->name:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1406

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_1

    :cond_0
    const v3, 0x8b5c    # 4.9993E-41f

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    if-eqz v0, :cond_4

    const v0, 0x84c0

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const v1, 0x8d66

    const/16 v2, 0xde1

    if-ne v0, v1, :cond_2

    const v0, 0x8d65

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_2
    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->location:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :goto_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->type:I

    const/16 v2, 0x24

    const-string v3, "Unexpected uniform type: "

    invoke-static {v2, v3, v1}, Le/a/c/a/a;->F(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call setSamplerTexId before bind."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloat(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setFloats([F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->value:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setSamplerTexId(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->texId:I

    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Uniform;->unit:I

    return-void
.end method
