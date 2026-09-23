.class public final Lu9/a;
.super Leb/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final e:Lua/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "clone"

    .line 2
    .line 3
    invoke-static {v0}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lu9/a;->e:Lua/e;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lv9/m0;->e0:Lv9/n0;

    .line 3
    .line 4
    iget-object v2, p0, Leb/h;->b:Ly9/b;

    .line 5
    .line 6
    sget-object v3, Lu9/a;->e:Lua/e;

    .line 7
    .line 8
    invoke-static {v2, v3, v0, v1}, Ly9/l0;->N0(Ly9/b;Lua/e;ILv9/m0;)Ly9/l0;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v2}, Ly9/b;->A0()Ly9/v;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    invoke-static {v2}, Lbb/e;->e(Lv9/k;)Ls9/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ls9/i;->e()Llb/a0;

    .line 21
    .line 22
    .line 23
    move-result-object v10

    .line 24
    sget-object v11, Lv9/x;->d:Lv9/x;

    .line 25
    .line 26
    sget-object v12, Lv9/o;->c:Lea/o;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    sget-object v7, Ls8/w;->a:Ls8/w;

    .line 30
    .line 31
    move-object v8, v7

    .line 32
    move-object v9, v7

    .line 33
    invoke-virtual/range {v4 .. v12}, Ly9/l0;->P0(Ly9/v;Ly9/v;Ljava/util/List;Ljava/util/List;Ljava/util/List;Llb/w;Lv9/x;Lea/o;)Ly9/l0;

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
