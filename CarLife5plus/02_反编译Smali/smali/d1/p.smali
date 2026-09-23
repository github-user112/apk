.class public final Ld1/p;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf9/n;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(JLf9/n;I)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ld1/p;->a:J

    .line 2
    .line 3
    iput-object p3, p0, Ld1/p;->b:Lf9/n;

    .line 4
    .line 5
    iput p4, p0, Ld1/p;->c:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
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
    iget p2, p0, Ld1/p;->c:I

    .line 9
    .line 10
    or-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-wide v0, p0, Ld1/p;->a:J

    .line 17
    .line 18
    iget-object v2, p0, Ld1/p;->b:Lf9/n;

    .line 19
    .line 20
    invoke-static {v0, v1, v2, p1, p2}, Ld1/r;->c(JLf9/n;Lf1/s;I)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    return-object p1
.end method
