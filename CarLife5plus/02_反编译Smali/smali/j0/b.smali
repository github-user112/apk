.class public final Lj0/b;
.super Lx/r;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public L:Z

.field public M:Lf9/k;

.field public final N:La5/e;


# direct methods
.method public constructor <init>(ZLb0/k;ZLy2/g;Lf9/k;)V
    .locals 8

    .line 1
    new-instance v7, Lj0/a;

    .line 2
    .line 3
    invoke-direct {v7, p5, p1}, Lj0/a;-><init>(Lf9/k;Z)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p2

    .line 11
    move v4, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v0 .. v7}, Lx/f;-><init>(Lb0/k;Lx/r0;ZZLjava/lang/String;Ly2/g;Lf9/a;)V

    .line 14
    .line 15
    .line 16
    iput-boolean p1, v0, Lj0/b;->L:Z

    .line 17
    .line 18
    iput-object p5, v0, Lj0/b;->M:Lf9/k;

    .line 19
    .line 20
    new-instance p1, La5/e;

    .line 21
    .line 22
    const/16 p2, 0x8

    .line 23
    .line 24
    invoke-direct {p1, p2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lj0/b;->N:La5/e;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final D0(Ly2/j;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj0/b;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, La3/a;->a:La3/a;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, La3/a;->b:La3/a;

    .line 9
    .line 10
    :goto_0
    sget-object v1, Ly2/t;->a:[Lm9/u;

    .line 11
    .line 12
    sget-object v1, Ly2/r;->I:Ly2/u;

    .line 13
    .line 14
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 15
    .line 16
    const/16 v3, 0x18

    .line 17
    .line 18
    aget-object v2, v2, v3

    .line 19
    .line 20
    invoke-virtual {v1, p1, v0}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
