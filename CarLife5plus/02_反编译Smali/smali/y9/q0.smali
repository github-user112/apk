.class public final Ly9/q0;
.super Ly9/r0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final l:Lr8/o;


# direct methods
.method public constructor <init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;Lf9/a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Ly9/r0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;)V

    .line 2
    .line 3
    .line 4
    move-object p1, p0

    .line 5
    invoke-static {p12}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p1, Ly9/q0;->l:Lr8/o;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final C0(Lt9/f;Lua/e;I)Ly9/r0;
    .locals 13

    .line 1
    new-instance v0, Ly9/q0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lfb/a;->getAnnotations()Lw9/h;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    const-string v1, "<get-annotations>(...)"

    .line 8
    .line 9
    invoke-static {v4, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ly9/s0;->getType()Llb/w;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    const-string v1, "getType(...)"

    .line 17
    .line 18
    invoke-static {v6, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ly9/r0;->D0()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    new-instance v12, Ly9/s;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-direct {v12, v1, p0}, Ly9/s;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iget-boolean v8, p0, Ly9/r0;->h:Z

    .line 33
    .line 34
    iget-boolean v9, p0, Ly9/r0;->i:Z

    .line 35
    .line 36
    iget-object v10, p0, Ly9/r0;->j:Llb/w;

    .line 37
    .line 38
    sget-object v11, Lv9/m0;->e0:Lv9/n0;

    .line 39
    .line 40
    move-object v1, p1

    .line 41
    move-object v5, p2

    .line 42
    move/from16 v3, p3

    .line 43
    .line 44
    invoke-direct/range {v0 .. v12}, Ly9/q0;-><init>(Lv9/b;Ly9/r0;ILw9/h;Lua/e;Llb/w;ZZZLlb/w;Lv9/m0;Lf9/a;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method
