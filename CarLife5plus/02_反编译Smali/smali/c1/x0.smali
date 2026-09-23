.class public final Lc1/x0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Z

.field public final synthetic e:Lb3/o0;

.field public final synthetic f:Lf9/n;

.field public final synthetic g:Lf9/n;

.field public final synthetic h:Lb3/i0;

.field public final synthetic i:Ll0/r0;

.field public final synthetic j:Ll0/q0;

.field public final synthetic k:Z

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Ly1/l0;

.field public final synthetic o:Lc1/q2;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/x0;->a:Ljava/lang/String;

    iput-object p2, p0, Lc1/x0;->b:Lf9/k;

    iput-object p3, p0, Lc1/x0;->c:Lr1/p;

    iput-boolean p4, p0, Lc1/x0;->d:Z

    iput-object p5, p0, Lc1/x0;->e:Lb3/o0;

    iput-object p6, p0, Lc1/x0;->f:Lf9/n;

    iput-object p7, p0, Lc1/x0;->g:Lf9/n;

    iput-object p8, p0, Lc1/x0;->h:Lb3/i0;

    iput-object p9, p0, Lc1/x0;->i:Ll0/r0;

    iput-object p10, p0, Lc1/x0;->j:Ll0/q0;

    iput-boolean p11, p0, Lc1/x0;->k:Z

    iput p12, p0, Lc1/x0;->l:I

    iput p13, p0, Lc1/x0;->m:I

    iput-object p14, p0, Lc1/x0;->n:Ly1/l0;

    iput-object p15, p0, Lc1/x0;->o:Lc1/q2;

    move/from16 p1, p16

    iput p1, p0, Lc1/x0;->p:I

    move/from16 p1, p17

    iput p1, p0, Lc1/x0;->q:I

    move/from16 p1, p18

    iput p1, p0, Lc1/x0;->r:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v16, p1

    .line 4
    .line 5
    check-cast v16, Lf1/s;

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
    iget v1, v0, Lc1/x0;->p:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result v17

    .line 22
    iget v1, v0, Lc1/x0;->q:I

    .line 23
    .line 24
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v18

    .line 28
    iget v1, v0, Lc1/x0;->r:I

    .line 29
    .line 30
    move/from16 v19, v1

    .line 31
    .line 32
    iget-object v1, v0, Lc1/x0;->a:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v2, v0, Lc1/x0;->b:Lf9/k;

    .line 35
    .line 36
    iget-object v3, v0, Lc1/x0;->c:Lr1/p;

    .line 37
    .line 38
    iget-boolean v4, v0, Lc1/x0;->d:Z

    .line 39
    .line 40
    iget-object v5, v0, Lc1/x0;->e:Lb3/o0;

    .line 41
    .line 42
    iget-object v6, v0, Lc1/x0;->f:Lf9/n;

    .line 43
    .line 44
    iget-object v7, v0, Lc1/x0;->g:Lf9/n;

    .line 45
    .line 46
    iget-object v8, v0, Lc1/x0;->h:Lb3/i0;

    .line 47
    .line 48
    iget-object v9, v0, Lc1/x0;->i:Ll0/r0;

    .line 49
    .line 50
    iget-object v10, v0, Lc1/x0;->j:Ll0/q0;

    .line 51
    .line 52
    iget-boolean v11, v0, Lc1/x0;->k:Z

    .line 53
    .line 54
    iget v12, v0, Lc1/x0;->l:I

    .line 55
    .line 56
    iget v13, v0, Lc1/x0;->m:I

    .line 57
    .line 58
    iget-object v14, v0, Lc1/x0;->n:Ly1/l0;

    .line 59
    .line 60
    iget-object v15, v0, Lc1/x0;->o:Lc1/q2;

    .line 61
    .line 62
    invoke-static/range {v1 .. v19}, Lc1/b1;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Lf9/n;Lf9/n;Lb3/i0;Ll0/r0;Ll0/q0;ZIILy1/l0;Lc1/q2;Lf1/s;III)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 66
    .line 67
    return-object v1
.end method
