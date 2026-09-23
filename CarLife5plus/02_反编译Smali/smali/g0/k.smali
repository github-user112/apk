.class public final Lg0/k;
.super Lfb/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lg0/h;

.field public final c:Lh0/x;

.field public final d:I

.field public final synthetic e:Lh0/x;

.field public final synthetic f:Lg0/u;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Lg0/h;Lh0/x;ILg0/u;IIJ)V
    .locals 0

    .line 1
    iput-object p2, p0, Lg0/k;->e:Lh0/x;

    .line 2
    .line 3
    iput-object p4, p0, Lg0/k;->f:Lg0/u;

    .line 4
    .line 5
    iput p5, p0, Lg0/k;->g:I

    .line 6
    .line 7
    iput p6, p0, Lg0/k;->h:I

    .line 8
    .line 9
    iput-wide p7, p0, Lg0/k;->i:J

    .line 10
    .line 11
    invoke-direct {p0}, Lfb/a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lg0/k;->b:Lg0/h;

    .line 15
    .line 16
    iput-object p2, p0, Lg0/k;->c:Lh0/x;

    .line 17
    .line 18
    iput p3, p0, Lg0/k;->d:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final u0(IJIII)Lg0/n;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v0, Lg0/k;->b:Lg0/h;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lg0/h;->b(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-object v1, v1, Lg0/h;->b:Lg0/g;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lh0/z;->j(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    iget-object v1, v0, Lg0/k;->c:Lh0/x;

    .line 18
    .line 19
    move-wide/from16 v14, p2

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v14, v15}, Lfb/a;->p0(Lh0/x;IJ)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    invoke-static {v14, v15}, Ln3/a;->f(J)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-static {v14, v15}, Ln3/a;->j(J)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_0
    move v4, v1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v14, v15}, Ln3/a;->e(J)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const-string v1, "does not have fixed height"

    .line 44
    .line 45
    invoke-static {v1}, Lc0/b;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-static {v14, v15}, Ln3/a;->i(J)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    goto :goto_0

    .line 53
    :goto_1
    iget-object v1, v0, Lg0/k;->e:Lh0/x;

    .line 54
    .line 55
    iget-object v1, v1, Lh0/x;->b:Lo2/i1;

    .line 56
    .line 57
    invoke-interface {v1}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v1, v0, Lg0/k;->f:Lg0/u;

    .line 62
    .line 63
    iget-object v13, v1, Lg0/u;->m:Landroidx/compose/foundation/lazy/layout/b;

    .line 64
    .line 65
    new-instance v1, Lg0/n;

    .line 66
    .line 67
    iget v8, v0, Lg0/k;->h:I

    .line 68
    .line 69
    iget-wide v10, v0, Lg0/k;->i:J

    .line 70
    .line 71
    iget v7, v0, Lg0/k;->g:I

    .line 72
    .line 73
    move/from16 v16, p4

    .line 74
    .line 75
    move/from16 v17, p5

    .line 76
    .line 77
    move/from16 v5, p6

    .line 78
    .line 79
    invoke-direct/range {v1 .. v17}, Lg0/n;-><init>(ILjava/lang/Object;IILn3/m;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/b;JII)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method
