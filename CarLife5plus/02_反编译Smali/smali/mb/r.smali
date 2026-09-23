.class public abstract enum Lmb/r;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum a:Lmb/p;

.field public static final enum b:Lmb/n;

.field public static final enum c:Lmb/q;

.field public static final enum d:Lmb/o;

.field public static final synthetic e:[Lmb/r;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lmb/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lmb/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmb/r;->a:Lmb/p;

    .line 7
    .line 8
    new-instance v1, Lmb/n;

    .line 9
    .line 10
    invoke-direct {v1}, Lmb/n;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lmb/r;->b:Lmb/n;

    .line 14
    .line 15
    new-instance v2, Lmb/q;

    .line 16
    .line 17
    invoke-direct {v2}, Lmb/q;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v2, Lmb/r;->c:Lmb/q;

    .line 21
    .line 22
    new-instance v3, Lmb/o;

    .line 23
    .line 24
    invoke-direct {v3}, Lmb/o;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v3, Lmb/r;->d:Lmb/o;

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    new-array v4, v4, [Lmb/r;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    aput-object v0, v4, v5

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    aput-object v1, v4, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object v2, v4, v0

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    aput-object v3, v4, v0

    .line 43
    .line 44
    sput-object v4, Lmb/r;->e:[Lmb/r;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Llb/x0;)Lmb/r;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Llb/w;->E0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lmb/r;->b:Lmb/n;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    instance-of v0, p0, Llb/l;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    move-object v0, p0

    .line 20
    check-cast v0, Llb/l;

    .line 21
    .line 22
    :cond_1
    sget-object v0, Lmb/e;->b:Lmb/e;

    .line 23
    .line 24
    invoke-virtual {v0}, Lmb/e;->q()Llb/j0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0}, Llb/c;->l(Llb/w;)Llb/a0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    sget-object v1, Llb/i0;->b:Llb/i0;

    .line 33
    .line 34
    invoke-static {v0, p0, v1}, Llb/c;->g(Llb/j0;Lob/e;Llb/c;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    sget-object p0, Lmb/r;->d:Lmb/o;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lmb/r;->c:Lmb/q;

    .line 44
    .line 45
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmb/r;
    .locals 1

    .line 1
    const-class v0, Lmb/r;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmb/r;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lmb/r;
    .locals 1

    .line 1
    sget-object v0, Lmb/r;->e:[Lmb/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lmb/r;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract a(Llb/x0;)Lmb/r;
.end method
