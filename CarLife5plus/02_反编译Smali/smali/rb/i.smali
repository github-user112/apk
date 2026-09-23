.class public final Lrb/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lua/e;

.field public final b:Lg9/x;

.field public final c:Ljava/util/Collection;

.field public final d:Lf9/k;

.field public final e:[Lrb/e;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;[Lrb/e;)V
    .locals 1

    .line 9
    sget-object v0, Lrb/h;->d:Lrb/h;

    invoke-direct {p0, p1, p2, v0}, Lrb/i;-><init>(Ljava/util/Collection;[Lrb/e;Lf9/k;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[Lrb/e;Lf9/k;)V
    .locals 6

    const-string v0, "nameList"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lrb/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lrb/i;-><init>(Lua/e;Lg9/x;Ljava/util/Collection;Lf9/k;[Lrb/e;)V

    return-void
.end method

.method public varargs constructor <init>(Lua/e;Lg9/x;Ljava/util/Collection;Lf9/k;[Lrb/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrb/i;->a:Lua/e;

    .line 3
    iput-object p2, p0, Lrb/i;->b:Lg9/x;

    .line 4
    iput-object p3, p0, Lrb/i;->c:Ljava/util/Collection;

    .line 5
    iput-object p4, p0, Lrb/i;->d:Lf9/k;

    .line 6
    iput-object p5, p0, Lrb/i;->e:[Lrb/e;

    return-void
.end method

.method public synthetic constructor <init>(Lua/e;[Lrb/e;)V
    .locals 1

    .line 7
    sget-object v0, Lrb/h;->b:Lrb/h;

    invoke-direct {p0, p1, p2, v0}, Lrb/i;-><init>(Lua/e;[Lrb/e;Lf9/k;)V

    return-void
.end method

.method public constructor <init>(Lua/e;[Lrb/e;Lf9/k;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lrb/e;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lrb/i;-><init>(Lua/e;Lg9/x;Ljava/util/Collection;Lf9/k;[Lrb/e;)V

    return-void
.end method
