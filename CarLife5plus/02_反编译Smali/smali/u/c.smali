.class public final Lu/c;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final a:Lu/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lg9/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu/c;->a:Lu/c;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ly1/q;

    .line 2
    .line 3
    iget-wide v0, p1, Ly1/q;->a:J

    .line 4
    .line 5
    sget-object p1, Lz1/d;->x:Lz1/l;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Ly1/q;->a(JLz1/c;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ly1/q;->h(J)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {v0, v1}, Ly1/q;->g(J)F

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1}, Ly1/q;->e(J)F

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-static {v0, v1}, Ly1/q;->d(J)F

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v1, Lv/o;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1, v2, v3}, Lv/o;-><init>(FFFF)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
