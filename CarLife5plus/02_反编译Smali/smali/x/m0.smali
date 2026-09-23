.class public final Lx/m0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo2/m0;


# static fields
.field public static final a:Lx/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/m0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx/m0;->a:Lx/m0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final synthetic a(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->j(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(Lo2/o0;Ljava/util/List;J)Lo2/n0;
    .locals 1

    .line 1
    invoke-static {p3, p4}, Ln3/a;->j(J)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p3, p4}, Ln3/a;->i(J)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    new-instance p4, Lv/x0;

    .line 10
    .line 11
    const/16 v0, 0x15

    .line 12
    .line 13
    invoke-direct {p4, v0}, Lv/x0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ls8/x;->a:Ls8/x;

    .line 17
    .line 18
    invoke-interface {p1, p2, p3, v0, p4}, Lo2/o0;->R(IILjava/util/Map;Lf9/k;)Lo2/n0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public final synthetic f(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->e(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic h(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->c(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final synthetic j(Lo2/r;Ljava/util/List;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, La2/f;->h(Lo2/m0;Lo2/r;Ljava/util/List;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
