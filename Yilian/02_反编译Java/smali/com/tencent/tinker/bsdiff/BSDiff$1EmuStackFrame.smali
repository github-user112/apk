.class public Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/bsdiff/BSDiff;->split([I[IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmuStackFrame"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public jj:I

.field public k:I

.field public kk:I

.field public len:I

.field public start:I

.field public stmRetLabel:I

.field public x:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->stmRetLabel:I

    iput p2, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->start:I

    iput p3, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->len:I

    iput p4, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->i:I

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->j:I

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->k:I

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->x:I

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->jj:I

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$1EmuStackFrame;->kk:I

    return-void
.end method
