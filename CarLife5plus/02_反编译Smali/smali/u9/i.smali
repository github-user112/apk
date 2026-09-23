.class public final Lu9/i;
.super Ls9/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic h:[Lm9/u;


# instance fields
.field public f:Ls9/l;

.field public final g:Lkb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lu9/i;

    .line 4
    .line 5
    const-string v2, "customizer"

    .line 6
    .line 7
    const-string v3, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

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
    sput-object v1, Lu9/i;->h:[Lm9/u;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lkb/l;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ls9/i;-><init>(Lkb/l;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, La8/f0;

    .line 5
    .line 6
    const/16 v1, 0xf

    .line 7
    .line 8
    invoke-direct {v0, v1, p0, p1}, La8/f0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkb/j;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lu9/i;->g:Lkb/j;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final K()Lu9/m;
    .locals 2

    .line 1
    sget-object v0, Lu9/i;->h:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lu9/i;->g:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lu9/m;

    .line 13
    .line 14
    return-object v0
.end method

.method public final d()Lx9/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu9/i;->K()Lu9/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final m()Ljava/lang/Iterable;
    .locals 4

    .line 1
    invoke-super {p0}, Ls9/i;->m()Ljava/lang/Iterable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lu9/g;

    .line 6
    .line 7
    invoke-virtual {p0}, Ls9/i;->l()Ly9/a0;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "getBuiltInsModule(...)"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Ls9/i;->d:Lkb/l;

    .line 17
    .line 18
    invoke-direct {v1, v3, v2}, Lu9/g;-><init>(Lkb/l;Ly9/a0;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Ls8/p;->o0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final q()Lx9/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu9/i;->K()Lu9/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
