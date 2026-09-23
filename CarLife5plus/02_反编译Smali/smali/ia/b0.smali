.class public final Lia/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lub/a;


# static fields
.field public static final a:Lia/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lia/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lia/b0;->a:Lia/b0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 2

    .line 1
    check-cast p1, Lv9/e;

    .line 2
    .line 3
    sget v0, Lia/d0;->p:I

    .line 4
    .line 5
    invoke-interface {p1}, Lv9/h;->t()Llb/k0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Llb/k0;->l()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "getSupertypes(...)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-static {p1}, Ls8/p;->X(Ljava/lang/Iterable;)Ls8/o;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lia/m;->f:Lia/m;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lwb/l;->O(Lwb/j;Lf9/k;)Lwb/h;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Ls8/n;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, v1, p1}, Ls8/n;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
