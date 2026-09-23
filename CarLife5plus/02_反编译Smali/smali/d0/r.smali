.class public final synthetic Ld0/r;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILr8/j;Lf9/k;Lf1/b1;Lf1/b1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Ld0/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld0/r;->b:I

    iput-object p2, p0, Ld0/r;->c:Ljava/io/Serializable;

    iput-object p3, p0, Ld0/r;->d:Ljava/lang/Object;

    iput-object p4, p0, Ld0/r;->e:Ljava/lang/Object;

    iput-object p5, p0, Ld0/r;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lo2/v0;Ld0/s;ILo2/o0;[I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Ld0/r;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/r;->c:Ljava/io/Serializable;

    iput-object p2, p0, Ld0/r;->d:Ljava/lang/Object;

    iput p3, p0, Ld0/r;->b:I

    iput-object p4, p0, Ld0/r;->e:Ljava/lang/Object;

    iput-object p5, p0, Ld0/r;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld0/r;->a:I

    .line 4
    .line 5
    sget-object v2, Lr8/z;->a:Lr8/z;

    .line 6
    .line 7
    iget-object v3, v0, Ld0/r;->f:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, v0, Ld0/r;->e:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v5, v0, Ld0/r;->d:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v0, Ld0/r;->c:Ljava/io/Serializable;

    .line 14
    .line 15
    iget v7, v0, Ld0/r;->b:I

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v6, Lr8/j;

    .line 21
    .line 22
    check-cast v5, Lf9/k;

    .line 23
    .line 24
    check-cast v4, Lf1/b1;

    .line 25
    .line 26
    check-cast v3, Lf1/b1;

    .line 27
    .line 28
    move-object/from16 v1, p1

    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    const-string v8, "it"

    .line 33
    .line 34
    invoke-static {v1, v8}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v4}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/lang/Integer;

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v7, :cond_1

    .line 51
    .line 52
    sget-object v4, Ll8/d;->a:Lr8/o;

    .line 53
    .line 54
    iget-object v4, v6, Lr8/j;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v4, v1}, Ll8/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v5, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-interface {v3, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-object v2

    .line 70
    :pswitch_0
    check-cast v6, [Lo2/v0;

    .line 71
    .line 72
    check-cast v5, Ld0/s;

    .line 73
    .line 74
    check-cast v4, Lo2/o0;

    .line 75
    .line 76
    check-cast v3, [I

    .line 77
    .line 78
    move-object/from16 v1, p1

    .line 79
    .line 80
    check-cast v1, Lo2/u0;

    .line 81
    .line 82
    array-length v8, v6

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    :goto_1
    if-ge v10, v8, :cond_2

    .line 87
    .line 88
    aget-object v12, v6, v10

    .line 89
    .line 90
    add-int/lit8 v13, v11, 0x1

    .line 91
    .line 92
    invoke-static {v12}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v12}, Lo2/v0;->x()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    invoke-interface {v4}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    iget-object v15, v5, Ld0/s;->b:Lr1/f;

    .line 103
    .line 104
    iget v0, v12, Lo2/v0;->a:I

    .line 105
    .line 106
    sub-int v0, v7, v0

    .line 107
    .line 108
    invoke-virtual {v15, v9, v0, v14}, Lr1/f;->a(IILn3/m;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    aget v11, v3, v11

    .line 113
    .line 114
    invoke-static {v1, v12, v0, v11}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v10, v10, 0x1

    .line 118
    .line 119
    move-object/from16 v0, p0

    .line 120
    .line 121
    move v11, v13

    .line 122
    goto :goto_1

    .line 123
    :cond_2
    return-object v2

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
