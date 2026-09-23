.class public final Le2/e0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le2/f0;


# direct methods
.method public synthetic constructor <init>(Le2/f0;I)V
    .locals 0

    .line 1
    iput p2, p0, Le2/e0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Le2/e0;->b:Le2/f0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Le2/e0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, La2/g;

    .line 7
    .line 8
    iget-object v0, p0, Le2/e0;->b:Le2/f0;

    .line 9
    .line 10
    iget-object v1, v0, Le2/f0;->b:Le2/c;

    .line 11
    .line 12
    iget v2, v0, Le2/f0;->k:F

    .line 13
    .line 14
    iget v0, v0, Le2/f0;->l:F

    .line 15
    .line 16
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, La2/b;->J()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-virtual {v3}, La2/b;->z()Ly1/o;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-interface {v6}, Ly1/o;->f()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v6, v3, La2/b;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v6, La2/d;

    .line 34
    .line 35
    const-wide/16 v7, 0x0

    .line 36
    .line 37
    invoke-virtual {v6, v2, v0, v7, v8}, La2/d;->v(FFJ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Le2/c;->a(La2/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4, v5}, Lp9/v;->w(La2/b;J)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 47
    .line 48
    return-object p1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    invoke-static {v3, v4, v5}, Lp9/v;->w(La2/b;J)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :pswitch_0
    check-cast p1, Le2/d0;

    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    iget-object v0, p0, Le2/e0;->b:Le2/f0;

    .line 58
    .line 59
    iput-boolean p1, v0, Le2/f0;->d:Z

    .line 60
    .line 61
    iget-object p1, v0, Le2/f0;->f:Lg9/n;

    .line 62
    .line 63
    invoke-interface {p1}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
