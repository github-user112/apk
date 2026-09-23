.class public final synthetic Ll0/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Lf9/o;Ll5/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    iput v0, p0, Ll0/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/u;->b:Ljava/lang/Object;

    check-cast p2, Lg9/j;

    iput-object p2, p0, Ll0/u;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/u;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Ll0/u;->a:I

    iput-object p1, p0, Ll0/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll0/u;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll0/u;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz/f;Lz/f2;Lac/v0;Lz/q1;)V
    .locals 0

    .line 3
    const/16 p2, 0xe

    iput p2, p0, Ll0/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/u;->b:Ljava/lang/Object;

    iput-object p3, p0, Ll0/u;->c:Ljava/lang/Object;

    iput-object p4, p0, Ll0/u;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    iget v0, v1, Ll0/u;->a:I

    const-string v4, "$controller"

    const-string v5, "$this$DisposableEffect"

    const-string v6, "it"

    const-wide/16 v8, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    const-wide v16, 0xffffffffL

    const/4 v2, 0x0

    sget-object v3, Lr8/z;->a:Lr8/z;

    iget-object v7, v1, Ll0/u;->d:Ljava/lang/Object;

    iget-object v10, v1, Ll0/u;->c:Ljava/lang/Object;

    iget-object v12, v1, Ll0/u;->b:Ljava/lang/Object;

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    check-cast v12, Ll2/d;

    iget-object v0, v12, Ll2/d;->b:Ll2/c;

    iget-object v4, v12, Ll2/d;->a:Ll2/c;

    check-cast v10, Lk2/a0;

    check-cast v7, Lz/f0;

    move-object/from16 v5, p1

    check-cast v5, Lk2/w;

    .line 1
    invoke-static {v12, v5, v8, v9}, La/a;->l(Ll2/d;Lk2/w;J)V

    .line 2
    check-cast v10, Lk2/n0;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v10}, Lq2/f;->v(Lq2/l;)Lq2/h0;

    move-result-object v5

    .line 4
    iget-object v5, v5, Lq2/h0;->z:Lr2/q2;

    .line 5
    invoke-interface {v5}, Lr2/q2;->e()F

    move-result v5

    .line 6
    invoke-static {v5, v5}, Lg5/a;->s(FF)J

    move-result-wide v5

    .line 7
    invoke-static {v5, v6}, Ln3/q;->b(J)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    invoke-static {v5, v6}, Ln3/q;->c(J)F

    move-result v10

    cmpl-float v10, v10, v11

    if-lez v10, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ln3/q;->g(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-static {v10}, Ln2/a;->b(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-static {v5, v6}, Ln3/q;->b(J)F

    move-result v10

    invoke-virtual {v4, v10}, Ll2/c;->b(F)F

    move-result v10

    .line 11
    invoke-static {v5, v6}, Ln3/q;->c(J)F

    move-result v5

    invoke-virtual {v0, v5}, Ll2/c;->b(F)F

    move-result v5

    .line 12
    invoke-static {v10, v5}, Lg5/a;->s(FF)J

    move-result-wide v5

    .line 13
    iget-object v10, v4, Ll2/c;->d:[Ll2/a;

    .line 14
    array-length v13, v10

    .line 15
    invoke-static {v2, v13, v15, v10}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 16
    iput v2, v4, Ll2/c;->e:I

    .line 17
    iget-object v4, v0, Ll2/c;->d:[Ll2/a;

    .line 18
    array-length v10, v4

    .line 19
    invoke-static {v2, v10, v15, v4}, Ls8/l;->T(IILjava/lang/Object;[Ljava/lang/Object;)V

    .line 20
    iput v2, v0, Ll2/c;->e:I

    .line 21
    iput-wide v8, v12, Ll2/d;->c:J

    .line 22
    iget-object v0, v7, Lz/f0;->u:Lcc/h;

    if-eqz v0, :cond_3

    .line 23
    new-instance v2, Lz/n;

    sget-object v4, Lz/h0;->a:Lz/g0;

    .line 24
    invoke-static {v5, v6}, Ln3/q;->b(J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v5, v6}, Ln3/q;->b(J)F

    move-result v4

    :goto_1
    invoke-static {v5, v6}, Ln3/q;->c(J)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5, v6}, Ln3/q;->c(J)F

    move-result v11

    :goto_2
    invoke-static {v4, v11}, Lg5/a;->s(FF)J

    move-result-wide v4

    .line 25
    invoke-direct {v2, v4, v5}, Lz/n;-><init>(J)V

    invoke-interface {v0, v2}, Lcc/x;->x(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v3

    .line 26
    :pswitch_0
    check-cast v12, Lz/f;

    check-cast v10, Lac/v0;

    check-cast v7, Lz/q1;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 27
    iget-boolean v2, v12, Lz/f;->q:Z

    if-eqz v2, :cond_4

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    :goto_3
    mul-float v2, v18, v0

    .line 28
    iget-object v4, v12, Lz/f;->p:Lz/s1;

    .line 29
    invoke-virtual {v4, v2}, Lz/s1;->h(F)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lz/s1;->e(J)J

    move-result-wide v5

    .line 30
    iget-object v2, v7, Lz/q1;->a:Lz/s1;

    .line 31
    iget-object v7, v2, Lz/s1;->k:Lz/c1;

    .line 32
    invoke-virtual {v2, v7, v5, v6, v11}, Lz/s1;->c(Lz/c1;JI)J

    move-result-wide v5

    .line 33
    invoke-virtual {v4, v5, v6}, Lz/s1;->e(J)J

    move-result-wide v5

    .line 34
    invoke-virtual {v4, v5, v6}, Lz/s1;->g(J)F

    move-result v2

    mul-float v2, v2, v18

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Scroll animation cancelled because scroll was not consumed ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, " < "

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 40
    invoke-interface {v10, v2}, Lac/v0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    return-object v3

    .line 41
    :pswitch_1
    check-cast v12, Lf9/n;

    check-cast v10, Lf1/b1;

    check-cast v7, Lf1/b1;

    move-object/from16 v0, p1

    check-cast v0, Lj8/k0;

    .line 42
    invoke-static {v0, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, v0, Lj8/k0;->a:Ljava/lang/String;

    .line 44
    sget v2, Ly7/u;->c:I

    .line 45
    invoke-interface {v10, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 46
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v12, v0, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-interface {v7, v2}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 49
    :pswitch_2
    check-cast v12, Lw0/r1;

    check-cast v10, Lac/w;

    check-cast v7, Landroid/content/Context;

    move-object/from16 v0, p1

    check-cast v0, Ln0/a;

    .line 50
    invoke-virtual {v0}, Ln0/a;->a()V

    iget-object v4, v0, Ln0/a;->a:Ls/d0;

    .line 51
    sget-object v5, Ll0/x0;->d:Ll0/x0;

    .line 52
    invoke-virtual {v12}, Lw0/r1;->m()Lg3/w;

    move-result-object v5

    .line 53
    iget-wide v5, v5, Lg3/w;->b:J

    .line 54
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    move-result v5

    if-nez v5, :cond_6

    .line 55
    iget-object v5, v12, Lw0/r1;->l:Lf1/k1;

    .line 56
    invoke-virtual {v5}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 57
    :goto_4
    new-instance v6, Lw0/j1;

    invoke-direct {v6, v12, v15, v11}, Lw0/j1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 58
    new-instance v8, La8/n0;

    invoke-direct {v8, v10, v6}, La8/n0;-><init>(Lac/w;Lf9/k;)V

    .line 59
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v9, Lw0/z0;

    invoke-direct {v9, v8, v15, v11}, Lw0/z0;-><init>(Lf9/a;Lf9/a;I)V

    if-eqz v5, :cond_7

    const v5, 0x1040003

    .line 60
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    new-instance v6, Lo0/d;

    sget-object v8, Lo0/e;->a:Ljava/lang/Object;

    const v2, 0x1010311

    invoke-direct {v6, v8, v5, v2, v9}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 62
    invoke-virtual {v4, v6}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 63
    :cond_7
    sget-object v2, Ll0/x0;->d:Ll0/x0;

    .line 64
    invoke-virtual {v12}, Lw0/r1;->m()Lg3/w;

    move-result-object v2

    .line 65
    iget-wide v5, v2, Lg3/w;->b:J

    .line 66
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    move-result v2

    .line 67
    new-instance v5, Lw0/j1;

    invoke-direct {v5, v12, v15, v14}, Lw0/j1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 68
    new-instance v6, La8/n0;

    invoke-direct {v6, v10, v5}, La8/n0;-><init>(Lac/w;Lf9/k;)V

    .line 69
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v8, Lw0/z0;

    invoke-direct {v8, v6, v15, v11}, Lw0/z0;-><init>(Lf9/a;Lf9/a;I)V

    if-nez v2, :cond_8

    const v2, 0x1040001

    .line 70
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    new-instance v5, Lo0/d;

    sget-object v6, Lo0/e;->b:Ljava/lang/Object;

    const v9, 0x1010312

    invoke-direct {v5, v6, v2, v9, v8}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 72
    invoke-virtual {v4, v5}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 73
    :cond_8
    sget-object v2, Ll0/x0;->d:Ll0/x0;

    .line 74
    iget-object v2, v12, Lw0/r1;->l:Lf1/k1;

    .line 75
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 76
    iget-object v2, v12, Lw0/r1;->w:Lf1/k1;

    .line 77
    invoke-virtual {v2}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/c1;

    if-eqz v2, :cond_9

    .line 78
    iget-object v2, v2, Lr2/c1;->a:Landroid/content/ClipData;

    .line 79
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    const-string v5, "text/*"

    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v11, :cond_9

    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 80
    :goto_5
    new-instance v5, Lw0/j1;

    invoke-direct {v5, v12, v15, v13}, Lw0/j1;-><init>(Lw0/r1;Lw8/c;I)V

    .line 81
    new-instance v6, La8/n0;

    invoke-direct {v6, v10, v5}, La8/n0;-><init>(Lac/w;Lf9/k;)V

    .line 82
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v8, Lw0/z0;

    invoke-direct {v8, v6, v15, v11}, Lw0/z0;-><init>(Lf9/a;Lf9/a;I)V

    if-eqz v2, :cond_a

    const v2, 0x104000b

    .line 83
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v5, Lo0/d;

    sget-object v6, Lo0/e;->c:Ljava/lang/Object;

    const v9, 0x1010313

    invoke-direct {v5, v6, v2, v9, v8}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 85
    invoke-virtual {v4, v5}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 86
    :cond_a
    sget-object v2, Ll0/x0;->d:Ll0/x0;

    .line 87
    invoke-virtual {v12}, Lw0/r1;->m()Lg3/w;

    move-result-object v2

    .line 88
    iget-wide v5, v2, Lg3/w;->b:J

    .line 89
    invoke-static {v5, v6}, Lb3/n0;->d(J)I

    move-result v2

    invoke-virtual {v12}, Lw0/r1;->m()Lg3/w;

    move-result-object v5

    .line 90
    iget-object v5, v5, Lg3/w;->a:Lb3/g;

    .line 91
    iget-object v5, v5, Lb3/g;->b:Ljava/lang/String;

    .line 92
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_b

    const/4 v2, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 93
    :goto_6
    new-instance v5, Lw0/u1;

    const/4 v6, 0x0

    invoke-direct {v5, v12, v6}, Lw0/u1;-><init>(Lw0/r1;I)V

    new-instance v6, Lw0/u1;

    invoke-direct {v6, v12, v11}, Lw0/u1;-><init>(Lw0/r1;I)V

    .line 94
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v9, Lw0/z0;

    invoke-direct {v9, v6, v5, v11}, Lw0/z0;-><init>(Lf9/a;Lf9/a;I)V

    if-eqz v2, :cond_c

    const v2, 0x104000d

    .line 95
    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    new-instance v5, Lo0/d;

    sget-object v6, Lo0/e;->d:Ljava/lang/Object;

    const v8, 0x101037e

    invoke-direct {v5, v6, v2, v8, v9}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 97
    invoke-virtual {v4, v5}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 98
    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_e

    .line 99
    sget-object v2, Ll0/x0;->d:Ll0/x0;

    .line 100
    iget-object v5, v12, Lw0/r1;->l:Lf1/k1;

    .line 101
    invoke-virtual {v5}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 102
    invoke-virtual {v12}, Lw0/r1;->m()Lg3/w;

    move-result-object v5

    .line 103
    iget-wide v5, v5, Lg3/w;->b:J

    .line 104
    invoke-static {v5, v6}, Lb3/n0;->c(J)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v22, 0x1

    goto :goto_7

    :cond_d
    const/16 v22, 0x0

    .line 105
    :goto_7
    new-instance v5, Lw0/u1;

    invoke-direct {v5, v12, v14}, Lw0/u1;-><init>(Lw0/r1;I)V

    .line 106
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Lw0/z0;

    invoke-direct {v7, v5, v15, v11}, Lw0/z0;-><init>(Lf9/a;Lf9/a;I)V

    if-eqz v22, :cond_e

    .line 107
    iget-object v5, v2, Ll0/x0;->a:Ljava/lang/Object;

    .line 108
    iget v8, v2, Ll0/x0;->b:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    iget v2, v2, Ll0/x0;->c:I

    .line 110
    new-instance v8, Lo0/d;

    invoke-direct {v8, v5, v6, v2, v7}, Lo0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILf9/k;)V

    .line 111
    invoke-virtual {v4, v8}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 112
    :cond_e
    invoke-virtual {v0}, Ln0/a;->a()V

    return-object v3

    .line 113
    :pswitch_3
    check-cast v12, Lw0/n;

    check-cast v10, Lw0/a0;

    check-cast v7, Lg9/t;

    move-object/from16 v0, p1

    check-cast v0, Lk2/w;

    .line 114
    iget-wide v4, v0, Lk2/w;->c:J

    .line 115
    invoke-interface {v12, v4, v5, v10}, Lw0/n;->c(JLw0/a0;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 116
    invoke-virtual {v0}, Lk2/w;->a()V

    .line 117
    iput-boolean v11, v7, Lg9/t;->a:Z

    :cond_f
    return-object v3

    .line 118
    :pswitch_4
    check-cast v12, Lo0/c;

    check-cast v10, Landroid/content/Context;

    check-cast v7, Ls0/b;

    move-object/from16 v0, p1

    check-cast v0, Ly/e;

    .line 119
    iget-object v2, v12, Lo0/c;->a:Ljava/lang/Object;

    .line 120
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_1a

    .line 121
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 122
    check-cast v6, Lo0/b;

    .line 123
    instance-of v8, v6, Lo0/d;

    if-eqz v8, :cond_11

    .line 124
    new-instance v8, La8/c0;

    check-cast v6, Lo0/d;

    const/4 v9, 0x4

    invoke-direct {v8, v9, v6}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 125
    iget v9, v6, Lo0/d;->c:I

    if-nez v9, :cond_10

    move-object v12, v15

    goto :goto_9

    .line 126
    :cond_10
    new-instance v9, Lc8/n0;

    invoke-direct {v9, v13, v6}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 127
    new-instance v12, Ln1/c;

    const v14, -0x731428a5

    invoke-direct {v12, v9, v14, v11}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 128
    :goto_9
    new-instance v9, La8/n0;

    const/16 v14, 0xe

    invoke-direct {v9, v14, v6, v7}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x6

    invoke-static {v0, v8, v12, v9, v6}, Ly/e;->b(Ly/e;Lf9/n;Ln1/c;Lf9/a;I)V

    goto/16 :goto_e

    .line 129
    :cond_11
    instance-of v8, v6, Lo0/h;

    if-eqz v8, :cond_18

    .line 130
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_19

    .line 131
    check-cast v6, Lo0/h;

    if-nez v10, :cond_12

    goto/16 :goto_e

    .line 132
    :cond_12
    iget v8, v6, Lo0/h;->c:I

    .line 133
    iget-object v6, v6, Lo0/h;->b:Landroid/view/textclassifier/TextClassification;

    const/4 v9, 0x5

    if-gez v8, :cond_14

    .line 134
    new-instance v8, La8/c0;

    invoke-direct {v8, v9, v6}, La8/c0;-><init>(ILjava/lang/Object;)V

    .line 135
    invoke-static {v6}, Lq0/o;->d(Landroid/view/textclassifier/TextClassification;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_13

    new-instance v12, Lc8/n0;

    const/4 v14, 0x4

    invoke-direct {v12, v14, v9}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 136
    new-instance v9, Ln1/c;

    const v14, -0x42f30a7b

    invoke-direct {v9, v12, v14, v11}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_a

    :cond_13
    move-object v9, v15

    .line 137
    :goto_a
    new-instance v12, La8/n0;

    const/16 v14, 0xf

    invoke-direct {v12, v14, v10, v6}, La8/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x6

    invoke-static {v0, v8, v9, v12, v14}, Ly/e;->b(Ly/e;Lf9/n;Ln1/c;Lf9/a;I)V

    goto :goto_e

    :cond_14
    const/4 v14, 0x6

    .line 138
    invoke-static {v6}, Ll8/e;->o(Landroid/view/textclassifier/TextClassification;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lq0/o;->b(Ljava/lang/Object;)Landroid/app/RemoteAction;

    move-result-object v6

    if-nez v8, :cond_15

    const/4 v8, 0x1

    goto :goto_b

    :cond_15
    const/4 v8, 0x0

    .line 139
    :goto_b
    new-instance v12, La8/c0;

    invoke-direct {v12, v14, v6}, La8/c0;-><init>(ILjava/lang/Object;)V

    if-nez v8, :cond_17

    .line 140
    invoke-static {v6}, Ll8/e;->u(Landroid/app/RemoteAction;)Z

    move-result v8

    if-eqz v8, :cond_16

    goto :goto_c

    :cond_16
    move-object v9, v15

    goto :goto_d

    .line 141
    :cond_17
    :goto_c
    new-instance v8, Lc8/n0;

    invoke-direct {v8, v9, v6}, Lc8/n0;-><init>(ILjava/lang/Object;)V

    .line 142
    new-instance v9, Ln1/c;

    const v14, -0x4b2bf918

    invoke-direct {v9, v8, v14, v11}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 143
    :goto_d
    new-instance v8, La5/e;

    const/16 v14, 0x17

    invoke-direct {v8, v14, v6}, La5/e;-><init>(ILjava/lang/Object;)V

    const/4 v14, 0x6

    invoke-static {v0, v12, v9, v8, v14}, Ly/e;->b(Ly/e;Lf9/n;Ln1/c;Lf9/a;I)V

    goto :goto_e

    .line 144
    :cond_18
    instance-of v6, v6, Lo0/f;

    if-eqz v6, :cond_19

    .line 145
    iget-object v6, v0, Ly/e;->a:Lp1/p;

    .line 146
    sget-object v8, Ly/b;->a:Ln1/c;

    invoke-virtual {v6, v8}, Lp1/p;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_1a
    return-object v3

    .line 147
    :pswitch_5
    check-cast v12, Lo1/d;

    check-cast v7, Lo1/i;

    move-object/from16 v0, p1

    check-cast v0, Lf1/i0;

    .line 148
    iget-object v0, v12, Lo1/d;->b:Ls/h0;

    invoke-virtual {v0, v10}, Ls/h0;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 149
    iget-object v2, v12, Lo1/d;->a:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0, v10, v7}, Ls/h0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    new-instance v0, Lo1/c;

    invoke-direct {v0, v12, v10, v7}, Lo1/c;-><init>(Lo1/d;Ljava/lang/Object;Lo1/i;)V

    return-object v0

    .line 152
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was used multiple times "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_6
    check-cast v12, Landroid/content/Context;

    check-cast v10, Landroid/hardware/usb/UsbManager;

    check-cast v7, Lp1/p;

    move-object/from16 v0, p1

    check-cast v0, Lf1/i0;

    .line 154
    invoke-static {v0, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lm7/v;

    invoke-direct {v0, v10, v7}, Lm7/v;-><init>(Landroid/hardware/usb/UsbManager;Lp1/p;)V

    .line 156
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    invoke-static {v12, v0, v2}, Lu3/f;->g(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 160
    new-instance v2, Ld0/u0;

    invoke-direct {v2, v13, v12, v0}, Ld0/u0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 161
    :pswitch_7
    check-cast v12, Lp1/p;

    check-cast v10, Lr8/j;

    check-cast v7, Lf1/b1;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    .line 162
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 165
    move-object v6, v5

    check-cast v6, Lj8/k0;

    .line 166
    iget-object v6, v6, Lj8/k0;->a:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 168
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 169
    :cond_1d
    invoke-virtual {v12}, Lp1/p;->clear()V

    .line 170
    invoke-virtual {v12, v4}, Lp1/p;->addAll(Ljava/util/Collection;)Z

    .line 171
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lj8/k0;

    .line 172
    iget-object v5, v5, Lj8/k0;->a:Ljava/lang/String;

    .line 173
    iget-object v6, v10, Lr8/j;->b:Ljava/lang/Object;

    .line 174
    invoke-static {v5, v6}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object v15, v2

    :cond_1f
    check-cast v15, Lj8/k0;

    if-nez v15, :cond_20

    invoke-static {v4}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lj8/k0;

    .line 175
    :cond_20
    invoke-interface {v7, v15}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 176
    :pswitch_8
    check-cast v12, Lf9/n;

    check-cast v10, Lf9/a;

    check-cast v7, Lf1/b1;

    move-object/from16 v0, p1

    check-cast v0, Lj8/k0;

    .line 177
    invoke-static {v0, v6}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, v0, Lj8/k0;->a:Ljava/lang/String;

    .line 179
    sget-object v2, Lm7/k;->a:Lm7/k;

    .line 180
    invoke-interface {v7, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 181
    invoke-interface {v7}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v12, v0, v2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-interface {v10}, Lf9/a;->invoke()Ljava/lang/Object;

    return-object v3

    .line 184
    :pswitch_9
    check-cast v12, Lg9/x;

    check-cast v10, Lg9/j;

    check-cast v7, Ll5/l;

    move-object/from16 v0, p1

    check-cast v0, Lx1/b;

    .line 185
    iget-wide v4, v0, Lx1/b;->a:J

    .line 186
    invoke-static {v4, v5}, Lx1/b;->d(J)F

    move-result v0

    invoke-static {v12, v10, v7, v0}, Lg5/a;->t(Lg9/x;Lf9/o;Ll5/l;F)V

    return-object v3

    .line 187
    :pswitch_a
    check-cast v12, Ll5/l;

    check-cast v10, Lf1/b1;

    check-cast v7, Lf1/b1;

    move-object/from16 v0, p1

    check-cast v0, Ll5/l;

    .line 188
    invoke-static {v12, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$center$delegate"

    invoke-static {v10, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$radius$delegate"

    invoke-static {v7, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$ColorPicker"

    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {v10}, Lf1/v2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/b;

    .line 190
    iget-wide v4, v0, Lx1/b;->a:J

    .line 191
    new-instance v0, Lc8/s0;

    invoke-direct {v0, v10, v7, v14}, Lc8/s0;-><init>(Lf1/b1;Lf1/b1;I)V

    .line 192
    iput-object v0, v12, Ll5/l;->s:Lc8/s0;

    const/4 v6, 0x0

    .line 193
    invoke-virtual {v12, v4, v5, v6}, Ll5/l;->b(JZ)V

    .line 194
    iget-object v0, v12, Ll5/l;->q:Lf1/h1;

    invoke-virtual {v0}, Lf1/h1;->f()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual {v0, v2}, Lf1/h1;->g(I)V

    return-object v3

    .line 195
    :pswitch_b
    check-cast v12, Ll5/l;

    move-object v6, v10

    check-cast v6, Ljava/lang/Long;

    check-cast v7, Lf9/k;

    move-object/from16 v0, p1

    check-cast v0, Lf1/i0;

    .line 196
    invoke-static {v12, v4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, v12, Ll5/l;->a:Lac/w;

    .line 198
    sget-object v2, Lac/g0;->a:Lhc/e;

    .line 199
    sget-object v2, Lfc/m;->a:Lbc/d;

    .line 200
    new-instance v4, Lb1/f;

    const/4 v8, 0x0

    const/4 v9, 0x7

    move-object v5, v12

    invoke-direct/range {v4 .. v9}, Lb1/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lw8/c;I)V

    invoke-static {v0, v2, v4, v14}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 201
    new-instance v0, Lc8/p;

    const/4 v14, 0x6

    invoke-direct {v0, v14, v5}, Lc8/p;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 202
    :pswitch_c
    check-cast v12, Ll0/l0;

    check-cast v10, Ll0/e1;

    check-cast v7, Lg9/t;

    move-object/from16 v0, p1

    check-cast v0, Lw0/h1;

    .line 203
    sget-object v2, Ll0/d1;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_1

    new-instance v0, Lac/p;

    .line 204
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 205
    throw v0

    .line 206
    :pswitch_d
    iget-object v0, v10, Ll0/e1;->h:Ll0/r1;

    if-eqz v0, :cond_3c

    .line 207
    iget-object v2, v0, Ll0/r1;->b:Lu0/j;

    if-eqz v2, :cond_21

    .line 208
    iget-object v4, v2, Lu0/j;->b:Ljava/lang/Object;

    check-cast v4, Lu0/j;

    .line 209
    iput-object v4, v0, Ll0/r1;->b:Lu0/j;

    .line 210
    iget-object v4, v2, Lu0/j;->c:Ljava/lang/Object;

    check-cast v4, Lg3/w;

    .line 211
    iget-object v5, v0, Ll0/r1;->a:Lu0/j;

    new-instance v6, Lu0/j;

    const/16 v14, 0xf

    invoke-direct {v6, v14, v5, v4}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v0, Ll0/r1;->a:Lu0/j;

    .line 212
    iget v5, v0, Ll0/r1;->c:I

    .line 213
    iget-object v4, v4, Lg3/w;->a:Lb3/g;

    .line 214
    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 215
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    iput v4, v0, Ll0/r1;->c:I

    .line 216
    iget-object v0, v2, Lu0/j;->c:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lg3/w;

    :cond_21
    if-eqz v15, :cond_3c

    .line 217
    iget-object v0, v10, Ll0/e1;->k:Lf9/k;

    invoke-interface {v0, v15}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 218
    :pswitch_e
    iget-object v2, v10, Ll0/e1;->h:Ll0/r1;

    if-eqz v2, :cond_22

    .line 219
    iget-object v4, v0, Lw0/h1;->h:Lg3/w;

    .line 220
    iget-object v5, v0, Lw0/h1;->g:Lb3/g;

    .line 221
    iget-wide v6, v0, Lw0/h1;->f:J

    const/4 v14, 0x4

    .line 222
    invoke-static {v4, v5, v6, v7, v14}, Lg3/w;->a(Lg3/w;Lb3/g;JI)Lg3/w;

    move-result-object v0

    .line 223
    invoke-virtual {v2, v0}, Ll0/r1;->a(Lg3/w;)V

    .line 224
    :cond_22
    iget-object v0, v10, Ll0/e1;->h:Ll0/r1;

    if-eqz v0, :cond_3c

    .line 225
    iget-object v2, v0, Ll0/r1;->a:Lu0/j;

    if-eqz v2, :cond_23

    .line 226
    iget-object v4, v2, Lu0/j;->b:Ljava/lang/Object;

    check-cast v4, Lu0/j;

    if-eqz v4, :cond_23

    .line 227
    iput-object v4, v0, Ll0/r1;->a:Lu0/j;

    .line 228
    iget v5, v0, Ll0/r1;->c:I

    .line 229
    iget-object v6, v2, Lu0/j;->c:Ljava/lang/Object;

    check-cast v6, Lg3/w;

    .line 230
    iget-object v6, v6, Lg3/w;->a:Lb3/g;

    .line 231
    iget-object v6, v6, Lb3/g;->b:Ljava/lang/String;

    .line 232
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Ll0/r1;->c:I

    .line 233
    iget-object v2, v2, Lu0/j;->c:Ljava/lang/Object;

    check-cast v2, Lg3/w;

    .line 234
    iget-object v5, v0, Ll0/r1;->b:Lu0/j;

    new-instance v6, Lu0/j;

    const/16 v14, 0xf

    invoke-direct {v6, v14, v5, v2}, Lu0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v0, Ll0/r1;->b:Lu0/j;

    .line 235
    iget-object v0, v4, Lu0/j;->c:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lg3/w;

    :cond_23
    if-eqz v15, :cond_3c

    .line 236
    iget-object v0, v10, Ll0/e1;->k:Lf9/k;

    invoke-interface {v0, v15}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 237
    :pswitch_f
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 238
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 239
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 240
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 241
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 242
    iget-wide v4, v0, Lw0/h1;->f:J

    sget v2, Lb3/n0;->c:I

    and-long v4, v4, v16

    long-to-int v2, v4

    .line 243
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 244
    :pswitch_10
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 245
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 246
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 247
    iget-object v4, v2, Lb3/g;->b:Ljava/lang/String;

    .line 248
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_24

    .line 249
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 251
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 252
    :cond_24
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 253
    :pswitch_11
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 254
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 255
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 256
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 257
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_25

    const/4 v6, 0x0

    .line 258
    invoke-virtual {v0, v6, v6}, Lw0/h1;->q(II)V

    .line 259
    :cond_25
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 260
    :pswitch_12
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 261
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 262
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 263
    iget-object v2, v0, Lw0/h1;->i:Ll0/q1;

    if-eqz v2, :cond_26

    invoke-virtual {v0, v2, v11}, Lw0/h1;->h(Ll0/q1;I)I

    move-result v2

    .line 264
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 265
    :cond_26
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 266
    :pswitch_13
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 267
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    .line 269
    iget-object v2, v0, Lw0/h1;->i:Ll0/q1;

    if-eqz v2, :cond_27

    invoke-virtual {v0, v2, v4}, Lw0/h1;->h(Ll0/q1;I)I

    move-result v2

    .line 270
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 271
    :cond_27
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 272
    :pswitch_14
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 273
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 274
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 275
    iget-object v2, v0, Lw0/h1;->c:Lb3/l0;

    if-eqz v2, :cond_28

    invoke-virtual {v0, v2, v11}, Lw0/h1;->g(Lb3/l0;I)I

    move-result v2

    .line 276
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 277
    :cond_28
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 278
    :pswitch_15
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 279
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 281
    iget-object v2, v0, Lw0/h1;->c:Lb3/l0;

    if-eqz v2, :cond_29

    invoke-virtual {v0, v2, v4}, Lw0/h1;->g(Lb3/l0;I)I

    move-result v2

    .line 282
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 283
    :cond_29
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 284
    :pswitch_16
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 285
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 286
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 287
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 288
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 289
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 290
    invoke-virtual {v0}, Lw0/h1;->n()V

    goto :goto_10

    .line 291
    :cond_2a
    invoke-virtual {v0}, Lw0/h1;->o()V

    .line 292
    :cond_2b
    :goto_10
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 293
    :pswitch_17
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 294
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 295
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 296
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    .line 298
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 299
    invoke-virtual {v0}, Lw0/h1;->o()V

    goto :goto_11

    .line 300
    :cond_2c
    invoke-virtual {v0}, Lw0/h1;->n()V

    .line 301
    :cond_2d
    :goto_11
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 302
    :pswitch_18
    invoke-virtual {v0}, Lw0/h1;->n()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 303
    :pswitch_19
    invoke-virtual {v0}, Lw0/h1;->o()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 304
    :pswitch_1a
    invoke-virtual {v0}, Lw0/h1;->j()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 305
    :pswitch_1b
    invoke-virtual {v0}, Lw0/h1;->l()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 306
    :pswitch_1c
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 307
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 308
    iget-object v4, v0, Lw0/h1;->g:Lb3/g;

    .line 309
    iget-object v5, v4, Lb3/g;->b:Ljava/lang/String;

    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2f

    .line 311
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 312
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 313
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 314
    invoke-virtual {v0}, Lw0/h1;->d()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 315
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_12

    .line 316
    :cond_2e
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 317
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2f

    .line 318
    invoke-virtual {v0}, Lw0/h1;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 319
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 320
    :cond_2f
    :goto_12
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 321
    :pswitch_1d
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 322
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 323
    iget-object v4, v0, Lw0/h1;->g:Lb3/g;

    .line 324
    iget-object v5, v4, Lb3/g;->b:Ljava/lang/String;

    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 325
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_31

    .line 326
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 327
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 328
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 329
    invoke-virtual {v0}, Lw0/h1;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 330
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_13

    .line 331
    :cond_30
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 332
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 333
    invoke-virtual {v0}, Lw0/h1;->d()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 334
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    .line 335
    :cond_31
    :goto_13
    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 336
    :pswitch_1e
    invoke-virtual {v0}, Lw0/h1;->m()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 337
    :pswitch_1f
    invoke-virtual {v0}, Lw0/h1;->i()V

    invoke-virtual {v0}, Lw0/h1;->p()V

    goto/16 :goto_14

    .line 338
    :pswitch_20
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 339
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 340
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 341
    iget-object v4, v2, Lb3/g;->b:Ljava/lang/String;

    .line 342
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    .line 343
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 344
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 345
    :pswitch_21
    iget-boolean v0, v10, Ll0/e1;->e:Z

    if-nez v0, :cond_32

    .line 346
    new-instance v0, Lg3/a;

    const-string v2, "\t"

    invoke-direct {v0, v11, v2}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 347
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    :cond_32
    const/4 v6, 0x0

    .line 348
    iput-boolean v6, v7, Lg9/t;->a:Z

    goto/16 :goto_14

    .line 349
    :pswitch_22
    iget-boolean v0, v10, Ll0/e1;->e:Z

    if-nez v0, :cond_33

    .line 350
    new-instance v0, Lg3/a;

    const-string v2, "\n"

    invoke-direct {v0, v11, v2}, Lg3/a;-><init>(ILjava/lang/String;)V

    .line 351
    invoke-static {v0}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 352
    :cond_33
    iget-object v0, v10, Ll0/e1;->a:Ll0/s0;

    .line 353
    iget-object v0, v0, Ll0/s0;->x:Ll0/s;

    .line 354
    iget v2, v10, Ll0/e1;->l:I

    iget-object v0, v0, Ll0/s;->b:Ll0/s0;

    .line 355
    iget-object v0, v0, Ll0/s0;->r:La2/b;

    invoke-virtual {v0, v2}, La2/b;->X(I)Z

    move-result v0

    .line 356
    iput-boolean v0, v7, Lg9/t;->a:Z

    goto/16 :goto_14

    .line 357
    :pswitch_23
    new-instance v2, Lc8/y0;

    const/16 v4, 0x16

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 358
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 359
    :pswitch_24
    new-instance v2, Lc8/y0;

    const/16 v4, 0x15

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 360
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 361
    :pswitch_25
    new-instance v2, Lc8/y0;

    const/16 v4, 0x14

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 362
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 363
    :pswitch_26
    new-instance v2, Lc8/y0;

    const/16 v4, 0x13

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 364
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 365
    :pswitch_27
    new-instance v2, Lc8/y0;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 366
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 367
    :pswitch_28
    new-instance v2, Lc8/y0;

    const/16 v4, 0x11

    invoke-direct {v2, v4}, Lc8/y0;-><init>(I)V

    invoke-virtual {v0, v2}, Lw0/h1;->a(Lf9/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 368
    invoke-virtual {v10, v0}, Ll0/e1;->a(Ljava/util/List;)V

    goto/16 :goto_14

    .line 369
    :pswitch_29
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 370
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 371
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 372
    iget-object v4, v2, Lb3/g;->b:Ljava/lang/String;

    .line 373
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    .line 374
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 375
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 376
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 377
    :pswitch_2a
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 378
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 379
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 380
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 381
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    const/4 v6, 0x0

    .line 382
    invoke-virtual {v0, v6, v6}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 383
    :pswitch_2b
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 384
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 385
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 386
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 387
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 388
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 389
    invoke-virtual {v0}, Lw0/h1;->n()V

    goto/16 :goto_14

    .line 390
    :cond_34
    invoke-virtual {v0}, Lw0/h1;->o()V

    goto/16 :goto_14

    .line 391
    :pswitch_2c
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 392
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 393
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 394
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 396
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 397
    invoke-virtual {v0}, Lw0/h1;->o()V

    goto/16 :goto_14

    .line 398
    :cond_35
    invoke-virtual {v0}, Lw0/h1;->n()V

    goto/16 :goto_14

    .line 399
    :pswitch_2d
    invoke-virtual {v0}, Lw0/h1;->n()V

    goto/16 :goto_14

    .line 400
    :pswitch_2e
    invoke-virtual {v0}, Lw0/h1;->o()V

    goto/16 :goto_14

    .line 401
    :pswitch_2f
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 402
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 403
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 404
    iget-object v2, v0, Lw0/h1;->i:Ll0/q1;

    if-eqz v2, :cond_3c

    invoke-virtual {v0, v2, v11}, Lw0/h1;->h(Ll0/q1;I)I

    move-result v2

    .line 405
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 406
    :pswitch_30
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 407
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 408
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 409
    iget-object v2, v0, Lw0/h1;->i:Ll0/q1;

    if-eqz v2, :cond_3c

    invoke-virtual {v0, v2, v4}, Lw0/h1;->h(Ll0/q1;I)I

    move-result v2

    .line 410
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 411
    :pswitch_31
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 412
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 413
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 414
    iget-object v2, v0, Lw0/h1;->c:Lb3/l0;

    if-eqz v2, :cond_3c

    invoke-virtual {v0, v2, v11}, Lw0/h1;->g(Lb3/l0;I)I

    move-result v2

    .line 415
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 416
    :pswitch_32
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 417
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 418
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 419
    iget-object v2, v0, Lw0/h1;->c:Lb3/l0;

    if-eqz v2, :cond_3c

    invoke-virtual {v0, v2, v4}, Lw0/h1;->g(Lb3/l0;I)I

    move-result v2

    .line 420
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 421
    :pswitch_33
    invoke-virtual {v0}, Lw0/h1;->j()V

    goto/16 :goto_14

    .line 422
    :pswitch_34
    invoke-virtual {v0}, Lw0/h1;->l()V

    goto/16 :goto_14

    .line 423
    :pswitch_35
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 424
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 425
    iget-object v4, v0, Lw0/h1;->g:Lb3/g;

    .line 426
    iget-object v5, v4, Lb3/g;->b:Ljava/lang/String;

    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 427
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 428
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 429
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 430
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 431
    invoke-virtual {v0}, Lw0/h1;->d()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 432
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 433
    :cond_36
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 434
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 435
    invoke-virtual {v0}, Lw0/h1;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 436
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 437
    :pswitch_36
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 438
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 439
    iget-object v4, v0, Lw0/h1;->g:Lb3/g;

    .line 440
    iget-object v5, v4, Lb3/g;->b:Ljava/lang/String;

    iget-object v4, v4, Lb3/g;->b:Ljava/lang/String;

    .line 441
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    .line 442
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 443
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 444
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 445
    invoke-virtual {v0}, Lw0/h1;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 446
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 447
    :cond_37
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 448
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 449
    invoke-virtual {v0}, Lw0/h1;->d()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 450
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto/16 :goto_14

    .line 451
    :pswitch_37
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 452
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 453
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 454
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 455
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 456
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->c(J)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 457
    invoke-virtual {v0}, Lw0/h1;->m()V

    goto :goto_14

    .line 458
    :cond_38
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 459
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    move-result v2

    .line 460
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_14

    .line 461
    :cond_39
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->f(J)I

    move-result v2

    .line 462
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_14

    .line 463
    :pswitch_38
    iget-object v2, v0, Lw0/h1;->e:Lw0/v1;

    .line 464
    iput-object v15, v2, Lw0/v1;->a:Ljava/lang/Float;

    .line 465
    iget-object v2, v0, Lw0/h1;->g:Lb3/g;

    .line 466
    iget-object v2, v2, Lb3/g;->b:Ljava/lang/String;

    .line 467
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    .line 468
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->c(J)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 469
    invoke-virtual {v0}, Lw0/h1;->i()V

    goto :goto_14

    .line 470
    :cond_3a
    invoke-virtual {v0}, Lw0/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 471
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->f(J)I

    move-result v2

    .line 472
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_14

    .line 473
    :cond_3b
    iget-wide v4, v0, Lw0/h1;->f:J

    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    move-result v2

    .line 474
    invoke-virtual {v0, v2, v2}, Lw0/h1;->q(II)V

    goto :goto_14

    .line 475
    :pswitch_39
    iget-object v0, v10, Ll0/e1;->b:Lw0/r1;

    invoke-virtual {v0}, Lw0/r1;->f()V

    goto :goto_14

    .line 476
    :pswitch_3a
    iget-object v0, v10, Ll0/e1;->b:Lw0/r1;

    invoke-virtual {v0}, Lw0/r1;->o()V

    goto :goto_14

    .line 477
    :pswitch_3b
    iget-object v0, v10, Ll0/e1;->b:Lw0/r1;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lw0/r1;->d(Z)Lac/j1;

    :cond_3c
    :goto_14
    :pswitch_3c
    return-object v3

    .line 478
    :pswitch_3d
    check-cast v12, Landroid/support/v4/media/session/t;

    check-cast v10, Lf9/k;

    check-cast v7, Lg9/x;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    .line 479
    iget-object v2, v7, Lg9/x;->b:Ljava/lang/Object;

    check-cast v2, Lg3/c0;

    .line 480
    invoke-virtual {v12, v0}, Landroid/support/v4/media/session/t;->J0(Ljava/util/List;)Lg3/w;

    move-result-object v0

    if-eqz v2, :cond_3d

    .line 481
    invoke-virtual {v2, v15, v0}, Lg3/c0;->a(Lg3/w;Lg3/w;)V

    .line 482
    :cond_3d
    invoke-interface {v10, v0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :pswitch_3e
    const/4 v6, 0x0

    .line 483
    check-cast v12, Ll0/s0;

    check-cast v10, Lg3/w;

    iget-wide v4, v10, Lg3/w;->b:J

    check-cast v7, Lg3/q;

    move-object/from16 v0, p1

    check-cast v0, La2/g;

    .line 484
    invoke-virtual {v12}, Ll0/s0;->d()Ll0/q1;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 485
    invoke-interface {v0}, La2/g;->X()La2/b;

    move-result-object v0

    invoke-virtual {v0}, La2/b;->z()Ly1/o;

    move-result-object v10

    .line 486
    iget-object v0, v12, Ll0/s0;->A:Lf1/k1;

    .line 487
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/n0;

    .line 488
    iget-wide v8, v0, Lb3/n0;->a:J

    .line 489
    iget-object v0, v12, Ll0/s0;->B:Lf1/k1;

    .line 490
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/n0;

    .line 491
    iget-wide v13, v0, Lb3/n0;->a:J

    .line 492
    iget-object v0, v2, Ll0/q1;->a:Lb3/l0;

    iget-object v2, v0, Lb3/l0;->b:Lb3/o;

    iget-object v6, v0, Lb3/l0;->a:Lb3/k0;

    .line 493
    iget-object v11, v12, Ll0/s0;->y:Ld7/q;

    move-object/from16 v24, v2

    .line 494
    iget-wide v1, v12, Ll0/s0;->z:J

    .line 495
    invoke-static {v8, v9}, Lb3/n0;->c(J)Z

    move-result v12

    if-nez v12, :cond_3e

    .line 496
    invoke-virtual {v11, v1, v2}, Ld7/q;->k(J)V

    .line 497
    invoke-static {v8, v9}, Lb3/n0;->f(J)I

    move-result v1

    invoke-interface {v7, v1}, Lg3/q;->b(I)I

    move-result v1

    .line 498
    invoke-static {v8, v9}, Lb3/n0;->e(J)I

    move-result v2

    invoke-interface {v7, v2}, Lg3/q;->b(I)I

    move-result v2

    if-eq v1, v2, :cond_42

    .line 499
    invoke-virtual {v0, v1, v2}, Lb3/l0;->i(II)Ly1/h;

    move-result-object v1

    .line 500
    invoke-interface {v10, v1, v11}, Ly1/o;->q(Ly1/e0;Ld7/q;)V

    goto :goto_17

    .line 501
    :cond_3e
    invoke-static {v13, v14}, Lb3/n0;->c(J)Z

    move-result v8

    if-nez v8, :cond_41

    .line 502
    iget-object v1, v6, Lb3/k0;->b:Lb3/o0;

    .line 503
    invoke-virtual {v1}, Lb3/o0;->b()J

    move-result-wide v1

    .line 504
    new-instance v4, Ly1/q;

    invoke-direct {v4, v1, v2}, Ly1/q;-><init>(J)V

    const-wide/16 v8, 0x10

    cmp-long v5, v1, v8

    if-nez v5, :cond_3f

    goto :goto_15

    :cond_3f
    move-object v15, v4

    :goto_15
    if-eqz v15, :cond_40

    .line 505
    iget-wide v1, v15, Ly1/q;->a:J

    goto :goto_16

    .line 506
    :cond_40
    sget-wide v1, Ly1/q;->b:J

    .line 507
    :goto_16
    invoke-static {v1, v2}, Ly1/q;->d(J)F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float v4, v4, v5

    invoke-static {v4, v1, v2}, Ly1/q;->b(FJ)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Ld7/q;->k(J)V

    .line 508
    invoke-static {v13, v14}, Lb3/n0;->f(J)I

    move-result v1

    invoke-interface {v7, v1}, Lg3/q;->b(I)I

    move-result v1

    .line 509
    invoke-static {v13, v14}, Lb3/n0;->e(J)I

    move-result v2

    invoke-interface {v7, v2}, Lg3/q;->b(I)I

    move-result v2

    if-eq v1, v2, :cond_42

    .line 510
    invoke-virtual {v0, v1, v2}, Lb3/l0;->i(II)Ly1/h;

    move-result-object v1

    .line 511
    invoke-interface {v10, v1, v11}, Ly1/o;->q(Ly1/e0;Ld7/q;)V

    goto :goto_17

    .line 512
    :cond_41
    invoke-static {v4, v5}, Lb3/n0;->c(J)Z

    move-result v8

    if-nez v8, :cond_42

    .line 513
    invoke-virtual {v11, v1, v2}, Ld7/q;->k(J)V

    .line 514
    invoke-static {v4, v5}, Lb3/n0;->f(J)I

    move-result v1

    invoke-interface {v7, v1}, Lg3/q;->b(I)I

    move-result v1

    .line 515
    invoke-static {v4, v5}, Lb3/n0;->e(J)I

    move-result v2

    invoke-interface {v7, v2}, Lg3/q;->b(I)I

    move-result v2

    if-eq v1, v2, :cond_42

    .line 516
    invoke-virtual {v0, v1, v2}, Lb3/l0;->i(II)Ly1/h;

    move-result-object v1

    .line 517
    invoke-interface {v10, v1, v11}, Ly1/o;->q(Ly1/e0;Ld7/q;)V

    .line 518
    :cond_42
    :goto_17
    invoke-virtual {v0}, Lb3/l0;->d()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 519
    iget v1, v6, Lb3/k0;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_43

    goto :goto_18

    :cond_43
    const/4 v2, 0x1

    goto :goto_19

    :cond_44
    :goto_18
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_45

    .line 520
    iget-wide v0, v0, Lb3/l0;->c:J

    const/16 v4, 0x20

    shr-long v7, v0, v4

    long-to-int v5, v7

    int-to-float v5, v5

    and-long v0, v0, v16

    long-to-int v1, v0

    int-to-float v0, v1

    .line 521
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    .line 522
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v4, v7, v4

    and-long v0, v0, v16

    or-long/2addr v0, v4

    const-wide/16 v4, 0x0

    .line 523
    invoke-static {v4, v5, v0, v1}, Lp9/p1;->d(JJ)Lx1/c;

    move-result-object v0

    .line 524
    invoke-interface {v10}, Ly1/o;->f()V

    .line 525
    invoke-interface {v10, v0}, Ly1/o;->d(Lx1/c;)V

    .line 526
    :cond_45
    iget-object v0, v6, Lb3/k0;->b:Lb3/o0;

    .line 527
    iget-object v0, v0, Lb3/o0;->a:Lb3/e0;

    .line 528
    iget-object v1, v0, Lb3/e0;->m:Lm3/l;

    iget-object v4, v0, Lb3/e0;->a:Lm3/o;

    if-nez v1, :cond_46

    .line 529
    sget-object v1, Lm3/l;->b:Lm3/l;

    .line 530
    :cond_46
    iget-object v5, v0, Lb3/e0;->n:Ly1/k0;

    if-nez v5, :cond_47

    .line 531
    sget-object v5, Ly1/k0;->d:Ly1/k0;

    :cond_47
    move-object/from16 v23, v5

    .line 532
    iget-object v0, v0, Lb3/e0;->p:La2/h;

    if-nez v0, :cond_48

    .line 533
    sget-object v0, La2/j;->a:La2/j;

    :cond_48
    move-object/from16 v25, v0

    .line 534
    :try_start_0
    invoke-interface {v4}, Lm3/o;->e()Ly1/m;

    move-result-object v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    sget-object v0, Lm3/n;->a:Lm3/n;

    if-eqz v21, :cond_4a

    if-eq v4, v0, :cond_49

    .line 536
    :try_start_1
    invoke-interface {v4}, Lm3/o;->a()F

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v22, v7

    :goto_1a
    move-object/from16 v20, v10

    move-object/from16 v19, v24

    move-object/from16 v24, v1

    goto :goto_1b

    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_1f

    :cond_49
    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 537
    :goto_1b
    :try_start_2
    invoke-static/range {v19 .. v25}, Lb3/o;->j(Lb3/o;Ly1/o;Ly1/m;FLy1/k0;Lm3/l;La2/h;)V

    goto :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_1f

    :cond_4a
    move-object/from16 v20, v10

    move-object/from16 v19, v24

    move-object/from16 v24, v1

    if-eq v4, v0, :cond_4b

    .line 538
    invoke-interface {v4}, Lm3/o;->b()J

    move-result-wide v0

    :goto_1c
    move-wide/from16 v21, v0

    goto :goto_1d

    .line 539
    :cond_4b
    sget-wide v0, Ly1/q;->b:J

    goto :goto_1c

    .line 540
    :goto_1d
    invoke-static/range {v19 .. v25}, Lb3/o;->i(Lb3/o;Ly1/o;JLy1/k0;Lm3/l;La2/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1e
    if-eqz v2, :cond_4d

    .line 541
    invoke-interface/range {v20 .. v20}, Ly1/o;->n()V

    goto :goto_20

    :goto_1f
    if-eqz v2, :cond_4c

    invoke-interface/range {v20 .. v20}, Ly1/o;->n()V

    :cond_4c
    throw v0

    :cond_4d
    :goto_20
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_3c
        :pswitch_3c
    .end packed-switch
.end method
