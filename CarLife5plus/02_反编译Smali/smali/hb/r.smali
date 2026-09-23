.class public final Lhb/r;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final a:Lhb/t;

.field public final b:Z

.field public final c:Lpa/i0;


# direct methods
.method public constructor <init>(Lhb/t;ZLpa/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/r;->a:Lhb/t;

    .line 5
    .line 6
    iput-boolean p2, p0, Lhb/r;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lhb/r;->c:Lpa/i0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lhb/r;->a:Lhb/t;

    .line 2
    .line 3
    iget-object v1, v0, Lhb/t;->a:Lhb/k;

    .line 4
    .line 5
    iget-object v2, v1, Lhb/k;->c:Lv9/k;

    .line 6
    .line 7
    iget-object v1, v1, Lhb/k;->a:Lhb/i;

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lhb/t;->a(Lv9/k;)Lhb/w;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v2, p0, Lhb/r;->b:Z

    .line 16
    .line 17
    iget-object v3, p0, Lhb/r;->c:Lpa/i0;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget-object v1, v1, Lhb/i;->e:Lhb/a;

    .line 22
    .line 23
    invoke-interface {v1, v0, v3}, Lhb/c;->H(Lhb/w;Lpa/i0;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, v1, Lhb/i;->e:Lhb/a;

    .line 33
    .line 34
    invoke-interface {v1, v0, v3}, Lhb/c;->n0(Lhb/w;Lpa/i0;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ls8/p;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-nez v0, :cond_2

    .line 45
    .line 46
    sget-object v0, Ls8/w;->a:Ls8/w;

    .line 47
    .line 48
    :cond_2
    return-object v0
.end method
