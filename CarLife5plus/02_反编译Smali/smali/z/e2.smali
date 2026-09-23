.class public final Lz/e2;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lr8/e;

.field public e:Lf9/a;

.field public f:F

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lz/f2;

.field public i:I


# direct methods
.method public constructor <init>(Lz/f2;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/e2;->h:Lz/f2;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lz/e2;->g:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lz/e2;->i:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lz/e2;->i:I

    .line 9
    .line 10
    iget-object p1, p0, Lz/e2;->h:Lz/f2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Lz/f2;->a(Ll0/u;Lc8/c1;Ly8/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
