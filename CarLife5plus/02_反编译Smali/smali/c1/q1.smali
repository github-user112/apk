.class public final Lc1/q1;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final a:Lc1/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc1/q1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lg9/n;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lc1/q1;->a:Lc1/q1;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, La2/g;

    .line 3
    .line 4
    check-cast p2, Lx1/b;

    .line 5
    .line 6
    iget-wide v4, p2, Lx1/b;->a:J

    .line 7
    .line 8
    check-cast p3, Ly1/q;

    .line 9
    .line 10
    iget-wide v1, p3, Ly1/q;->a:J

    .line 11
    .line 12
    sget p1, Lc1/t1;->c:F

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ln3/c;->S(F)F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/high16 p2, 0x40000000    # 2.0f

    .line 19
    .line 20
    div-float v3, p1, p2

    .line 21
    .line 22
    const/16 v6, 0x78

    .line 23
    .line 24
    invoke-static/range {v0 .. v6}, La2/f;->s(La2/g;JFJI)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1
.end method
