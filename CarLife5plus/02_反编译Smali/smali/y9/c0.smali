.class public abstract Ly9/c0;
.super Ly9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv9/d0;


# instance fields
.field public final e:Lua/c;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv9/y;Lua/c;)V
    .locals 3

    .line 1
    const-string v0, "module"

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
    iget-object v0, p2, Lua/c;->a:Lua/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lua/d;->c()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    sget-object v0, Lua/d;->e:Lua/e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lua/d;->f()Lua/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    sget-object v1, Lv9/m0;->e0:Lv9/n0;

    .line 27
    .line 28
    sget-object v2, Lw9/g;->a:Lw9/f;

    .line 29
    .line 30
    invoke-direct {p0, p1, v2, v0, v1}, Ly9/n;-><init>(Lv9/k;Lw9/h;Lua/e;Lv9/m0;)V

    .line 31
    .line 32
    .line 33
    iput-object p2, p0, Ly9/c0;->e:Lua/c;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v1, "package "

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, " of "

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Ly9/c0;->f:Ljava/lang/String;

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final C0()Lv9/y;
    .locals 2

    .line 1
    invoke-super {p0}, Ly9/n;->k()Lv9/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast v0, Lv9/y;

    .line 11
    .line 12
    return-object v0
.end method

.method public final G(Lv9/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1, p0, p2}, Lv9/m;->F(Ly9/c0;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getSource()Lv9/m0;
    .locals 1

    .line 1
    sget-object v0, Lv9/m0;->e0:Lv9/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic k()Lv9/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly9/c0;->C0()Lv9/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/c0;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
