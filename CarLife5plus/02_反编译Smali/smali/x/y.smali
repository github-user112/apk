.class public final Lx/y;
.super Lr1/o;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/o;


# instance fields
.field public final o:Lb0/k;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Lb0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1/o;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/y;->o:Lb0/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic F()V
    .locals 0

    .line 1
    return-void
.end method

.method public final q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lr1/o;->m0()Lac/w;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lb8/g;

    .line 6
    .line 7
    const/16 v2, 0x16

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, v3, v2}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-static {v0, v3, v1, v2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final v(Lq2/j0;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v1, p1, Lq2/j0;->a:La2/c;

    .line 5
    .line 6
    iget-boolean v2, p0, Lx/y;->p:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    sget-wide v2, Ly1/q;->b:J

    .line 11
    .line 12
    const v4, 0x3e99999a    # 0.3f

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v2, v3}, Ly1/q;->b(FJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v1, v1, La2/c;->b:La2/b;

    .line 20
    .line 21
    invoke-virtual {v1}, La2/b;->J()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const/16 v7, 0x7a

    .line 26
    .line 27
    move-wide v1, v2

    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    invoke-static/range {v0 .. v7}, La2/f;->x(La2/g;JJJI)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-boolean v0, p0, Lx/y;->q:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-boolean v0, p0, Lx/y;->r:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    :goto_0
    sget-wide v2, Ly1/q;->b:J

    .line 46
    .line 47
    const v0, 0x3dcccccd    # 0.1f

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v2, v3}, Ly1/q;->b(FJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iget-object v0, v1, La2/c;->b:La2/b;

    .line 55
    .line 56
    invoke-virtual {v0}, La2/b;->J()J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    const/16 v7, 0x7a

    .line 61
    .line 62
    move-wide v1, v2

    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    move-object v0, p1

    .line 66
    invoke-static/range {v0 .. v7}, La2/f;->x(La2/g;JJJI)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
