.class public final synthetic Ll0/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Z

.field public final synthetic e:Lb3/o0;

.field public final synthetic f:Ll0/r0;

.field public final synthetic g:Ll0/q0;

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:Lb3/i0;

.field public final synthetic l:Lf9/k;

.field public final synthetic m:Lb0/k;

.field public final synthetic n:Ly1/n0;

.field public final synthetic o:Ln1/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lf9/k;Lb0/k;Ly1/n0;Ln1/c;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/i;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/i;->b:Lf9/k;

    .line 7
    .line 8
    iput-object p3, p0, Ll0/i;->c:Lr1/p;

    .line 9
    .line 10
    iput-boolean p4, p0, Ll0/i;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Ll0/i;->e:Lb3/o0;

    .line 13
    .line 14
    iput-object p6, p0, Ll0/i;->f:Ll0/r0;

    .line 15
    .line 16
    iput-object p7, p0, Ll0/i;->g:Ll0/q0;

    .line 17
    .line 18
    iput-boolean p8, p0, Ll0/i;->h:Z

    .line 19
    .line 20
    iput p9, p0, Ll0/i;->i:I

    .line 21
    .line 22
    iput p10, p0, Ll0/i;->j:I

    .line 23
    .line 24
    iput-object p11, p0, Ll0/i;->k:Lb3/i0;

    .line 25
    .line 26
    iput-object p12, p0, Ll0/i;->l:Lf9/k;

    .line 27
    .line 28
    iput-object p13, p0, Ll0/i;->m:Lb0/k;

    .line 29
    .line 30
    iput-object p14, p0, Ll0/i;->n:Ly1/n0;

    .line 31
    .line 32
    iput-object p15, p0, Ll0/i;->o:Ln1/c;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 16
    .line 17
    .line 18
    move-result v17

    .line 19
    iget-object v1, v0, Ll0/i;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, v0, Ll0/i;->b:Lf9/k;

    .line 22
    .line 23
    iget-object v3, v0, Ll0/i;->c:Lr1/p;

    .line 24
    .line 25
    iget-boolean v4, v0, Ll0/i;->d:Z

    .line 26
    .line 27
    iget-object v5, v0, Ll0/i;->e:Lb3/o0;

    .line 28
    .line 29
    iget-object v6, v0, Ll0/i;->f:Ll0/r0;

    .line 30
    .line 31
    iget-object v7, v0, Ll0/i;->g:Ll0/q0;

    .line 32
    .line 33
    iget-boolean v8, v0, Ll0/i;->h:Z

    .line 34
    .line 35
    iget v9, v0, Ll0/i;->i:I

    .line 36
    .line 37
    iget v10, v0, Ll0/i;->j:I

    .line 38
    .line 39
    iget-object v11, v0, Ll0/i;->k:Lb3/i0;

    .line 40
    .line 41
    iget-object v12, v0, Ll0/i;->l:Lf9/k;

    .line 42
    .line 43
    iget-object v13, v0, Ll0/i;->m:Lb0/k;

    .line 44
    .line 45
    iget-object v14, v0, Ll0/i;->n:Ly1/n0;

    .line 46
    .line 47
    iget-object v15, v0, Ll0/i;->o:Ln1/c;

    .line 48
    .line 49
    invoke-static/range {v1 .. v17}, Ll0/j;->a(Ljava/lang/String;Lf9/k;Lr1/p;ZLb3/o0;Ll0/r0;Ll0/q0;ZIILb3/i0;Lf9/k;Lb0/k;Ly1/n0;Ln1/c;Lf1/s;I)V

    .line 50
    .line 51
    .line 52
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object v1
.end method
