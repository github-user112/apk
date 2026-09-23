.class public final Lwa/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwa/c;


# static fields
.field public static final b:Lwa/b;

.field public static final c:Lwa/b;

.field public static final d:Lwa/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwa/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lwa/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lwa/b;->b:Lwa/b;

    .line 8
    .line 9
    new-instance v0, Lwa/b;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lwa/b;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lwa/b;->c:Lwa/b;

    .line 16
    .line 17
    new-instance v0, Lwa/b;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lwa/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lwa/b;->d:Lwa/b;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lwa/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Lv9/h;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lv9/k;->getName()Lua/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getName(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lp9/q;->I(Lua/e;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, p0, Lv9/q0;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-interface {p0}, Lv9/k;->k()Lv9/k;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "getContainingDeclaration(...)"

    .line 24
    .line 25
    invoke-static {p0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    instance-of v1, p0, Lv9/e;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast p0, Lv9/h;

    .line 33
    .line 34
    invoke-static {p0}, Lwa/b;->b(Lv9/h;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v1, p0, Lv9/d0;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast p0, Lv9/d0;

    .line 44
    .line 45
    check-cast p0, Ly9/c0;

    .line 46
    .line 47
    iget-object p0, p0, Ly9/c0;->e:Lua/c;

    .line 48
    .line 49
    iget-object p0, p0, Lua/c;->a:Lua/d;

    .line 50
    .line 51
    const-string v1, "<this>"

    .line 52
    .line 53
    invoke-static {p0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {p0}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p0, 0x0

    .line 66
    :goto_0
    if-eqz p0, :cond_3

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_3

    .line 75
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const/16 p0, 0x2e

    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Lv9/h;Lwa/g;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lwa/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lwa/b;->b(Lv9/h;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    instance-of v0, p1, Lv9/q0;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p1, Lv9/q0;

    .line 16
    .line 17
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "getName(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, p1, v0}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lv9/k;->k()Lv9/k;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of p2, p1, Lv9/e;

    .line 49
    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    new-instance p1, Ls8/d0;

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ls8/d0;-><init>(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    return-object p1

    .line 62
    :pswitch_1
    instance-of v0, p1, Lv9/q0;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    check-cast p1, Lv9/q0;

    .line 67
    .line 68
    invoke-interface {p1}, Lv9/k;->getName()Lua/e;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "getName(...)"

    .line 73
    .line 74
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p2, p1, v0}, Lwa/g;->M(Lua/e;Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-static {p1}, Lxa/d;->g(Lv9/k;)Lua/d;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v0, "getFqName(...)"

    .line 88
    .line 89
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lua/d;->e(Lua/d;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lp9/q;->J(Ljava/util/List;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, Lwa/g;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_1
    return-object p1

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
