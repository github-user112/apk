.class public Lb/b/c/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/f/b;


# instance fields
.field public final synthetic a:Lb/b/c/j;


# direct methods
.method public constructor <init>(Lb/b/c/j;)V
    .locals 0

    iput-object p1, p0, Lb/b/c/i;->a:Lb/b/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Lb/b/c/i;->a:Lb/b/c/j;

    invoke-virtual {p1}, Lb/b/c/j;->U0()Lb/b/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/c/l;->i()V

    iget-object v0, p0, Lb/b/c/i;->a:Lb/b/c/j;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->e:Lb/m/b;

    .line 2
    iget-object v0, v0, Lb/m/b;->b:Lb/m/a;

    const-string v1, "androidx:appcompat"

    .line 3
    invoke-virtual {v0, v1}, Lb/m/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/c/l;->l(Landroid/os/Bundle;)V

    return-void
.end method
