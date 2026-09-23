.class public final Lg1/s;
.super Lg1/j0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lg1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lg1/s;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, v3, v1, v2}, Lg1/j0;-><init>(III)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lg1/s;->d:Lg1/s;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c(Lg1/l0;Lf1/c;Lf1/k2;Ln1/i;Lg1/k0;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lg1/l0;->c(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    check-cast p2, Lf1/h2;

    .line 7
    .line 8
    const/4 p4, 0x0

    .line 9
    invoke-virtual {p1, p4}, Lg1/l0;->c(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lf1/a;

    .line 14
    .line 15
    invoke-virtual {p3}, Lf1/k2;->d()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Lf1/h2;->b(Lf1/a;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p3, p2, p1}, Lf1/k2;->z(Lf1/h2;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lf1/k2;->k()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
