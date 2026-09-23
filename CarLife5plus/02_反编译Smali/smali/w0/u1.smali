.class public final synthetic Lw0/u1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw0/r1;


# direct methods
.method public synthetic constructor <init>(Lw0/r1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw0/u1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/u1;->b:Lw0/r1;

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
    .locals 6

    .line 1
    iget v0, p0, Lw0/u1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw0/u1;->b:Lw0/r1;

    .line 7
    .line 8
    iget-object v0, v0, Lw0/r1;->f:Lf9/a;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    iget-object v0, p0, Lw0/u1;->b:Lw0/r1;

    .line 19
    .line 20
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v1, v1, Lg3/w;->a:Lb3/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lw0/r1;->m()Lg3/w;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v2, v2, Lg3/w;->a:Lb3/g;

    .line 31
    .line 32
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-static {v3, v2}, Lb3/d0;->b(II)J

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v1, v2, v3}, Lw0/r1;->e(Lb3/g;J)Lg3/w;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, v0, Lw0/r1;->c:Lf9/k;

    .line 48
    .line 49
    invoke-interface {v2, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-wide v1, v1, Lg3/w;->b:J

    .line 53
    .line 54
    new-instance v3, Lb3/n0;

    .line 55
    .line 56
    invoke-direct {v3, v1, v2}, Lb3/n0;-><init>(J)V

    .line 57
    .line 58
    .line 59
    iput-object v3, v0, Lw0/r1;->v:Lb3/n0;

    .line 60
    .line 61
    iget-object v3, v0, Lw0/r1;->t:Lg3/w;

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x5

    .line 65
    invoke-static {v3, v4, v1, v2, v5}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lw0/r1;->t:Lg3/w;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lw0/r1;->h(Z)V

    .line 73
    .line 74
    .line 75
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 76
    .line 77
    return-object v0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lw0/u1;->b:Lw0/r1;

    .line 79
    .line 80
    iget-boolean v0, v0, Lw0/r1;->A:Z

    .line 81
    .line 82
    xor-int/lit8 v0, v0, 0x1

    .line 83
    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
