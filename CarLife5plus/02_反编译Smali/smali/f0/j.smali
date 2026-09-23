.class public final Lf0/j;
.super Lfb/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lf0/i;

.field public final c:Lh0/x;

.field public final d:J

.field public final synthetic e:Lh0/x;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lr1/f;

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:J

.field public final synthetic l:Lf0/u;


# direct methods
.method public constructor <init>(JLf0/i;Lh0/x;IILr1/f;IIJLf0/u;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lf0/j;->e:Lh0/x;

    .line 2
    .line 3
    iput p5, p0, Lf0/j;->f:I

    .line 4
    .line 5
    iput p6, p0, Lf0/j;->g:I

    .line 6
    .line 7
    iput-object p7, p0, Lf0/j;->h:Lr1/f;

    .line 8
    .line 9
    iput p8, p0, Lf0/j;->i:I

    .line 10
    .line 11
    iput p9, p0, Lf0/j;->j:I

    .line 12
    .line 13
    iput-wide p10, p0, Lf0/j;->k:J

    .line 14
    .line 15
    iput-object p12, p0, Lf0/j;->l:Lf0/u;

    .line 16
    .line 17
    invoke-direct {p0}, Lfb/a;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lf0/j;->b:Lf0/i;

    .line 21
    .line 22
    iput-object p4, p0, Lf0/j;->c:Lh0/x;

    .line 23
    .line 24
    invoke-static {p1, p2}, Ln3/a;->h(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const p2, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/4 p3, 0x5

    .line 32
    invoke-static {p1, p2, p3}, Ln3/b;->b(III)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    iput-wide p1, p0, Lf0/j;->d:J

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final u0(IJ)Lf0/n;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lf0/j;->b:Lf0/i;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lf0/i;->b(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v11

    .line 11
    iget-object v1, v1, Lf0/i;->b:Lf0/g;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lh0/z;->j(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    iget-object v1, v0, Lf0/j;->c:Lh0/x;

    .line 18
    .line 19
    move-wide/from16 v14, p2

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v14, v15}, Lfb/a;->p0(Lh0/x;IJ)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget v1, v0, Lf0/j;->f:I

    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    if-ne v2, v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v1, v0, Lf0/j;->g:I

    .line 35
    .line 36
    move v8, v1

    .line 37
    :goto_0
    new-instance v1, Lf0/n;

    .line 38
    .line 39
    iget-object v4, v0, Lf0/j;->e:Lh0/x;

    .line 40
    .line 41
    iget-object v4, v4, Lh0/x;->b:Lo2/i1;

    .line 42
    .line 43
    invoke-interface {v4}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v4, v0, Lf0/j;->l:Lf0/u;

    .line 48
    .line 49
    iget-object v13, v4, Lf0/u;->n:Landroidx/compose/foundation/lazy/layout/b;

    .line 50
    .line 51
    iget-object v4, v0, Lf0/j;->h:Lr1/f;

    .line 52
    .line 53
    iget v6, v0, Lf0/j;->i:I

    .line 54
    .line 55
    iget v7, v0, Lf0/j;->j:I

    .line 56
    .line 57
    iget-wide v9, v0, Lf0/j;->k:J

    .line 58
    .line 59
    invoke-direct/range {v1 .. v15}, Lf0/n;-><init>(ILjava/util/List;Lr1/f;Ln3/m;IIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/b;J)V

    .line 60
    .line 61
    .line 62
    return-object v1
.end method
