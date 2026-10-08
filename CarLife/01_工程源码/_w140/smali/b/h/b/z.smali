.class public abstract Lb/h/b/z;
.super Lb/h/b/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/h/b/v;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lb/h/b/c0;


# direct methods
.method public constructor <init>(Lb/h/b/p;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Lb/h/b/v;-><init>()V

    new-instance v1, Lb/h/b/d0;

    invoke-direct {v1}, Lb/h/b/d0;-><init>()V

    iput-object v1, p0, Lb/h/b/z;->e:Lb/h/b/c0;

    iput-object p1, p0, Lb/h/b/z;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Lb/e/b/g;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/h/b/z;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Lb/e/b/g;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lb/h/b/z;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract f()Landroid/view/LayoutInflater;
.end method

.method public abstract g(Lb/h/b/m;)Z
.end method

.method public abstract h(Ljava/lang/String;)Z
.end method

.method public abstract i()V
.end method
