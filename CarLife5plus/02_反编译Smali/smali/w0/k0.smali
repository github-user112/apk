.class public final Lw0/k0;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lk2/m0;

.field public e:Lw0/n;

.field public f:Lg9/t;

.field public synthetic g:Ljava/lang/Object;

.field public h:I


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lw0/k0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lw0/k0;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lw0/k0;->h:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p1, p1, p0}, Lw0/y0;->j(Lk2/m0;Lw0/n;Le7/l;Lk2/o;Ly8/a;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
