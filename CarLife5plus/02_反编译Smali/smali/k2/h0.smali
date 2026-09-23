.class public final synthetic Lk2/h0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;
.implements Lg9/h;


# instance fields
.field public final synthetic a:Lf9/n;


# direct methods
.method public constructor <init>(Lf9/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk2/h0;->a:Lf9/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Lr8/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/h0;->a:Lf9/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, p1, Lg9/h;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lg9/h;

    .line 10
    .line 11
    invoke-interface {p1}, Lg9/h;->b()Lr8/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lk2/h0;->a:Lf9/n;

    .line 16
    .line 17
    invoke-static {v0, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/h0;->a:Lf9/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic invoke(Lk2/a0;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/h0;->a:Lf9/n;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lf9/n;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
