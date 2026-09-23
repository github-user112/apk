.class public final synthetic Ll5/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:Ld7/q;

.field public final synthetic j:Lf9/n;

.field public final synthetic k:Lf9/k;

.field public final synthetic l:Lg9/j;

.field public final synthetic m:Lf9/k;

.field public final synthetic n:Lf9/k;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Ll5/l;FFJFJFLd7/q;Lf9/n;Lf9/k;Lf9/o;Lf9/k;Lf9/k;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/t;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Ll5/t;->b:Ll5/l;

    .line 7
    .line 8
    iput p3, p0, Ll5/t;->c:F

    .line 9
    .line 10
    iput p4, p0, Ll5/t;->d:F

    .line 11
    .line 12
    iput-wide p5, p0, Ll5/t;->e:J

    .line 13
    .line 14
    iput p7, p0, Ll5/t;->f:F

    .line 15
    .line 16
    iput-wide p8, p0, Ll5/t;->g:J

    .line 17
    .line 18
    iput p10, p0, Ll5/t;->h:F

    .line 19
    .line 20
    iput-object p11, p0, Ll5/t;->i:Ld7/q;

    .line 21
    .line 22
    iput-object p12, p0, Ll5/t;->j:Lf9/n;

    .line 23
    .line 24
    iput-object p13, p0, Ll5/t;->k:Lf9/k;

    .line 25
    .line 26
    check-cast p14, Lg9/j;

    .line 27
    .line 28
    iput-object p14, p0, Ll5/t;->l:Lg9/j;

    .line 29
    .line 30
    iput-object p15, p0, Ll5/t;->m:Lf9/k;

    .line 31
    .line 32
    move-object/from16 p1, p16

    .line 33
    .line 34
    iput-object p1, p0, Ll5/t;->n:Lf9/k;

    .line 35
    .line 36
    move/from16 p1, p17

    .line 37
    .line 38
    iput p1, p0, Ll5/t;->o:I

    .line 39
    .line 40
    move/from16 p1, p18

    .line 41
    .line 42
    iput p1, p0, Ll5/t;->p:I

    .line 43
    .line 44
    move/from16 p1, p19

    .line 45
    .line 46
    iput p1, p0, Ll5/t;->q:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v17, p1

    .line 4
    .line 5
    check-cast v17, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v1, "$controller"

    .line 15
    .line 16
    iget-object v2, v0, Ll5/t;->b:Ll5/l;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v1, v0, Ll5/t;->o:I

    .line 22
    .line 23
    or-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 26
    .line 27
    .line 28
    move-result v18

    .line 29
    iget v1, v0, Ll5/t;->p:I

    .line 30
    .line 31
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 32
    .line 33
    .line 34
    move-result v19

    .line 35
    iget-object v1, v0, Ll5/t;->a:Lr1/p;

    .line 36
    .line 37
    iget v3, v0, Ll5/t;->c:F

    .line 38
    .line 39
    iget v4, v0, Ll5/t;->d:F

    .line 40
    .line 41
    iget-wide v5, v0, Ll5/t;->e:J

    .line 42
    .line 43
    iget v7, v0, Ll5/t;->f:F

    .line 44
    .line 45
    iget-wide v8, v0, Ll5/t;->g:J

    .line 46
    .line 47
    iget v10, v0, Ll5/t;->h:F

    .line 48
    .line 49
    iget-object v11, v0, Ll5/t;->i:Ld7/q;

    .line 50
    .line 51
    iget-object v12, v0, Ll5/t;->j:Lf9/n;

    .line 52
    .line 53
    iget-object v13, v0, Ll5/t;->k:Lf9/k;

    .line 54
    .line 55
    iget-object v14, v0, Ll5/t;->l:Lg9/j;

    .line 56
    .line 57
    iget-object v15, v0, Ll5/t;->m:Lf9/k;

    .line 58
    .line 59
    move-object/from16 v16, v1

    .line 60
    .line 61
    iget-object v1, v0, Ll5/t;->n:Lf9/k;

    .line 62
    .line 63
    move-object/from16 v20, v1

    .line 64
    .line 65
    iget v1, v0, Ll5/t;->q:I

    .line 66
    .line 67
    move-object/from16 v21, v20

    .line 68
    .line 69
    move/from16 v20, v1

    .line 70
    .line 71
    move-object/from16 v1, v16

    .line 72
    .line 73
    move-object/from16 v16, v21

    .line 74
    .line 75
    invoke-static/range {v1 .. v20}, Lg5/a;->q(Lr1/p;Ll5/l;FFJFJFLd7/q;Lf9/n;Lf9/k;Lf9/o;Lf9/k;Lf9/k;Lf1/s;III)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 79
    .line 80
    return-object v1
.end method
