.class public final Lhb/u;
.super Lhb/w;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final d:Lpa/k;

.field public final e:Lhb/u;

.field public final f:Lua/b;

.field public final g:Lpa/j;

.field public final h:Z


# direct methods
.method public constructor <init>(Lpa/k;Lra/f;Lra/g;Lv9/m0;Lhb/u;)V
    .locals 1

    .line 1
    const-string v0, "classProto"

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
    invoke-direct {p0, p2, p3, p4}, Lhb/w;-><init>(Lra/f;Lra/g;Lv9/m0;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lhb/u;->d:Lpa/k;

    .line 15
    .line 16
    iput-object p5, p0, Lhb/u;->e:Lhb/u;

    .line 17
    .line 18
    iget p3, p1, Lpa/k;->e:I

    .line 19
    .line 20
    invoke-static {p2, p3}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lhb/u;->f:Lua/b;

    .line 25
    .line 26
    sget-object p2, Lra/d;->f:Lra/c;

    .line 27
    .line 28
    iget p3, p1, Lpa/k;->d:I

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Lra/c;->i(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    check-cast p2, Lpa/j;

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    sget-object p2, Lpa/j;->b:Lpa/j;

    .line 39
    .line 40
    :cond_0
    iput-object p2, p0, Lhb/u;->g:Lpa/j;

    .line 41
    .line 42
    sget-object p2, Lra/d;->g:Lra/b;

    .line 43
    .line 44
    iget p1, p1, Lpa/k;->d:I

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lra/b;->i(I)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lhb/u;->h:Z

    .line 55
    .line 56
    sget-object p1, Lra/d;->h:Lra/b;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a()Lua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/u;->f:Lua/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/b;->a()Lua/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
