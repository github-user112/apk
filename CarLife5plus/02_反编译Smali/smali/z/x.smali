.class public final Lz/x;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lf9/k;

.field public e:Lk2/m0;

.field public f:Lz/w0;

.field public g:Lk2/m0;

.field public h:Lg9/w;

.field public synthetic i:Ljava/lang/Object;

.field public j:I


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iput-object p1, p0, Lz/x;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lz/x;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lz/x;->j:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-static {p1, v0, v1, p1, p0}, Lz/y;->g(Lk2/m0;JLs0/d;Ly8/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
