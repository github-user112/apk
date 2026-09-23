.class public final Lc1/t2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lf3/k;

.field public final synthetic f:J

.field public final synthetic g:Lm3/k;

.field public final synthetic h:J

.field public final synthetic i:I

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:Lb3/o0;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/t2;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/t2;->b:Lr1/p;

    .line 4
    .line 5
    iput-wide p3, p0, Lc1/t2;->c:J

    .line 6
    .line 7
    iput-wide p5, p0, Lc1/t2;->d:J

    .line 8
    .line 9
    iput-object p7, p0, Lc1/t2;->e:Lf3/k;

    .line 10
    .line 11
    iput-wide p8, p0, Lc1/t2;->f:J

    .line 12
    .line 13
    iput-object p10, p0, Lc1/t2;->g:Lm3/k;

    .line 14
    .line 15
    iput-wide p11, p0, Lc1/t2;->h:J

    .line 16
    .line 17
    iput p13, p0, Lc1/t2;->i:I

    .line 18
    .line 19
    iput-boolean p14, p0, Lc1/t2;->j:Z

    .line 20
    .line 21
    iput p15, p0, Lc1/t2;->k:I

    .line 22
    .line 23
    move/from16 p1, p16

    .line 24
    .line 25
    iput p1, p0, Lc1/t2;->l:I

    .line 26
    .line 27
    move-object/from16 p1, p17

    .line 28
    .line 29
    iput-object p1, p0, Lc1/t2;->m:Lb3/o0;

    .line 30
    .line 31
    move/from16 p1, p18

    .line 32
    .line 33
    iput p1, p0, Lc1/t2;->n:I

    .line 34
    .line 35
    move/from16 p1, p19

    .line 36
    .line 37
    iput p1, p0, Lc1/t2;->o:I

    .line 38
    .line 39
    move/from16 p1, p20

    .line 40
    .line 41
    iput p1, p0, Lc1/t2;->p:I

    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v18, p1

    .line 4
    .line 5
    check-cast v18, Lf1/s;

    .line 6
    .line 7
    move-object/from16 v1, p2

    .line 8
    .line 9
    check-cast v1, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    iget v1, v0, Lc1/t2;->n:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result v19

    .line 22
    iget v1, v0, Lc1/t2;->o:I

    .line 23
    .line 24
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v20

    .line 28
    iget v1, v0, Lc1/t2;->p:I

    .line 29
    .line 30
    move/from16 v21, v1

    .line 31
    .line 32
    iget-object v1, v0, Lc1/t2;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, v0, Lc1/t2;->b:Lr1/p;

    .line 35
    .line 36
    iget-wide v3, v0, Lc1/t2;->c:J

    .line 37
    .line 38
    iget-wide v5, v0, Lc1/t2;->d:J

    .line 39
    .line 40
    iget-object v7, v0, Lc1/t2;->e:Lf3/k;

    .line 41
    .line 42
    iget-wide v8, v0, Lc1/t2;->f:J

    .line 43
    .line 44
    iget-object v10, v0, Lc1/t2;->g:Lm3/k;

    .line 45
    .line 46
    iget-wide v11, v0, Lc1/t2;->h:J

    .line 47
    .line 48
    iget v13, v0, Lc1/t2;->i:I

    .line 49
    .line 50
    iget-boolean v14, v0, Lc1/t2;->j:Z

    .line 51
    .line 52
    iget v15, v0, Lc1/t2;->k:I

    .line 53
    .line 54
    move-object/from16 v16, v1

    .line 55
    .line 56
    iget v1, v0, Lc1/t2;->l:I

    .line 57
    .line 58
    move/from16 v17, v1

    .line 59
    .line 60
    iget-object v1, v0, Lc1/t2;->m:Lb3/o0;

    .line 61
    .line 62
    move/from16 v22, v17

    .line 63
    .line 64
    move-object/from16 v17, v1

    .line 65
    .line 66
    move-object/from16 v1, v16

    .line 67
    .line 68
    move/from16 v16, v22

    .line 69
    .line 70
    invoke-static/range {v1 .. v21}, Lc1/u2;->b(Ljava/lang/String;Lr1/p;JJLf3/k;JLm3/k;JIZIILb3/o0;Lf1/s;III)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 74
    .line 75
    return-object v1
.end method
