.class public final Lfa/d;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# static fields
.field public static final a:Lfa/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfa/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfa/d;->a:Lfa/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/y;

    .line 2
    .line 3
    sget-object v0, Lfa/e;->a:Ljava/lang/Object;

    .line 4
    .line 5
    const-string v0, "module"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lfa/c;->b:Lua/e;

    .line 11
    .line 12
    invoke-interface {p1}, Lv9/y;->j()Ls9/i;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Ls9/o;->t:Lua/c;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ls9/i;->j(Lua/c;)Lv9/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lc7/a;->s(Lua/e;Lv9/e;)Ly9/r0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    check-cast p1, Ly9/s0;

    .line 29
    .line 30
    invoke-virtual {p1}, Ly9/s0;->getType()Llb/w;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p1

    .line 38
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 39
    new-array p1, p1, [Ljava/lang/String;

    .line 40
    .line 41
    sget-object v0, Lnb/k;->C:Lnb/k;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lnb/l;->c(Lnb/k;[Ljava/lang/String;)Lnb/i;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
