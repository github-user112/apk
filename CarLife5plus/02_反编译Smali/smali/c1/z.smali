.class public final Lc1/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb1/m;


# static fields
.field public static final a:Lc1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc1/z;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc1/z;->a:Lc1/z;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lf1/s;)Lb1/g;
    .locals 1

    .line 1
    const v0, -0x1157ee36

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lf1/s;->p(Z)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lc1/g1;->a:Lb1/g;

    .line 12
    .line 13
    return-object p1
.end method

.method public final b(Lf1/s;)J
    .locals 3

    .line 1
    const v0, -0x6df157d1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lc1/a0;->a:Lf1/c0;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lf1/s;->j(Lf1/t1;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ly1/q;

    .line 14
    .line 15
    iget-wide v0, v0, Ly1/q;->a:J

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 19
    .line 20
    .line 21
    return-wide v0
.end method
