.class public final Lk2/j0;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lac/j1;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lk2/m0;

.field public g:I


# direct methods
.method public constructor <init>(Lk2/m0;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk2/j0;->f:Lk2/m0;

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
    .locals 3

    .line 1
    iput-object p1, p0, Lk2/j0;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lk2/j0;->g:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lk2/j0;->g:I

    .line 9
    .line 10
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iget-object v2, p0, Lk2/j0;->f:Lk2/m0;

    .line 14
    .line 15
    invoke-virtual {v2, v0, v1, p1, p0}, Lk2/m0;->e(JLf9/n;Ly8/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
