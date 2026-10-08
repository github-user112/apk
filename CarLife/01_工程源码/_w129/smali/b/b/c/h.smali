.class public Lb/b/c/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/a$b;


# instance fields
.field public final synthetic a:Lb/b/c/j;


# direct methods
.method public constructor <init>(Lb/b/c/j;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/h;->a:Lb/b/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/b/c/h;->a:Lb/b/c/j;

    invoke-virtual {v1}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/b/c/l;->p(Landroid/os/Bundle;)V

    return-object v0
.end method
