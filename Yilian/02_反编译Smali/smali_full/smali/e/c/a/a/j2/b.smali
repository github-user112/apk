.class public final synthetic Le/c/a/a/j2/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Le/c/b/a/k;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/c/a/a/j2/b;->a:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Le/c/a/a/j2/b;->a:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->b(I)Landroid/os/HandlerThread;

    move-result-object v0

    return-object v0
.end method
