.class public final Lfa/i;
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
    const-class v1, Lfa/i;

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
    sput-object v1, Lfa/i;->g:[Lm9/u;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Lba/e;Lba/a;)V
    .locals 1

    .line 1
    const-string v0, "annotation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "c"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Ls9/o;->w:Lua/c;

    .line 12
    .line 13
    invoke-direct {p0, p2, p1, v0}, Lfa/b;-><init>(Lba/a;Lba/e;Lua/c;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p2, Lba/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lha/a;

    .line 19
    .line 20
    iget-object p1, p1, Lha/a;->a:Lkb/o;

    .line 21
    .line 22
    new-instance p2, La8/g0;

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    invoke-direct {p2, v0, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lkb/l;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lkb/j;

    .line 34
    .line 35
    invoke-direct {v0, p1, p2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lfa/i;->f:Lkb/j;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 2

    .line 1
    sget-object v0, Lfa/i;->g:[Lm9/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lfa/i;->f:Lkb/j;

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
