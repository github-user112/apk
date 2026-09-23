.class public final Lcc/f;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcc/h;

.field public f:I


# direct methods
.method public constructor <init>(Lcc/h;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/f;->e:Lcc/h;

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
    iput-object p1, p0, Lcc/f;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcc/f;->f:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcc/f;->f:I

    .line 9
    .line 10
    iget-object p1, p0, Lcc/f;->e:Lcc/h;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcc/h;->C(Lcc/h;Ly8/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v0, Lx8/a;->a:Lx8/a;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v0, Lcc/o;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
