.class public final Lia/q;
.super Ly9/c0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic m:[Lm9/u;


# instance fields
.field public final g:Lba/z;

.field public final h:Lba/a;

.field public final i:Lkb/j;

.field public final j:Lia/d;

.field public final k:Lkb/d;

.field public final l:Lw9/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Lia/q;

    .line 4
    .line 5
    const-string v2, "binaryClasses"

    .line 6
    .line 7
    const-string v3, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

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
    const-string v3, "partToFacade"

    .line 20
    .line 21
    const-string v5, "getPartToFacade()Ljava/util/HashMap;"

    .line 22
    .line 23
    invoke-static {v1, v3, v5, v4, v2}, Lp9/v;->t(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILg9/z;)Lm9/t;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Lm9/u;

    .line 29
    .line 30
    aput-object v0, v2, v4

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    sput-object v2, Lia/q;->m:[Lm9/u;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Lba/a;Lba/z;)V
    .locals 5

    .line 1
    const-string v0, "outerContext"

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
    iget-object v1, v0, Lha/a;->o:Lv9/y;

    .line 11
    .line 12
    iget-object v2, p2, Lba/z;->a:Lua/c;

    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Ly9/c0;-><init>(Lv9/y;Lua/c;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lia/q;->g:Lba/z;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x6

    .line 21
    invoke-static {p1, p0, v1, v2}, Lg5/a;->z(Lba/a;Lv9/g;Lba/p;I)Lba/a;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lia/q;->h:Lba/a;

    .line 26
    .line 27
    iget-object v0, v0, Lha/a;->d:Lna/f;

    .line 28
    .line 29
    invoke-virtual {v0}, Lna/f;->c()Lhb/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v0, v0, Lhb/i;->c:Lhb/j;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Lra/e;->g:Lra/e;

    .line 39
    .line 40
    iget-object v0, p1, Lba/a;->b:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lha/a;

    .line 43
    .line 44
    iget-object v1, v0, Lha/a;->a:Lkb/o;

    .line 45
    .line 46
    new-instance v2, Lia/p;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v2, p0, v3}, Lia/p;-><init>(Lia/q;I)V

    .line 50
    .line 51
    .line 52
    move-object v3, v1

    .line 53
    check-cast v3, Lkb/l;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    new-instance v4, Lkb/j;

    .line 59
    .line 60
    invoke-direct {v4, v3, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lia/q;->i:Lkb/j;

    .line 64
    .line 65
    new-instance v2, Lia/d;

    .line 66
    .line 67
    invoke-direct {v2, p1, p2, p0}, Lia/d;-><init>(Lba/a;Lba/z;Lia/q;)V

    .line 68
    .line 69
    .line 70
    iput-object v2, p0, Lia/q;->j:Lia/d;

    .line 71
    .line 72
    new-instance v2, Lia/p;

    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-direct {v2, p0, v3}, Lia/p;-><init>(Lia/q;I)V

    .line 76
    .line 77
    .line 78
    move-object v3, v1

    .line 79
    check-cast v3, Lkb/l;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    new-instance v4, Lkb/d;

    .line 85
    .line 86
    invoke-direct {v4, v3, v2}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 87
    .line 88
    .line 89
    iput-object v4, p0, Lia/q;->k:Lkb/d;

    .line 90
    .line 91
    iget-object v0, v0, Lha/a;->v:Lea/u;

    .line 92
    .line 93
    iget-boolean v0, v0, Lea/u;->b:Z

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    sget-object p1, Lw9/g;->a:Lw9/f;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1, p2}, Li2/c;->I(Lba/a;Lla/b;)Lha/c;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_0
    iput-object p1, p0, Lia/q;->l:Lw9/h;

    .line 105
    .line 106
    new-instance p1, Lia/p;

    .line 107
    .line 108
    const/4 p2, 0x2

    .line 109
    invoke-direct {p1, p0, p2}, Lia/p;-><init>(Lia/q;I)V

    .line 110
    .line 111
    .line 112
    check-cast v1, Lkb/l;

    .line 113
    .line 114
    invoke-virtual {v1, p1}, Lkb/l;->a(Lf9/a;)Lkb/j;

    .line 115
    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final R()Leb/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/q;->j:Lia/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAnnotations()Lw9/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lia/q;->l:Lw9/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Lv9/m0;
    .locals 2

    .line 1
    new-instance v0, Lkb/a;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1, p0}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Lazy Java package fragment: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ly9/c0;->e:Lua/c;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " of module "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lia/q;->h:Lba/a;

    .line 19
    .line 20
    iget-object v1, v1, Lba/a;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lha/a;

    .line 23
    .line 24
    iget-object v1, v1, Lha/a;->o:Lv9/y;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
