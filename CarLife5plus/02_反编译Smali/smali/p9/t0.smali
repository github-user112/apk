.class public final Lp9/t0;
.super Lp9/e0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic g:[Lm9/u;


# instance fields
.field public final c:Lp9/v1;

.field public final d:Lp9/v1;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lp9/t0;

    .line 4
    .line 5
    const-string v2, "kotlinClass"

    .line 6
    .line 7
    const-string v3, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v3, "scope"

    .line 20
    .line 21
    const-string v5, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v5, "members"

    .line 28
    .line 29
    const-string v6, "getMembers()Ljava/util/Collection;"

    .line 30
    .line 31
    invoke-static {v1, v5, v6, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x3

    .line 36
    new-array v2, v2, [Lm9/u;

    .line 37
    .line 38
    aput-object v0, v2, v4

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    aput-object v1, v2, v0

    .line 45
    .line 46
    sput-object v2, Lp9/t0;->g:[Lm9/u;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(Lp9/v0;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lp9/e0;-><init>(Lp9/h0;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp9/q0;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p1, v1}, Lp9/q0;-><init>(Lp9/v0;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lp9/t0;->c:Lp9/v1;

    .line 16
    .line 17
    new-instance v0, Lp9/r0;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, p0, v2}, Lp9/r0;-><init>(Lp9/t0;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lp9/t0;->d:Lp9/v1;

    .line 28
    .line 29
    new-instance v0, Lp9/s0;

    .line 30
    .line 31
    invoke-direct {v0, p0, p1}, Lp9/s0;-><init>(Lp9/t0;Lp9/v0;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lr8/i;->a:Lr8/i;

    .line 35
    .line 36
    invoke-static {v2, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lp9/t0;->e:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Lp9/r0;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v0, p0, v3}, Lp9/r0;-><init>(Lp9/t0;I)V

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lp9/t0;->f:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v0, Lp9/s0;

    .line 55
    .line 56
    invoke-direct {v0, p1, p0}, Lp9/s0;-><init>(Lp9/v0;Lp9/t0;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 60
    .line 61
    .line 62
    return-void
.end method
