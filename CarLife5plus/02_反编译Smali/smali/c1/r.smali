.class public final Lc1/r;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Z

.field public final synthetic d:Lc1/q;


# direct methods
.method public constructor <init>(ZLr1/p;ZLc1/q;I)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc1/r;->a:Z

    .line 2
    .line 3
    iput-object p2, p0, Lc1/r;->b:Lr1/p;

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/r;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lc1/r;->d:Lc1/q;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x31

    .line 10
    .line 11
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    iget-boolean v0, p0, Lc1/r;->a:Z

    .line 16
    .line 17
    iget-object v1, p0, Lc1/r;->b:Lr1/p;

    .line 18
    .line 19
    iget-boolean v2, p0, Lc1/r;->c:Z

    .line 20
    .line 21
    iget-object v3, p0, Lc1/r;->d:Lc1/q;

    .line 22
    .line 23
    invoke-static/range {v0 .. v5}, Lc1/v;->a(ZLr1/p;ZLc1/q;Lf1/s;I)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 27
    .line 28
    return-object p1
.end method
