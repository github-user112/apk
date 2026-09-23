.class public final synthetic Lq7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lq7/d;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lq7/d;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/a;->a:Lq7/d;

    .line 5
    .line 6
    iput p2, p0, Lq7/a;->b:I

    .line 7
    .line 8
    iput p3, p0, Lq7/a;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lf1/s;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, Lq7/a;->a:Lq7/d;

    .line 14
    .line 15
    iget v1, p0, Lq7/a;->b:I

    .line 16
    .line 17
    iget v2, p0, Lq7/a;->c:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1, p2}, Lq7/d;->f(IILf1/s;I)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    return-object p1
.end method
