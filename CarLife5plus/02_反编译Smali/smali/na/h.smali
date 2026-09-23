.class public final Lna/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljb/k;


# instance fields
.field public final a:Lcb/b;

.field public final b:Lcb/b;

.field public final c:Laa/c;


# direct methods
.method public constructor <init>(Laa/c;Lpa/e0;Lta/f;Ljb/j;)V
    .locals 4

    .line 1
    const-string p4, "kotlinClass"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "packageProto"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p4, "nameResolver"

    .line 12
    .line 13
    invoke-static {p3, p4}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p4, p1, Laa/c;->a:Ljava/lang/Class;

    .line 17
    .line 18
    invoke-static {p4}, Lba/d;->a(Ljava/lang/Class;)Lua/b;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    new-instance v0, Lcb/b;

    .line 23
    .line 24
    invoke-static {p4}, Lcb/b;->e(Lua/b;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-direct {v0, p4}, Lcb/b;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p4, p1, Laa/c;->b:Loa/b;

    .line 32
    .line 33
    iget-object v1, p4, Loa/b;->f:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p4, p4, Loa/b;->a:Loa/a;

    .line 36
    .line 37
    sget-object v2, Loa/a;->i:Loa/a;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-ne p4, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v1, v3

    .line 44
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    if-lez p4, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Lcb/b;->c(Ljava/lang/String;)Lcb/b;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lna/h;->a:Lcb/b;

    .line 60
    .line 61
    iput-object v3, p0, Lna/h;->b:Lcb/b;

    .line 62
    .line 63
    iput-object p1, p0, Lna/h;->c:Laa/c;

    .line 64
    .line 65
    sget-object p1, Lsa/k;->m:Lva/m;

    .line 66
    .line 67
    const-string p4, "packageModuleName"

    .line 68
    .line 69
    invoke-static {p1, p4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p2, p1}, Lp9/x1;->r(Lva/k;Lva/m;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Integer;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p3, p1}, Lta/f;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Class \'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lna/h;->a()Lua/b;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lua/b;->a()Lua/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lua/c;->a:Lua/d;

    .line 17
    .line 18
    iget-object v1, v1, Lua/d;->a:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v2, 0x27

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, La2/f;->J(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final a()Lua/b;
    .locals 7

    .line 1
    new-instance v0, Lua/b;

    .line 2
    .line 3
    iget-object v1, p0, Lna/h;->a:Lcb/b;

    .line 4
    .line 5
    iget-object v2, v1, Lcb/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, "/"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, -0x1

    .line 14
    const/16 v5, 0x2f

    .line 15
    .line 16
    if-ne v3, v4, :cond_1

    .line 17
    .line 18
    sget-object v2, Lua/c;->c:Lua/c;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-static {v0}, Lcb/b;->a(I)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    throw v0

    .line 30
    :cond_1
    new-instance v4, Lua/c;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x2e

    .line 38
    .line 39
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v4, v2}, Lua/c;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v2, v4

    .line 47
    :goto_0
    invoke-virtual {v1}, Lcb/b;->d()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v3, "getInternalName(...)"

    .line 52
    .line 53
    invoke-static {v1, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v5, v1}, Lxb/i;->b0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v2, v1}, Lua/b;-><init>(Lua/c;Lua/e;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lna/h;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ": "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lna/h;->a:Lcb/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
