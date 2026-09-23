.class public final Ld1/m;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf9/n;


# direct methods
.method public constructor <init>(JLf9/n;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld1/m;->a:J

    .line 2
    .line 3
    iput-object p3, p0, Ld1/m;->b:Lf9/n;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 p2, p2, 0x3

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p2, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    iget-object p2, p0, Ld1/m;->b:Lf9/n;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iget-wide v1, p0, Ld1/m;->a:J

    .line 29
    .line 30
    invoke-static {v1, v2, p2, p1, v0}, Ld1/r;->c(JLf9/n;Lf1/s;I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 34
    .line 35
    return-object p1
.end method
