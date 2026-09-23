.class public final Lc1/x1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lf9/k;

.field public final synthetic c:Lr1/p;

.field public final synthetic d:Z

.field public final synthetic e:Ll9/a;

.field public final synthetic f:I

.field public final synthetic g:Lf9/a;

.field public final synthetic h:Lc1/m1;

.field public final synthetic i:Lb0/k;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public constructor <init>(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;II)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/x1;->a:F

    .line 2
    .line 3
    iput-object p2, p0, Lc1/x1;->b:Lf9/k;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/x1;->c:Lr1/p;

    .line 6
    .line 7
    iput-boolean p4, p0, Lc1/x1;->d:Z

    .line 8
    .line 9
    iput-object p5, p0, Lc1/x1;->e:Ll9/a;

    .line 10
    .line 11
    iput p6, p0, Lc1/x1;->f:I

    .line 12
    .line 13
    iput-object p7, p0, Lc1/x1;->g:Lf9/a;

    .line 14
    .line 15
    iput-object p8, p0, Lc1/x1;->h:Lc1/m1;

    .line 16
    .line 17
    iput-object p9, p0, Lc1/x1;->i:Lb0/k;

    .line 18
    .line 19
    iput p10, p0, Lc1/x1;->j:I

    .line 20
    .line 21
    iput p11, p0, Lc1/x1;->k:I

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

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
    iget p1, p0, Lc1/x1;->j:I

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
    iget v11, p0, Lc1/x1;->k:I

    .line 18
    .line 19
    iget v0, p0, Lc1/x1;->a:F

    .line 20
    .line 21
    iget-object v1, p0, Lc1/x1;->b:Lf9/k;

    .line 22
    .line 23
    iget-object v2, p0, Lc1/x1;->c:Lr1/p;

    .line 24
    .line 25
    iget-boolean v3, p0, Lc1/x1;->d:Z

    .line 26
    .line 27
    iget-object v4, p0, Lc1/x1;->e:Ll9/a;

    .line 28
    .line 29
    iget v5, p0, Lc1/x1;->f:I

    .line 30
    .line 31
    iget-object v6, p0, Lc1/x1;->g:Lf9/a;

    .line 32
    .line 33
    iget-object v7, p0, Lc1/x1;->h:Lc1/m1;

    .line 34
    .line 35
    iget-object v8, p0, Lc1/x1;->i:Lb0/k;

    .line 36
    .line 37
    invoke-static/range {v0 .. v11}, Lc1/g2;->b(FLf9/k;Lr1/p;ZLl9/a;ILf9/a;Lc1/m1;Lb0/k;Lf1/s;II)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 41
    .line 42
    return-object p1
.end method
