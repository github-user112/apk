.class public abstract Lp9/o1;
.super Lp9/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/u;


# static fields
.field public static final i:Ljava/lang/Object;


# instance fields
.field public final c:Lp9/h0;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Lp9/v1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lp9/o1;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Lv9/k0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp9/t;-><init>()V

    .line 2
    iput-object p1, p0, Lp9/o1;->c:Lp9/h0;

    .line 3
    iput-object p2, p0, Lp9/o1;->d:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lp9/o1;->e:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lp9/o1;->f:Ljava/lang/Object;

    .line 6
    new-instance p1, Lp9/i1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lp9/i1;-><init>(Lp9/o1;I)V

    sget-object p2, Lr8/i;->a:Lr8/i;

    invoke-static {p2, p1}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lp9/o1;->g:Ljava/lang/Object;

    .line 7
    new-instance p1, Lp9/i1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lp9/i1;-><init>(Lp9/o1;I)V

    invoke-static {p4, p1}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    move-result-object p1

    iput-object p1, p0, Lp9/o1;->h:Lp9/v1;

    return-void
.end method

.method public constructor <init>(Lp9/h0;Lv9/k0;)V
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Lv9/k;->getName()Lua/e;

    move-result-object v0

    invoke-virtual {v0}, Lua/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "asString(...)"

    invoke-static {v3, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    move-result-object v0

    invoke-virtual {v0}, Lp9/q;->j()Ljava/lang/String;

    move-result-object v4

    .line 10
    sget-object v6, Lg9/c;->a:Lg9/c;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 11
    invoke-direct/range {v1 .. v6}, Lp9/o1;-><init>(Lp9/h0;Ljava/lang/String;Ljava/lang/String;Lv9/k0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lp9/c2;->c(Ljava/lang/Object;)Lp9/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lp9/o1;->c:Lp9/h0;

    .line 10
    .line 11
    iget-object v2, p1, Lp9/o1;->c:Lp9/h0;

    .line 12
    .line 13
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lp9/o1;->d:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, p1, Lp9/o1;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lp9/o1;->e:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Lp9/o1;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lp9/o1;->f:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object p1, p1, Lp9/o1;->f:Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v1, p1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_1
    return v0
.end method

.method public final f()Lq9/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/o1;->r()Lp9/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lp9/l1;->f()Lq9/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/o1;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp9/o1;->c:Lp9/h0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v2, p0, Lp9/o1;->d:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Lp9/v;->k(Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lp9/o1;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    return v1
.end method

.method public final i()Lp9/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/o1;->c:Lp9/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lq9/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/o1;->r()Lp9/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final bridge synthetic k()Lv9/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/o1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lg9/c;->a:Lg9/c;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final p()Ljava/lang/reflect/Member;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lv9/k0;->K()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    sget-object v0, Lp9/a2;->a:Lua/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lp9/a2;->b(Lv9/k0;)Lp9/q;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Lp9/o;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    check-cast v0, Lp9/o;

    .line 28
    .line 29
    iget-object v2, v0, Lp9/o;->f:Lra/f;

    .line 30
    .line 31
    iget-object v0, v0, Lp9/o;->e:Lsa/e;

    .line 32
    .line 33
    iget v3, v0, Lsa/e;->b:I

    .line 34
    .line 35
    const/16 v4, 0x10

    .line 36
    .line 37
    and-int/2addr v3, v4

    .line 38
    if-ne v3, v4, :cond_2

    .line 39
    .line 40
    iget-object v0, v0, Lsa/e;->g:Lsa/c;

    .line 41
    .line 42
    iget v3, v0, Lsa/c;->b:I

    .line 43
    .line 44
    and-int/lit8 v4, v3, 0x1

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    if-ne v4, v5, :cond_1

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    and-int/2addr v3, v4

    .line 51
    if-ne v3, v4, :cond_1

    .line 52
    .line 53
    iget v1, v0, Lsa/c;->c:I

    .line 54
    .line 55
    invoke-interface {v2, v1}, Lra/f;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget v0, v0, Lsa/c;->d:I

    .line 60
    .line 61
    invoke-interface {v2, v0}, Lra/f;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lp9/o1;->c:Lp9/h0;

    .line 66
    .line 67
    invoke-virtual {v2, v1, v0}, Lp9/h0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0

    .line 72
    :cond_1
    return-object v1

    .line 73
    :cond_2
    iget-object v0, p0, Lp9/o1;->g:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-interface {v0}, Lr8/h;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Ljava/lang/reflect/Field;

    .line 80
    .line 81
    return-object v0
.end method

.method public final q()Lv9/k0;
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/o1;->h:Lp9/v1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp9/v1;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "invoke(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lv9/k0;

    .line 13
    .line 14
    return-object v0
.end method

.method public abstract r()Lp9/l1;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp9/z1;->a:Lwa/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp9/o1;->q()Lv9/k0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lp9/z1;->c(Lv9/k0;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
