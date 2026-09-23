.class public final Lo1/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo1/f;
.implements La5/g;


# instance fields
.field public final synthetic a:Lo1/g;

.field public final b:La5/f;

.field public final c:Landroidx/lifecycle/v;

.field public final d:Landroid/support/v4/media/session/t;


# direct methods
.method public constructor <init>(Lo1/g;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo1/i;->a:Lo1/g;

    .line 5
    .line 6
    new-instance v0, Lc5/a;

    .line 7
    .line 8
    new-instance v1, La5/e;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lc5/a;-><init>(La5/g;La5/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, La5/f;

    .line 18
    .line 19
    invoke-direct {v1, v0}, La5/f;-><init>(Lc5/a;)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lo1/i;->b:La5/f;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/v;

    .line 25
    .line 26
    invoke-direct {v0, p0, v2}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/t;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lo1/i;->c:Landroidx/lifecycle/v;

    .line 30
    .line 31
    iget-object v0, v1, La5/f;->b:Landroid/support/v4/media/session/t;

    .line 32
    .line 33
    iput-object v0, p0, Lo1/i;->d:Landroid/support/v4/media/session/t;

    .line 34
    .line 35
    const-string v0, "androidx.savedstate.SavedStateRegistry"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lo1/g;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    instance-of v3, v2, Landroid/os/Bundle;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    check-cast v2, Landroid/os/Bundle;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    invoke-virtual {v1, v2}, La5/f;->b(Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, La5/e;

    .line 53
    .line 54
    const/16 v2, 0x13

    .line 55
    .line 56
    invoke-direct {v1, v2, p0}, La5/e;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Lo1/g;->e(Ljava/lang/String;Lf9/a;)Lo1/e;

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo1/g;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo1/g;->b()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo1/g;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final d()Landroid/support/v4/media/session/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->d:Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Ljava/lang/String;Lf9/a;)Lo1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lo1/g;->e(Ljava/lang/String;Lf9/a;)Lo1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g()Landroidx/lifecycle/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/i;->c:Landroidx/lifecycle/v;

    .line 2
    .line 3
    return-object v0
.end method
