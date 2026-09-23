.class public final Lc1/y0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lf9/n;

.field public final synthetic b:Lf9/o;

.field public final synthetic c:Lf9/n;

.field public final synthetic d:Lf9/n;

.field public final synthetic e:Lf9/n;

.field public final synthetic f:Lf9/n;

.field public final synthetic g:Lf9/n;

.field public final synthetic h:Z

.field public final synthetic i:F

.field public final synthetic j:Lf9/k;

.field public final synthetic k:Ln1/c;

.field public final synthetic l:Lf9/n;

.field public final synthetic m:Ld0/h0;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public constructor <init>(Lf9/n;Lf9/o;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;ZFLf9/k;Ln1/c;Lf9/n;Ld0/h0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/y0;->a:Lf9/n;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/y0;->b:Lf9/o;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/y0;->c:Lf9/n;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/y0;->d:Lf9/n;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/y0;->e:Lf9/n;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/y0;->f:Lf9/n;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/y0;->g:Lf9/n;

    .line 14
    .line 15
    iput-boolean p8, p0, Lc1/y0;->h:Z

    .line 16
    .line 17
    iput p9, p0, Lc1/y0;->i:F

    .line 18
    .line 19
    iput-object p10, p0, Lc1/y0;->j:Lf9/k;

    .line 20
    .line 21
    iput-object p11, p0, Lc1/y0;->k:Ln1/c;

    .line 22
    .line 23
    iput-object p12, p0, Lc1/y0;->l:Lf9/n;

    .line 24
    .line 25
    iput-object p13, p0, Lc1/y0;->m:Ld0/h0;

    .line 26
    .line 27
    iput p14, p0, Lc1/y0;->n:I

    .line 28
    .line 29
    iput p15, p0, Lc1/y0;->o:I

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    check-cast v14, Lf1/s;

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
    iget v1, v0, Lc1/y0;->n:I

    .line 15
    .line 16
    or-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result v15

    .line 22
    iget v1, v0, Lc1/y0;->o:I

    .line 23
    .line 24
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v16

    .line 28
    iget-object v1, v0, Lc1/y0;->a:Lf9/n;

    .line 29
    .line 30
    iget-object v2, v0, Lc1/y0;->b:Lf9/o;

    .line 31
    .line 32
    iget-object v3, v0, Lc1/y0;->c:Lf9/n;

    .line 33
    .line 34
    iget-object v4, v0, Lc1/y0;->d:Lf9/n;

    .line 35
    .line 36
    iget-object v5, v0, Lc1/y0;->e:Lf9/n;

    .line 37
    .line 38
    iget-object v6, v0, Lc1/y0;->f:Lf9/n;

    .line 39
    .line 40
    iget-object v7, v0, Lc1/y0;->g:Lf9/n;

    .line 41
    .line 42
    iget-boolean v8, v0, Lc1/y0;->h:Z

    .line 43
    .line 44
    iget v9, v0, Lc1/y0;->i:F

    .line 45
    .line 46
    iget-object v10, v0, Lc1/y0;->j:Lf9/k;

    .line 47
    .line 48
    iget-object v11, v0, Lc1/y0;->k:Ln1/c;

    .line 49
    .line 50
    iget-object v12, v0, Lc1/y0;->l:Lf9/n;

    .line 51
    .line 52
    iget-object v13, v0, Lc1/y0;->m:Ld0/h0;

    .line 53
    .line 54
    invoke-static/range {v1 .. v16}, Lc1/b1;->b(Lf9/n;Lf9/o;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;ZFLf9/k;Ln1/c;Lf9/n;Ld0/h0;Lf1/s;II)V

    .line 55
    .line 56
    .line 57
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 58
    .line 59
    return-object v1
.end method
