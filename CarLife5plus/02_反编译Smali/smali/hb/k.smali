.class public final Lhb/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lhb/i;

.field public final b:Lra/f;

.field public final c:Lv9/k;

.field public final d:Lra/g;

.field public final e:Lra/h;

.field public final f:Lra/a;

.field public final g:Ljb/k;

.field public final h:Lp/h3;

.field public final i:Lhb/t;


# direct methods
.method public constructor <init>(Lhb/i;Lra/f;Lv9/k;Lra/g;Lra/h;Lra/a;Ljb/k;Lp/h3;Ljava/util/List;)V
    .locals 1

    .line 1
    const-string v0, "components"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "containingDeclaration"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "versionRequirementTable"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "metadataVersion"

    .line 22
    .line 23
    invoke-static {p6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "typeParameters"

    .line 27
    .line 28
    invoke-static {p9, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lhb/k;->a:Lhb/i;

    .line 35
    .line 36
    iput-object p2, p0, Lhb/k;->b:Lra/f;

    .line 37
    .line 38
    iput-object p3, p0, Lhb/k;->c:Lv9/k;

    .line 39
    .line 40
    iput-object p4, p0, Lhb/k;->d:Lra/g;

    .line 41
    .line 42
    iput-object p5, p0, Lhb/k;->e:Lra/h;

    .line 43
    .line 44
    iput-object p6, p0, Lhb/k;->f:Lra/a;

    .line 45
    .line 46
    iput-object p7, p0, Lhb/k;->g:Ljb/k;

    .line 47
    .line 48
    new-instance p1, Lp/h3;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p4, "Deserializer for \""

    .line 53
    .line 54
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p3}, Lv9/k;->getName()Lua/e;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 p3, 0x22

    .line 65
    .line 66
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    if-eqz p7, :cond_1

    .line 74
    .line 75
    invoke-interface {p7}, Ljb/k;->B()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    if-nez p2, :cond_0

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    move-object p6, p2

    .line 83
    move-object p3, p8

    .line 84
    move-object p4, p9

    .line 85
    move-object p2, p0

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :goto_1
    const-string p2, "[container not found]"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :goto_2
    invoke-direct/range {p1 .. p6}, Lp/h3;-><init>(Lhb/k;Lp/h3;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p2, Lhb/k;->h:Lp/h3;

    .line 94
    .line 95
    new-instance p1, Lhb/t;

    .line 96
    .line 97
    invoke-direct {p1, p0}, Lhb/t;-><init>(Lhb/k;)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p2, Lhb/k;->i:Lhb/t;

    .line 101
    .line 102
    return-void
.end method

.method public static synthetic b(Lhb/k;Ly9/n;Ljava/util/List;)Lhb/k;
    .locals 7

    .line 1
    iget-object v3, p0, Lhb/k;->b:Lra/f;

    .line 2
    .line 3
    iget-object v4, p0, Lhb/k;->d:Lra/g;

    .line 4
    .line 5
    iget-object v5, p0, Lhb/k;->e:Lra/h;

    .line 6
    .line 7
    iget-object v6, p0, Lhb/k;->f:Lra/a;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v2, p2

    .line 12
    invoke-virtual/range {v0 .. v6}, Lhb/k;->a(Lv9/k;Ljava/util/List;Lra/f;Lra/g;Lra/h;Lra/a;)Lhb/k;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final a(Lv9/k;Ljava/util/List;Lra/f;Lra/g;Lra/h;Lra/a;)Lhb/k;
    .locals 10

    .line 1
    move-object/from16 v6, p6

    .line 2
    .line 3
    const-string v0, "typeParameterProtos"

    .line 4
    .line 5
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "nameResolver"

    .line 9
    .line 10
    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "versionRequirementTable"

    .line 14
    .line 15
    invoke-static {p5, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "metadataVersion"

    .line 19
    .line 20
    invoke-static {v6, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lhb/k;

    .line 24
    .line 25
    iget v1, v6, Lra/a;->b:I

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    iget v3, v6, Lra/a;->c:I

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ge v3, v4, :cond_1

    .line 34
    .line 35
    :cond_0
    if-le v1, v2, :cond_2

    .line 36
    .line 37
    :cond_1
    :goto_0
    move-object v5, p5

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p5, p0, Lhb/k;->e:Lra/h;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget-object v7, p0, Lhb/k;->g:Ljb/k;

    .line 43
    .line 44
    iget-object v8, p0, Lhb/k;->h:Lp/h3;

    .line 45
    .line 46
    iget-object v1, p0, Lhb/k;->a:Lhb/i;

    .line 47
    .line 48
    move-object v3, p1

    .line 49
    move-object v9, p2

    .line 50
    move-object v2, p3

    .line 51
    move-object v4, p4

    .line 52
    invoke-direct/range {v0 .. v9}, Lhb/k;-><init>(Lhb/i;Lra/f;Lv9/k;Lra/g;Lra/h;Lra/a;Ljb/k;Lp/h3;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method
