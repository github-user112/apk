.class public final Lz/b1;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lg9/u;

.field public final synthetic g:F


# direct methods
.method public constructor <init>(Lg9/u;FLw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/b1;->f:Lg9/u;

    .line 2
    .line 3
    iput p2, p0, Lz/b1;->g:F

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lz/c1;

    .line 2
    .line 3
    check-cast p2, Lw8/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lz/b1;->i(Ljava/lang/Object;Lw8/c;)Lw8/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz/b1;

    .line 10
    .line 11
    sget-object p2, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lz/b1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p2
.end method

.method public final i(Ljava/lang/Object;Lw8/c;)Lw8/c;
    .locals 3

    .line 1
    new-instance v0, Lz/b1;

    .line 2
    .line 3
    iget-object v1, p0, Lz/b1;->f:Lg9/u;

    .line 4
    .line 5
    iget v2, p0, Lz/b1;->g:F

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lz/b1;-><init>(Lg9/u;FLw8/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lz/b1;->e:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lz/b1;->e:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lz/c1;

    .line 7
    .line 8
    iget v0, p0, Lz/b1;->g:F

    .line 9
    .line 10
    invoke-interface {p1, v0}, Lz/c1;->a(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget-object v0, p0, Lz/b1;->f:Lg9/u;

    .line 15
    .line 16
    iput p1, v0, Lg9/u;->a:F

    .line 17
    .line 18
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 19
    .line 20
    return-object p1
.end method
