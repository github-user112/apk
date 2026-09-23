.class public final Lq3/l;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr1/p;

.field public final synthetic c:I

.field public final synthetic d:Lr8/e;


# direct methods
.method public constructor <init>(Lf9/k;Lr1/p;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq3/l;->a:I

    .line 1
    iput-object p1, p0, Lq3/l;->d:Lr8/e;

    iput-object p2, p0, Lq3/l;->b:Lr1/p;

    iput p3, p0, Lq3/l;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lr1/p;Lf9/n;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq3/l;->a:I

    .line 2
    iput-object p1, p0, Lq3/l;->b:Lr1/p;

    iput-object p2, p0, Lq3/l;->d:Lr8/e;

    iput p3, p0, Lq3/l;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq3/l;->a:I

    .line 2
    .line 3
    check-cast p1, Lf1/s;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lq3/l;->d:Lr8/e;

    .line 14
    .line 15
    check-cast p2, Lf9/n;

    .line 16
    .line 17
    iget v0, p0, Lq3/l;->c:I

    .line 18
    .line 19
    or-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lq3/l;->b:Lr1/p;

    .line 26
    .line 27
    invoke-static {v1, p2, p1, v0}, Lp9/q;->h(Lr1/p;Lf9/n;Lf1/s;I)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_0
    iget-object p2, p0, Lq3/l;->d:Lr8/e;

    .line 34
    .line 35
    check-cast p2, Lf9/k;

    .line 36
    .line 37
    iget v0, p0, Lq3/l;->c:I

    .line 38
    .line 39
    or-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    invoke-static {v0}, Lf1/b;->y(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lq3/l;->b:Lr1/p;

    .line 46
    .line 47
    invoke-static {v0, p1, p2, v1}, Landroidx/compose/ui/viewinterop/a;->a(ILf1/s;Lf9/k;Lr1/p;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
