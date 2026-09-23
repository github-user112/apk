.class public final synthetic Lw0/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lf9/a;

.field public final synthetic b:Z

.field public final synthetic c:Ly1/f;

.field public final synthetic d:Ly1/k;


# direct methods
.method public synthetic constructor <init>(Lf9/a;ZLy1/f;Ly1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/h;->a:Lf9/a;

    .line 5
    .line 6
    iput-boolean p2, p0, Lw0/h;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lw0/h;->c:Ly1/f;

    .line 9
    .line 10
    iput-object p4, p0, Lw0/h;->d:Ly1/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lq2/j0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lq2/j0;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lq2/j0;->a:La2/c;

    .line 7
    .line 8
    iget-object v0, p0, Lw0/h;->a:Lf9/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lw0/h;->b:Z

    .line 24
    .line 25
    iget-object v1, p0, Lw0/h;->c:Ly1/f;

    .line 26
    .line 27
    iget-object v2, p0, Lw0/h;->d:Ly1/k;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, La2/c;->c0()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iget-object v0, p1, La2/c;->b:La2/b;

    .line 36
    .line 37
    invoke-virtual {v0}, La2/b;->J()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-interface {v7}, Ly1/o;->f()V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object v7, v0, La2/b;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v7, La2/d;

    .line 51
    .line 52
    const/high16 v8, -0x40800000    # -1.0f

    .line 53
    .line 54
    const/high16 v9, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-virtual {v7, v8, v9, v3, v4}, La2/d;->v(FFJ)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1, v2}, La2/c;->d(Ly1/f;Ly1/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v5, v6}, Lp9/v;->w(La2/b;J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    invoke-static {v0, v5, v6}, Lp9/v;->w(La2/b;J)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_1
    invoke-virtual {p1, v1, v2}, La2/c;->d(Ly1/f;Ly1/k;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 75
    .line 76
    return-object p1
.end method
