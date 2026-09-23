.class public final Ly9/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly9/b;


# direct methods
.method public synthetic constructor <init>(Ly9/b;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly9/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly9/a;->b:Ly9/b;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Ly9/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ly9/a;->b:Ly9/b;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ly9/v;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ly9/v;-><init>(Lv9/e;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Leb/i;

    .line 15
    .line 16
    invoke-virtual {v1}, Ly9/b;->s0()Leb/o;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Leb/i;-><init>(Leb/o;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_1
    invoke-virtual {v1}, Ly9/b;->s0()Leb/o;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    new-instance v7, Lba/j;

    .line 29
    .line 30
    const/16 v0, 0x19

    .line 31
    .line 32
    invoke-direct {v7, v0, p0}, Lba/j;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Llb/v0;->a:Lnb/i;

    .line 36
    .line 37
    invoke-static {v1}, Lnb/l;->f(Lv9/k;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lnb/k;->k:Lnb/k;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v1}, Lv9/h;->t()Llb/k0;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v0, 0x0

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    if-eqz v6, :cond_1

    .line 66
    .line 67
    invoke-interface {v3}, Llb/k0;->m()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Llb/v0;->d(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    sget-object v2, Llb/h0;->c:Llb/h0;

    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v2 .. v7}, Llb/c;->v(Llb/h0;Llb/k0;Ljava/util/List;ZLeb/o;Lf9/k;)Llb/a0;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const/16 v1, 0xd

    .line 89
    .line 90
    invoke-static {v1}, Llb/v0;->a(I)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    const/16 v1, 0xc

    .line 95
    .line 96
    invoke-static {v1}, Llb/v0;->a(I)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
