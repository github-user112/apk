.class public final synthetic Lc1/r2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ly1/r;
.implements Lg9/h;


# instance fields
.field public final synthetic a:Lc1/q0;


# direct methods
.method public constructor <init>(Lc1/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc1/r2;->a:Lc1/q0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/r2;->a:Lc1/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc1/q0;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ly1/q;

    .line 8
    .line 9
    iget-wide v0, v0, Ly1/q;->a:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final b()Lr8/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lc1/r2;->a:Lc1/q0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ly1/r;

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
    iget-object v0, p0, Lc1/r2;->a:Lc1/q0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lg9/s;->equals(Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lc1/r2;->a:Lc1/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg9/s;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
