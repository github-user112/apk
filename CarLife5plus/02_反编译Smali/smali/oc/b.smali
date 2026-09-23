.class public final Loc/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Loc/b;


# instance fields
.field public final a:Lma/r;

.field public final b:Ln6/a;

.field public final c:Lkb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Loc/b;

    .line 2
    .line 3
    invoke-direct {v0}, Loc/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Loc/b;->d:Loc/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lma/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lma/r;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Loc/b;->a:Lma/r;

    .line 10
    .line 11
    sget-object v0, Lqc/a;->a:Ln6/a;

    .line 12
    .line 13
    iput-object v0, p0, Loc/b;->b:Ln6/a;

    .line 14
    .line 15
    new-instance v0, Lkb/a;

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lkb/a;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Loc/b;->c:Lkb/a;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Lnc/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Loc/b;->a:Lma/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v4, Lha/e;

    .line 7
    .line 8
    invoke-direct {v4, p2}, Lha/e;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lpc/r;

    .line 12
    .line 13
    iget-object v5, p1, Lnc/c;->b:Lnc/b;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    sget-object v3, Lpc/v;->c:Lpc/v;

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    invoke-direct/range {v1 .. v6}, Lpc/r;-><init>(Loc/b;Lpc/v;Lha/e;Llc/e;Lfc/s;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lpc/r;->V(Lkc/a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v4}, Lha/e;->f()B

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0xa

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Expected EOF after parsing, but had "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v0, v4, Lha/e;->b:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, " instead"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    const/4 v0, 0x6

    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-static {v4, p1, p2, v1, v0}, Lha/e;->n(Lha/e;Ljava/lang/String;ILjava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    throw v1
.end method
