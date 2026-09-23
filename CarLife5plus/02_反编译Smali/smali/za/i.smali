.class public final Lza/i;
.super Lza/g;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lua/b;

.field public final c:Lua/e;


# direct methods
.method public constructor <init>(Lua/b;Lua/e;)V
    .locals 1

    .line 1
    new-instance v0, Lr8/j;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lza/i;->b:Lua/b;

    .line 10
    .line 11
    iput-object p2, p0, Lza/i;->c:Lua/e;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lv9/y;)Llb/w;
    .locals 2

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/i;->b:Lua/b;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lv9/v;->d(Lv9/y;Lua/b;)Lv9/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget v1, Lxa/d;->a:I

    .line 15
    .line 16
    sget-object v1, Lv9/f;->c:Lv9/f;

    .line 17
    .line 18
    invoke-static {p1, v1}, Lxa/d;->n(Lv9/k;Lv9/f;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Lv9/e;->n()Llb/a0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    invoke-virtual {v0}, Lua/b;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lza/i;->c:Lua/e;

    .line 40
    .line 41
    iget-object v0, v0, Lua/e;->a:Ljava/lang/String;

    .line 42
    .line 43
    filled-new-array {p1, v0}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v0, Lnb/k;->A:Lnb/k;

    .line 48
    .line 49
    invoke-static {v0, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lza/i;->b:Lua/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lua/b;->f()Lua/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x2e

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lza/i;->c:Lua/e;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
