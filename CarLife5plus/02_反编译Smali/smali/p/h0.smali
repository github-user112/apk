.class public final Lp/h0;
.super Lp/u1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic j:Lp/n0;

.field public final synthetic k:Lp/q0;


# direct methods
.method public constructor <init>(Lp/q0;Lp/q0;Lp/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp/h0;->k:Lp/q0;

    .line 2
    .line 3
    iput-object p3, p0, Lp/h0;->j:Lp/n0;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lp/u1;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Lo/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp/h0;->j:Lp/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lp/h0;->k:Lp/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp/q0;->getInternalPopup()Lp/p0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lp/p0;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lp/q0;->f:Lp/p0;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-interface {v1, v2, v0}, Lp/p0;->m(II)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x1

    .line 27
    return v0
.end method
