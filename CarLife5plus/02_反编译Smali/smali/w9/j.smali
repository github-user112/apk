.class public final Lw9/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw9/b;


# instance fields
.field public final a:Ls9/i;

.field public final b:Lua/c;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls9/i;Lua/c;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "builtIns"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "fqName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lw9/j;->a:Ls9/i;

    .line 15
    .line 16
    iput-object p2, p0, Lw9/j;->b:Lua/c;

    .line 17
    .line 18
    iput-object p3, p0, Lw9/j;->c:Ljava/util/Map;

    .line 19
    .line 20
    new-instance p1, La8/g0;

    .line 21
    .line 22
    const/16 p2, 0x19

    .line 23
    .line 24
    invoke-direct {p1, p2, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p2, Lr8/i;->a:Lr8/i;

    .line 28
    .line 29
    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lw9/j;->d:Ljava/lang/Object;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/j;->b:Lua/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/j;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Llb/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/j;->d:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Llb/w;

    .line 13
    .line 14
    return-object v0
.end method
