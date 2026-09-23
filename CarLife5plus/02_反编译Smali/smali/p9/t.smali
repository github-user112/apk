.class public abstract Lp9/t;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lm9/b;
.implements Lp9/t1;


# instance fields
.field public final a:Lp9/v1;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lp9/r;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lp9/r;-><init>(Lp9/t;I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 12
    .line 13
    .line 14
    new-instance v0, Lp9/r;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, p0, v2}, Lp9/r;-><init>(Lp9/t;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lp9/t;->a:Lp9/v1;

    .line 25
    .line 26
    new-instance v0, Lp9/r;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    invoke-direct {v0, p0, v2}, Lp9/r;-><init>(Lp9/t;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lp9/r;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v0, p0, v2}, Lp9/r;-><init>(Lp9/t;I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 42
    .line 43
    .line 44
    new-instance v0, Lp9/r;

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-direct {v0, p0, v2}, Lp9/r;-><init>(Lp9/t;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v0}, Lp9/x1;->A(Lv9/c;Lf9/a;)Lp9/v1;

    .line 51
    .line 52
    .line 53
    new-instance v0, Lp9/r;

    .line 54
    .line 55
    const/4 v1, 0x5

    .line 56
    invoke-direct {v0, p0, v1}, Lp9/r;-><init>(Lp9/t;I)V

    .line 57
    .line 58
    .line 59
    sget-object v1, Lr8/i;->a:Lr8/i;

    .line 60
    .line 61
    invoke-static {v1, v0}, Lr8/a;->c(Lr8/i;Lf9/a;)Lr8/h;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lp9/t;->b:Ljava/lang/Object;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final varargs d([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lp9/t;->f()Lq9/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lq9/g;->t([Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Lm5/q;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public abstract f()Lq9/g;
.end method

.method public abstract i()Lp9/h0;
.end method

.method public abstract j()Lq9/g;
.end method

.method public abstract k()Lv9/c;
.end method

.method public final l()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lp9/t;->a:Lp9/v1;

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
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lm9/b;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<init>"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lp9/t;->i()Lp9/h0;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lg9/e;->a()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method public abstract n()Z
.end method
