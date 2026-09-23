.class public final Lb1/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lb1/m;


# static fields
.field public static final a:Lb1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb1/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb1/d;->a:Lb1/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lf1/s;)Lb1/g;
    .locals 5

    .line 1
    const v0, -0x61250617

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-wide v0, Ly1/q;->b:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ly1/h0;->r(J)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-double v0, v0

    .line 14
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 15
    .line 16
    cmpl-double v4, v0, v2

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    sget-object v0, Lb1/o;->b:Lb1/g;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lb1/o;->c:Lb1/g;

    .line 24
    .line 25
    :goto_0
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Lf1/s;->p(Z)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final b(Lf1/s;)J
    .locals 3

    .line 1
    const v0, 0x79b8960e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lf1/s;->W(I)V

    .line 5
    .line 6
    .line 7
    sget-wide v0, Ly1/q;->b:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ly1/h0;->r(J)F

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Lf1/s;->p(Z)V

    .line 14
    .line 15
    .line 16
    return-wide v0
.end method
