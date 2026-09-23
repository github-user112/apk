.class public final Lc1/s1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lc1/t1;

.field public final synthetic b:Lc1/i2;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Z

.field public final synthetic e:Lc1/m1;

.field public final synthetic f:Lf9/n;

.field public final synthetic g:Lf9/o;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:I


# direct methods
.method public constructor <init>(Lc1/t1;Lc1/i2;Lr1/p;ZLc1/m1;Lf9/n;Lf9/o;FFI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/s1;->a:Lc1/t1;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/s1;->b:Lc1/i2;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/s1;->c:Lr1/p;

    .line 6
    .line 7
    iput-boolean p4, p0, Lc1/s1;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lc1/s1;->e:Lc1/m1;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/s1;->f:Lf9/n;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/s1;->g:Lf9/o;

    .line 14
    .line 15
    iput p8, p0, Lc1/s1;->h:F

    .line 16
    .line 17
    iput p9, p0, Lc1/s1;->i:F

    .line 18
    .line 19
    iput p10, p0, Lc1/s1;->j:I

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
    move-object v9, p1

    .line 2
    check-cast v9, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lc1/s1;->j:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    iget-object v0, p0, Lc1/s1;->a:Lc1/t1;

    .line 18
    .line 19
    iget-object v1, p0, Lc1/s1;->b:Lc1/i2;

    .line 20
    .line 21
    iget-object v2, p0, Lc1/s1;->c:Lr1/p;

    .line 22
    .line 23
    iget-boolean v3, p0, Lc1/s1;->d:Z

    .line 24
    .line 25
    iget-object v4, p0, Lc1/s1;->e:Lc1/m1;

    .line 26
    .line 27
    iget-object v5, p0, Lc1/s1;->f:Lf9/n;

    .line 28
    .line 29
    iget-object v6, p0, Lc1/s1;->g:Lf9/o;

    .line 30
    .line 31
    iget v7, p0, Lc1/s1;->h:F

    .line 32
    .line 33
    iget v8, p0, Lc1/s1;->i:F

    .line 34
    .line 35
    invoke-virtual/range {v0 .. v10}, Lc1/t1;->b(Lc1/i2;Lr1/p;ZLc1/m1;Lf9/n;Lf9/o;FFLf1/s;I)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    return-object p1
.end method
