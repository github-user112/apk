.class public final Lv9/l0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lv9/n0;

.field public static final synthetic e:[Lm9/u;


# instance fields
.field public final a:Ly9/b;

.field public final b:Lf9/k;

.field public final c:Lkb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lv9/l0;

    .line 4
    .line 5
    const-string v2, "scopeForOwnerModule"

    .line 6
    .line 7
    const-string v3, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

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
    sput-object v1, Lv9/l0;->e:[Lm9/u;

    .line 25
    .line 26
    new-instance v0, Lv9/n0;

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    invoke-direct {v0, v1}, Lv9/n0;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lv9/l0;->d:Lv9/n0;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Ly9/b;Lkb/o;Lf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv9/l0;->a:Ly9/b;

    .line 5
    .line 6
    iput-object p3, p0, Lv9/l0;->b:Lf9/k;

    .line 7
    .line 8
    new-instance p1, La8/g0;

    .line 9
    .line 10
    const/16 p3, 0x18

    .line 11
    .line 12
    invoke-direct {p1, p3, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lkb/l;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance p3, Lkb/j;

    .line 21
    .line 22
    invoke-direct {p3, p2, p1}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 23
    .line 24
    .line 25
    iput-object p3, p0, Lv9/l0;->c:Lkb/j;

    .line 26
    .line 27
    return-void
.end method
