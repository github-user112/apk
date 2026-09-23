.class public final Lec/k;
.super Lec/f;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final e:Ly8/i;


# direct methods
.method public constructor <init>(Lf9/o;Ldc/d;Lw8/h;ILcc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lec/f;-><init>(Ldc/d;Lw8/h;ILcc/a;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Ly8/i;

    .line 5
    .line 6
    iput-object p1, p0, Lec/k;->e:Ly8/i;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw8/h;ILcc/a;)Lec/f;
    .locals 6

    .line 1
    new-instance v0, Lec/k;

    .line 2
    .line 3
    iget-object v1, p0, Lec/k;->e:Ly8/i;

    .line 4
    .line 5
    iget-object v2, p0, Lec/f;->d:Ldc/d;

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lec/k;-><init>(Lf9/o;Ldc/d;Lw8/h;ILcc/a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final c(Ldc/e;Lw8/c;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lec/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lec/h;-><init>(Lec/k;Ldc/e;Lw8/c;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lac/z;->f(Lf9/n;Lw8/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 12
    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 17
    .line 18
    return-object p1
.end method
