.class public abstract Ll5/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ld7/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ly1/h0;->h()Ld7/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ll5/j;->a:Ld7/q;

    .line 6
    .line 7
    return-void
.end method

.method public static final a(Ly1/o;JLd7/q;)V
    .locals 8

    .line 1
    const-string v0, "$this$drawRect"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    shr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    int-to-float v5, v1

    .line 12
    const-wide v0, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p1, v0

    .line 18
    long-to-int p2, p1

    .line 19
    int-to-float v6, p2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v2, p0

    .line 23
    move-object v7, p3

    .line 24
    invoke-interface/range {v2 .. v7}, Ly1/o;->a(FFFFLd7/q;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final b(Ly1/o;JFLd7/q;)V
    .locals 10

    .line 1
    const-string v0, "$this$drawRoundRect"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    shr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    int-to-float v5, v1

    .line 12
    const-wide v0, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    and-long/2addr p1, v0

    .line 18
    long-to-int p2, p1

    .line 19
    int-to-float v6, p2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move v8, p3

    .line 23
    move-object v2, p0

    .line 24
    move v7, p3

    .line 25
    move-object v9, p4

    .line 26
    invoke-interface/range {v2 .. v9}, Ly1/o;->i(FFFFFFLd7/q;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
