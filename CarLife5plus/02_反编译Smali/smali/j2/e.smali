.class public final Lj2/e;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:J

.field public e:J

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lj2/g;

.field public h:I


# direct methods
.method public constructor <init>(Lj2/g;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj2/e;->g:Lj2/g;

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
    iput-object p1, p0, Lj2/e;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lj2/e;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lj2/e;->h:I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iget-object v0, p0, Lj2/e;->g:Lj2/g;

    .line 15
    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lj2/g;->r(JJLw8/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
