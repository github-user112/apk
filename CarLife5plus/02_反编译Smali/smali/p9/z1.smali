.class public abstract Lp9/z1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lwa/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lwa/g;->c:Lwa/g;

    .line 2
    .line 3
    sput-object v0, Lp9/z1;->a:Lwa/g;

    .line 4
    .line 5
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Lv9/c;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lp9/c2;->g(Lv9/c;)Ly9/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lv9/b;->a0()Ly9/v;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v1, "."

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ly9/v;->getType()Llb/w;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    if-eqz v0, :cond_1

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const-string v2, "("

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_2
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1}, Ly9/v;->getType()Llb/w;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    const-string p1, ")"

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public static b(Lv9/t;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "fun "

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Lp9/z1;->a(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Ly9/m;

    .line 16
    .line 17
    invoke-virtual {v0}, Ly9/m;->getName()Lua/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "getName(...)"

    .line 22
    .line 23
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    sget-object v3, Lp9/z1;->a:Lwa/g;

    .line 28
    .line 29
    invoke-virtual {v3, v0, v2}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Lv9/b;->S()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v2, "getValueParameters(...)"

    .line 41
    .line 42
    invoke-static {v0, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v5, Lp9/b;->h:Lp9/b;

    .line 46
    .line 47
    const/16 v6, 0x30

    .line 48
    .line 49
    const-string v2, ", "

    .line 50
    .line 51
    const-string v3, "("

    .line 52
    .line 53
    const-string v4, ")"

    .line 54
    .line 55
    invoke-static/range {v0 .. v6}, Ls8/p;->h0(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf9/k;I)V

    .line 56
    .line 57
    .line 58
    const-string v0, ": "

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Lv9/b;->p()Llb/w;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static c(Lv9/k0;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lv9/t0;->Z()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "var "

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v1, "val "

    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p0}, Lp9/z1;->a(Ljava/lang/StringBuilder;Lv9/c;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "getName(...)"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    sget-object v3, Lp9/z1;->a:Lwa/g;

    .line 34
    .line 35
    invoke-virtual {v3, v1, v2}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ": "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-interface {p0}, Lv9/s0;->getType()Llb/w;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v1, "getType(...)"

    .line 52
    .line 53
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lp9/z1;->d(Llb/w;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method public static d(Llb/w;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lp9/z1;->a:Lwa/g;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lwa/g;->V(Llb/w;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
