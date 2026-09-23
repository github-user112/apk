.class public final Lj/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Le/b;


# instance fields
.field public final synthetic a:Lj/j;


# direct methods
.method public constructor <init>(Lj/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/i;->a:Lj/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lc/o;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lj/i;->a:Lj/j;

    .line 2
    .line 3
    invoke-virtual {p1}, Lj/j;->l()Lj/q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lj/q;->a()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lc/o;->d:La5/f;

    .line 11
    .line 12
    iget-object p1, p1, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 13
    .line 14
    const-string v1, "androidx:appcompat"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/support/v4/media/session/t;->L0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lj/q;->c()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
