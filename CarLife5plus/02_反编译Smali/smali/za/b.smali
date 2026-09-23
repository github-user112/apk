.class public Lza/b;
.super Lza/g;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lf9/k;


# direct methods
.method public constructor <init>(Ljava/util/List;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lza/b;->b:Lf9/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lv9/y;)Llb/w;
    .locals 1

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lza/b;->b:Lf9/k;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Llb/w;

    .line 13
    .line 14
    invoke-static {p1}, Ls9/i;->z(Llb/w;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Llb/w;->D0()Llb/k0;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-static {v0}, Ls9/i;->s(Lv9/h;)Ls9/k;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_0
    sget-object v0, Ls9/o;->W:Lua/c;

    .line 38
    .line 39
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 40
    .line 41
    invoke-static {p1, v0}, Ls9/i;->C(Llb/w;Lua/d;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    sget-object v0, Ls9/o;->X:Lua/c;

    .line 48
    .line 49
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 50
    .line 51
    invoke-static {p1, v0}, Ls9/i;->C(Llb/w;Lua/d;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    sget-object v0, Ls9/o;->Y:Lua/c;

    .line 58
    .line 59
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 60
    .line 61
    invoke-static {p1, v0}, Ls9/i;->C(Llb/w;Lua/d;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    sget-object v0, Ls9/o;->Z:Lua/c;

    .line 68
    .line 69
    iget-object v0, v0, Lua/c;->a:Lua/d;

    .line 70
    .line 71
    invoke-static {p1, v0}, Ls9/i;->C(Llb/w;Lua/d;)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    return-object p1
.end method
