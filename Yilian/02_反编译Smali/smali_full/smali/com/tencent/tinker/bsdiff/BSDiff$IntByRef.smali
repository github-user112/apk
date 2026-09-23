.class public Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/bsdiff/BSDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntByRef"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/tinker/bsdiff/BSDiff$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;)I
    .locals 0

    iget p0, p0, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->value:I

    return p0
.end method

.method public static synthetic access$002(Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/tinker/bsdiff/BSDiff$IntByRef;->value:I

    return p1
.end method
