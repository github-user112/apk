.class public final Lz/r0;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lz/s1;

.field public e:Lg9/u;

.field public f:F

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lz/v0;

.field public i:I


# direct methods
.method public constructor <init>(Lz/v0;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/r0;->h:Lz/v0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iput-object p1, p0, Lz/r0;->g:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lz/r0;->i:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lz/r0;->i:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    iget-object v0, p0, Lz/r0;->h:Lz/v0;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lz/v0;->a(Lz/v0;Lz/s1;Lz/q0;FFLy8/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
