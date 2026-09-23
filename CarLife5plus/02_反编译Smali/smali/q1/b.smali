.class public final Lq1/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lg1/k0;
.implements Lw8/f;


# static fields
.field public static final b:Ln6/a;


# instance fields
.field public final a:Lf1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln6/a;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq1/b;->b:Ln6/a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lf1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq1/b;->a:Lf1/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Integer;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p1, p0, Lq1/b;->a:Lf1/s;

    .line 2
    .line 3
    invoke-virtual {p1}, Lf1/s;->D()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g(Lw8/g;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->F(Lw8/f;Lw8/g;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getKey()Lw8/g;
    .locals 1

    .line 1
    sget-object v0, Lq1/b;->b:Ln6/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m(Lw8/g;)Lw8/f;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->p(Lw8/f;Lw8/g;)Lw8/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final p(Lf9/n;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final z(Lw8/h;)Lw8/h;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
