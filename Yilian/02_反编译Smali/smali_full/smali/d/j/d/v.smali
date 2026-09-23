.class public abstract Ld/j/d/v;
.super Ld/j/d/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ld/j/d/r;"
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Ld/j/d/y;


# direct methods
.method public constructor <init>(Ld/j/d/l;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Ld/j/d/r;-><init>()V

    new-instance v1, Ld/j/d/z;

    invoke-direct {v1}, Ld/j/d/z;-><init>()V

    iput-object v1, p0, Ld/j/d/v;->d:Ld/j/d/y;

    iput-object p1, p0, Ld/j/d/v;->a:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Ld/b/k/r;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/j/d/v;->b:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Ld/b/k/r;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Ld/j/d/v;->c:Landroid/os/Handler;

    return-void
.end method
