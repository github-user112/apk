.class public final Lc1/v0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lb3/i0;

.field public final synthetic e:Lb0/k;

.field public final synthetic f:Lf9/n;

.field public final synthetic g:Lf9/n;

.field public final synthetic h:Lc1/q2;

.field public final synthetic i:Ly1/l0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ly1/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/v0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lc1/v0;->b:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/v0;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lc1/v0;->d:Lb3/i0;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/v0;->e:Lb0/k;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/v0;->f:Lf9/n;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/v0;->g:Lf9/n;

    .line 14
    .line 15
    iput-object p8, p0, Lc1/v0;->h:Lc1/q2;

    .line 16
    .line 17
    iput-object p9, p0, Lc1/v0;->i:Ly1/l0;

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    move-object v2, p1

    .line 2
    check-cast v2, Lf9/n;

    .line 3
    .line 4
    move-object/from16 v12, p2

    .line 5
    .line 6
    check-cast v12, Lf1/s;

    .line 7
    .line 8
    move-object/from16 p1, p3

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    and-int/lit8 v0, p1, 0x6

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v12, v2}, Lf1/s;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x2

    .line 29
    :goto_0
    or-int/2addr p1, v0

    .line 30
    :cond_1
    and-int/lit8 v0, p1, 0x13

    .line 31
    .line 32
    const/16 v1, 0x12

    .line 33
    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v12}, Lf1/s;->z()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v12}, Lf1/s;->Q()V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    sget-object v0, Lc1/t0;->a:Lc1/t0;

    .line 48
    .line 49
    new-instance v1, Lc1/u0;

    .line 50
    .line 51
    iget-object v3, p0, Lc1/v0;->i:Ly1/l0;

    .line 52
    .line 53
    iget-boolean v4, p0, Lc1/v0;->b:Z

    .line 54
    .line 55
    iget-object v6, p0, Lc1/v0;->e:Lb0/k;

    .line 56
    .line 57
    iget-object v9, p0, Lc1/v0;->h:Lc1/q2;

    .line 58
    .line 59
    invoke-direct {v1, v4, v6, v9, v3}, Lc1/u0;-><init>(ZLb0/k;Lc1/q2;Ly1/l0;)V

    .line 60
    .line 61
    .line 62
    const v3, 0x7db22be0

    .line 63
    .line 64
    .line 65
    invoke-static {v3, v1, v12}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    shl-int/lit8 p1, p1, 0x3

    .line 70
    .line 71
    and-int/lit8 v13, p1, 0x70

    .line 72
    .line 73
    iget-object v1, p0, Lc1/v0;->a:Ljava/lang/String;

    .line 74
    .line 75
    move v3, v4

    .line 76
    iget-boolean v4, p0, Lc1/v0;->c:Z

    .line 77
    .line 78
    iget-object v5, p0, Lc1/v0;->d:Lb3/i0;

    .line 79
    .line 80
    iget-object v7, p0, Lc1/v0;->f:Lf9/n;

    .line 81
    .line 82
    iget-object v8, p0, Lc1/v0;->g:Lf9/n;

    .line 83
    .line 84
    const/4 v10, 0x0

    .line 85
    invoke-virtual/range {v0 .. v13}, Lc1/t0;->b(Ljava/lang/String;Lf9/n;ZZLb3/i0;Lb0/k;Lf9/n;Lf9/n;Lc1/q2;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 86
    .line 87
    .line 88
    :goto_2
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 89
    .line 90
    return-object p1
.end method
