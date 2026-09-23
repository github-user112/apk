.class public final Lc1/o;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Ly1/l0;

.field public final synthetic c:Lc1/l;

.field public final synthetic d:Lc1/m;

.field public final synthetic e:Ln1/c;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/o;->a:Lr1/p;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/o;->b:Ly1/l0;

    .line 4
    .line 5
    iput-object p3, p0, Lc1/o;->c:Lc1/l;

    .line 6
    .line 7
    iput-object p4, p0, Lc1/o;->d:Lc1/m;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/o;->e:Ln1/c;

    .line 10
    .line 11
    iput p6, p0, Lc1/o;->f:I

    .line 12
    .line 13
    iput p7, p0, Lc1/o;->g:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lc1/o;->f:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget v7, p0, Lc1/o;->g:I

    .line 18
    .line 19
    iget-object v0, p0, Lc1/o;->a:Lr1/p;

    .line 20
    .line 21
    iget-object v1, p0, Lc1/o;->b:Ly1/l0;

    .line 22
    .line 23
    iget-object v2, p0, Lc1/o;->c:Lc1/l;

    .line 24
    .line 25
    iget-object v3, p0, Lc1/o;->d:Lc1/m;

    .line 26
    .line 27
    iget-object v4, p0, Lc1/o;->e:Ln1/c;

    .line 28
    .line 29
    invoke-static/range {v0 .. v7}, Lc1/g1;->b(Lr1/p;Ly1/l0;Lc1/l;Lc1/m;Ln1/c;Lf1/s;II)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1
.end method
