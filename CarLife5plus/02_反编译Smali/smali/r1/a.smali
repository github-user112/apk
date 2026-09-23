.class public abstract Lr1/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr1/e;

.field public static final b:Lr1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr1/e;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lr1/e;-><init>(F)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lr1/a;->a:Lr1/e;

    .line 9
    .line 10
    new-instance v0, Lr1/e;

    .line 11
    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lr1/e;-><init>(F)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lr1/a;->b:Lr1/e;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Lr1/p;Lf9/o;)Lr1/p;
    .locals 1

    .line 1
    new-instance v0, Lr1/k;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lr1/k;-><init>(Lf9/o;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Lr1/p;->a(Lr1/p;)Lr1/p;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final b(Lf1/s;Lr1/p;)Lr1/p;
    .locals 2

    .line 1
    sget-object v0, Lr1/l;->a:Lr1/l;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lr1/p;->h(Lf9/k;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    const v0, 0x48ae8da7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lf1/s;->X(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lc1/n;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1, p0}, Lc1/n;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lr1/m;->a:Lr1/m;

    .line 23
    .line 24
    invoke-interface {p1, v0, v1}, Lr1/p;->g(Lf9/n;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lr1/p;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lf1/s;->p(Z)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static final c(Lf1/s;Lr1/p;)Lr1/p;
    .locals 1

    .line 1
    const v0, 0x1a365f2c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Lr1/a;->b(Lf1/s;Lr1/p;)Lr1/p;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lf1/s;->p(Z)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
