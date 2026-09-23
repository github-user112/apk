.class public Lfa/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lga/g;


# static fields
.field public static final synthetic e:[Lm9/u;


# instance fields
.field public final a:Lua/c;

.field public final b:Lv9/m0;

.field public final c:Lkb/j;

.field public final d:Lla/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lfa/b;

    .line 4
    .line 5
    const-string v2, "type"

    .line 6
    .line 7
    const-string v3, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Lm9/u;

    .line 21
    .line 22
    aput-object v0, v1, v4

    .line 23
    .line 24
    sput-object v1, Lfa/b;->e:[Lm9/u;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lba/a;Lba/e;Lua/c;)V
    .locals 2

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/a;

    .line 9
    .line 10
    const-string v1, "fqName"

    .line 11
    .line 12
    invoke-static {p3, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lfa/b;->a:Lua/c;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p3, v0, Lha/a;->j:Laa/e;

    .line 23
    .line 24
    invoke-virtual {p3, p2}, Laa/e;->a(Lla/c;)Laa/g;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object p3, Lv9/m0;->e0:Lv9/n0;

    .line 30
    .line 31
    :goto_0
    iput-object p3, p0, Lfa/b;->b:Lv9/m0;

    .line 32
    .line 33
    iget-object p3, v0, Lha/a;->a:Lkb/o;

    .line 34
    .line 35
    new-instance v0, La8/f0;

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-direct {v0, v1, p1, p0}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkb/l;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lkb/j;

    .line 47
    .line 48
    invoke-direct {p1, p3, v0}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lfa/b;->c:Lkb/j;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2}, Lba/e;->b()Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Ls8/p;->d0(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lla/a;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 p1, 0x0

    .line 67
    :goto_1
    iput-object p1, p0, Lfa/b;->d:Lla/a;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/b;->a:Lua/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Ls8/x;->a:Ls8/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/b;->b:Lv9/m0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Llb/w;
    .locals 2

    .line 1
    sget-object v0, Lfa/b;->e:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lfa/b;->c:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llb/a0;

    .line 13
    .line 14
    return-object v0
.end method
