.class public final Lfa/g;
.super Lfa/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic g:[Lm9/u;


# instance fields
.field public final f:Lkb/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lfa/g;

    .line 4
    .line 5
    const-string v2, "allValueArguments"

    .line 6
    .line 7
    const-string v3, "getAllValueArguments()Ljava/util/Map;"

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
    sput-object v1, Lfa/g;->g:[Lm9/u;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lba/e;Lba/a;)V
    .locals 1

    .line 1
    const-string v0, "c"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ls9/o;->m:Lua/c;

    .line 7
    .line 8
    invoke-direct {p0, p2, p1, v0}, Lfa/b;-><init>(Lba/a;Lba/e;Lua/c;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p2, Lba/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lha/a;

    .line 14
    .line 15
    iget-object p1, p1, Lha/a;->a:Lkb/o;

    .line 16
    .line 17
    check-cast p1, Lkb/l;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance p2, Lkb/j;

    .line 23
    .line 24
    sget-object v0, Lfa/f;->a:Lfa/f;

    .line 25
    .line 26
    invoke-direct {p2, p1, v0}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lfa/g;->f:Lkb/j;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 2

    .line 1
    sget-object v0, Lfa/g;->g:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lfa/g;->f:Lkb/j;

    .line 7
    .line 8
    invoke-static {v1, v0}, Li2/c;->F(Lkb/m;Lm9/u;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    .line 14
    return-object v0
.end method
