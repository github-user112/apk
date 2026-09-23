.class public final Lc1/r0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lc1/t0;

.field public final synthetic b:Z

.field public final synthetic c:Lb0/k;

.field public final synthetic d:Lr1/p;

.field public final synthetic e:Lc1/q2;

.field public final synthetic f:Ly1/l0;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Lc1/t0;ZLb0/k;Lr1/p;Lc1/q2;Ly1/l0;FFII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/r0;->a:Lc1/t0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lc1/r0;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lc1/r0;->c:Lb0/k;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/r0;->d:Lr1/p;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/r0;->e:Lc1/q2;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/r0;->f:Ly1/l0;

    .line 12
    .line 13
    iput p7, p0, Lc1/r0;->g:F

    .line 14
    .line 15
    iput p8, p0, Lc1/r0;->h:F

    .line 16
    .line 17
    iput p9, p0, Lc1/r0;->i:I

    .line 18
    .line 19
    iput p10, p0, Lc1/r0;->j:I

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lc1/r0;->i:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    iget v10, p0, Lc1/r0;->j:I

    .line 18
    .line 19
    iget-object v0, p0, Lc1/r0;->a:Lc1/t0;

    .line 20
    .line 21
    iget-boolean v1, p0, Lc1/r0;->b:Z

    .line 22
    .line 23
    iget-object v2, p0, Lc1/r0;->c:Lb0/k;

    .line 24
    .line 25
    iget-object v3, p0, Lc1/r0;->d:Lr1/p;

    .line 26
    .line 27
    iget-object v4, p0, Lc1/r0;->e:Lc1/q2;

    .line 28
    .line 29
    iget-object v5, p0, Lc1/r0;->f:Ly1/l0;

    .line 30
    .line 31
    iget v6, p0, Lc1/r0;->g:F

    .line 32
    .line 33
    iget v7, p0, Lc1/r0;->h:F

    .line 34
    .line 35
    invoke-virtual/range {v0 .. v10}, Lc1/t0;->a(ZLb0/k;Lr1/p;Lc1/q2;Ly1/l0;FFLf1/s;II)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    return-object p1
.end method
