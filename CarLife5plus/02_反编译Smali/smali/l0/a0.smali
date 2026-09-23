.class public final Ll0/a0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ln1/c;

.field public final synthetic b:Ll0/s0;

.field public final synthetic c:Lb3/o0;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ll0/o1;

.field public final synthetic g:Lg3/w;

.field public final synthetic h:Lb3/i0;

.field public final synthetic i:Lr1/p;

.field public final synthetic j:Lr1/p;

.field public final synthetic k:Lr1/p;

.field public final synthetic l:Lr1/p;

.field public final synthetic m:Li0/b;

.field public final synthetic n:Lw0/r1;

.field public final synthetic o:Z

.field public final synthetic p:Lf9/k;

.field public final synthetic q:Lg3/q;

.field public final synthetic r:Ln3/c;


# direct methods
.method public constructor <init>(Ln1/c;Ll0/s0;Lb3/o0;IILl0/o1;Lg3/w;Lb3/i0;Lr1/p;Lr1/p;Lr1/p;Lr1/p;Li0/b;Lw0/r1;ZLf9/k;Lg3/q;Ln3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/a0;->a:Ln1/c;

    iput-object p2, p0, Ll0/a0;->b:Ll0/s0;

    iput-object p3, p0, Ll0/a0;->c:Lb3/o0;

    iput p4, p0, Ll0/a0;->d:I

    iput p5, p0, Ll0/a0;->e:I

    iput-object p6, p0, Ll0/a0;->f:Ll0/o1;

    iput-object p7, p0, Ll0/a0;->g:Lg3/w;

    iput-object p8, p0, Ll0/a0;->h:Lb3/i0;

    iput-object p9, p0, Ll0/a0;->i:Lr1/p;

    iput-object p10, p0, Ll0/a0;->j:Lr1/p;

    iput-object p11, p0, Ll0/a0;->k:Lr1/p;

    iput-object p12, p0, Ll0/a0;->l:Lr1/p;

    iput-object p13, p0, Ll0/a0;->m:Li0/b;

    iput-object p14, p0, Ll0/a0;->n:Lw0/r1;

    iput-boolean p15, p0, Ll0/a0;->o:Z

    move-object/from16 p1, p16

    iput-object p1, p0, Ll0/a0;->p:Lf9/k;

    move-object/from16 p1, p17

    iput-object p1, p0, Ll0/a0;->q:Lg3/q;

    move-object/from16 p1, p18

    iput-object p1, p0, Ll0/a0;->r:Ln3/c;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit8 v3, v2, 0x3

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const/4 v5, 0x1

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x0

    .line 24
    :goto_0
    and-int/2addr v2, v5

    .line 25
    invoke-virtual {v1, v2, v3}, Lf1/s;->N(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    new-instance v3, Ll0/z;

    .line 32
    .line 33
    iget-object v2, v0, Ll0/a0;->q:Lg3/q;

    .line 34
    .line 35
    iget-object v4, v0, Ll0/a0;->r:Ln3/c;

    .line 36
    .line 37
    move-object/from16 v20, v4

    .line 38
    .line 39
    iget-object v4, v0, Ll0/a0;->b:Ll0/s0;

    .line 40
    .line 41
    iget-object v5, v0, Ll0/a0;->c:Lb3/o0;

    .line 42
    .line 43
    iget v6, v0, Ll0/a0;->d:I

    .line 44
    .line 45
    iget v7, v0, Ll0/a0;->e:I

    .line 46
    .line 47
    iget-object v8, v0, Ll0/a0;->f:Ll0/o1;

    .line 48
    .line 49
    iget-object v9, v0, Ll0/a0;->g:Lg3/w;

    .line 50
    .line 51
    iget-object v10, v0, Ll0/a0;->h:Lb3/i0;

    .line 52
    .line 53
    iget-object v11, v0, Ll0/a0;->i:Lr1/p;

    .line 54
    .line 55
    iget-object v12, v0, Ll0/a0;->j:Lr1/p;

    .line 56
    .line 57
    iget-object v13, v0, Ll0/a0;->k:Lr1/p;

    .line 58
    .line 59
    iget-object v14, v0, Ll0/a0;->l:Lr1/p;

    .line 60
    .line 61
    iget-object v15, v0, Ll0/a0;->m:Li0/b;

    .line 62
    .line 63
    move-object/from16 v19, v2

    .line 64
    .line 65
    iget-object v2, v0, Ll0/a0;->n:Lw0/r1;

    .line 66
    .line 67
    move-object/from16 v16, v2

    .line 68
    .line 69
    iget-boolean v2, v0, Ll0/a0;->o:Z

    .line 70
    .line 71
    move/from16 v17, v2

    .line 72
    .line 73
    iget-object v2, v0, Ll0/a0;->p:Lf9/k;

    .line 74
    .line 75
    move-object/from16 v18, v2

    .line 76
    .line 77
    invoke-direct/range {v3 .. v20}, Ll0/z;-><init>(Ll0/s0;Lb3/o0;IILl0/o1;Lg3/w;Lb3/i0;Lr1/p;Lr1/p;Lr1/p;Lr1/p;Li0/b;Lw0/r1;ZLf9/k;Lg3/q;Ln3/c;)V

    .line 78
    .line 79
    .line 80
    const v2, -0x2a4ac0e

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3, v1}, Ln1/h;->e(ILr8/e;Lf1/s;)Ln1/c;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const/4 v3, 0x6

    .line 88
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget-object v4, v0, Ll0/a0;->a:Ln1/c;

    .line 93
    .line 94
    invoke-virtual {v4, v2, v1, v3}, Ln1/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v1}, Lf1/s;->Q()V

    .line 99
    .line 100
    .line 101
    :goto_1
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    return-object v1
.end method
