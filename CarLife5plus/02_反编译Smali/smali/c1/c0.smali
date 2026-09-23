.class public final Lc1/c0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc1/d0;


# direct methods
.method public synthetic constructor <init>(Lc1/d0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc1/c0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lc1/c0;->b:Lc1/d0;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lc1/c0;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc1/c0;->b:Lc1/d0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lc1/h1;->b:Lf1/c0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lc1/f1;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Lc1/d0;->u:Lb1/c;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lq2/m;->B0(Lq2/l;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v1, Lc1/d0;->u:Lb1/c;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v6, Lc1/b0;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {v6, v0, v1}, Lc1/b0;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lc1/c0;

    .line 37
    .line 38
    invoke-direct {v7, v1, v0}, Lc1/c0;-><init>(Lc1/d0;I)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v1, Lc1/d0;->q:Lb0/k;

    .line 42
    .line 43
    iget-boolean v4, v1, Lc1/d0;->r:Z

    .line 44
    .line 45
    iget v5, v1, Lc1/d0;->s:F

    .line 46
    .line 47
    sget-object v0, Lb1/l;->a:Lv/v0;

    .line 48
    .line 49
    new-instance v2, Lb1/c;

    .line 50
    .line 51
    invoke-direct/range {v2 .. v7}, Lb1/c;-><init>(Lb0/k;ZFLc1/b0;Lc1/c0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lq2/m;->A0(Lq2/l;)Lq2/l;

    .line 55
    .line 56
    .line 57
    iput-object v2, v1, Lc1/d0;->u:Lb1/c;

    .line 58
    .line 59
    :cond_1
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lc1/h1;->b:Lf1/c0;

    .line 63
    .line 64
    invoke-static {v1, v0}, Lq2/f;->i(Lq2/k;Lf1/t1;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lc1/f1;

    .line 69
    .line 70
    sget-object v0, Lc1/g1;->a:Lb1/g;

    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
