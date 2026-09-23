.class public abstract Lw0/x1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lf1/c0;

.field public static final b:Lw0/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Lu7/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lf1/c0;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lf1/c0;-><init>(Lf9/a;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Lw0/x1;->a:Lf1/c0;

    .line 13
    .line 14
    const-wide v0, 0xff4286f4L

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ly1/h0;->d(J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    new-instance v2, Lw0/w1;

    .line 24
    .line 25
    const v3, 0x3ecccccd    # 0.4f

    .line 26
    .line 27
    .line 28
    invoke-static {v3, v0, v1}, Ly1/q;->b(FJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-direct {v2, v0, v1, v3, v4}, Lw0/w1;-><init>(JJ)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lw0/x1;->b:Lw0/w1;

    .line 36
    .line 37
    return-void
.end method
