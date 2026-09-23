.class public final synthetic Ll0/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lg3/w;

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Lb3/o0;

.field public final synthetic e:Lb3/i0;

.field public final synthetic f:Lf9/k;

.field public final synthetic g:Lb0/k;

.field public final synthetic h:Ly1/n0;

.field public final synthetic i:Z

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Lg3/k;

.field public final synthetic m:Ll0/q0;

.field public final synthetic n:Z

.field public final synthetic o:Ln1/c;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lg3/w;Lf9/k;Lr1/p;Lb3/o0;Lb3/i0;Lf9/k;Lb0/k;Ly1/n0;ZIILg3/k;Ll0/q0;ZLn1/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/q;->a:Lg3/w;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/q;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Ll0/q;->c:Lr1/p;

    .line 9
    .line 10
    iput-object p4, p0, Ll0/q;->d:Lb3/o0;

    .line 11
    .line 12
    iput-object p5, p0, Ll0/q;->e:Lb3/i0;

    .line 13
    .line 14
    iput-object p6, p0, Ll0/q;->f:Lf9/k;

    .line 15
    .line 16
    iput-object p7, p0, Ll0/q;->g:Lb0/k;

    .line 17
    .line 18
    iput-object p8, p0, Ll0/q;->h:Ly1/n0;

    .line 19
    .line 20
    iput-boolean p9, p0, Ll0/q;->i:Z

    .line 21
    .line 22
    iput p10, p0, Ll0/q;->j:I

    .line 23
    .line 24
    iput p11, p0, Ll0/q;->k:I

    .line 25
    .line 26
    iput-object p12, p0, Ll0/q;->l:Lg3/k;

    .line 27
    .line 28
    iput-object p13, p0, Ll0/q;->m:Ll0/q0;

    .line 29
    .line 30
    iput-boolean p14, p0, Ll0/q;->n:Z

    .line 31
    .line 32
    iput-object p15, p0, Ll0/q;->o:Ln1/c;

    .line 33
    .line 34
    move/from16 p1, p16

    .line 35
    .line 36
    iput p1, p0, Ll0/q;->p:I

    .line 37
    .line 38
    move/from16 p1, p17

    .line 39
    .line 40
    iput p1, p0, Ll0/q;->q:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

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
    check-cast v1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget v1, v0, Ll0/q;->p:I

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
    iget v1, v0, Ll0/q;->q:I

    .line 23
    .line 24
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v18

    .line 28
    iget-object v1, v0, Ll0/q;->a:Lg3/w;

    .line 29
    .line 30
    iget-object v2, v0, Ll0/q;->b:Lf9/k;

    .line 31
    .line 32
    iget-object v3, v0, Ll0/q;->c:Lr1/p;

    .line 33
    .line 34
    iget-object v4, v0, Ll0/q;->d:Lb3/o0;

    .line 35
    .line 36
    iget-object v5, v0, Ll0/q;->e:Lb3/i0;

    .line 37
    .line 38
    iget-object v6, v0, Ll0/q;->f:Lf9/k;

    .line 39
    .line 40
    iget-object v7, v0, Ll0/q;->g:Lb0/k;

    .line 41
    .line 42
    iget-object v8, v0, Ll0/q;->h:Ly1/n0;

    .line 43
    .line 44
    iget-boolean v9, v0, Ll0/q;->i:Z

    .line 45
    .line 46
    iget v10, v0, Ll0/q;->j:I

    .line 47
    .line 48
    iget v11, v0, Ll0/q;->k:I

    .line 49
    .line 50
    iget-object v12, v0, Ll0/q;->l:Lg3/k;

    .line 51
    .line 52
    iget-object v13, v0, Ll0/q;->m:Ll0/q0;

    .line 53
    .line 54
    iget-boolean v14, v0, Ll0/q;->n:Z

    .line 55
    .line 56
    iget-object v15, v0, Ll0/q;->o:Ln1/c;

    .line 57
    .line 58
    invoke-static/range {v1 .. v18}, Ll0/p0;->e(Lg3/w;Lf9/k;Lr1/p;Lb3/o0;Lb3/i0;Lf9/k;Lb0/k;Ly1/n0;ZIILg3/k;Ll0/q0;ZLn1/c;Lf1/s;II)V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 62
    .line 63
    return-object v1
.end method
