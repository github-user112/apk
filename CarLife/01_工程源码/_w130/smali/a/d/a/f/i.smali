.class public final La/d/a/f/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/h/b/p;

.field public b:Lb/h/b/m;

.field public c:I

.field public d:I

.field public e:Landroid/app/Dialog;

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:La/d/a/c/b;

.field public p:La/d/a/c/a;


# direct methods
.method public constructor <init>(Lb/h/b/p;Lb/h/b/m;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/b/p;",
            "Lb/h/b/m;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "normalPermissions"

    invoke-static {p3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialPermissions"

    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/d/a/f/i;->c:I

    iput v0, p0, La/d/a/f/i;->d:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->i:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->l:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->m:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, La/d/a/f/i;->n:Ljava/util/Set;

    if-eqz p1, :cond_0

    iput-object p1, p0, La/d/a/f/i;->a:Lb/h/b/p;

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lb/h/b/m;->p0()Lb/h/b/p;

    move-result-object p1

    const-string v0, "fragment.requireActivity()"

    invoke-static {p1, v0}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/d/a/f/i;->a:Lb/h/b/p;

    :cond_1
    iput-object p2, p0, La/d/a/f/i;->b:Lb/h/b/m;

    iput-object p3, p0, La/d/a/f/i;->f:Ljava/util/Set;

    iput-object p4, p0, La/d/a/f/i;->g:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lb/h/b/p;
    .locals 1

    iget-object v0, p0, La/d/a/f/i;->a:Lb/h/b/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Lb/h/b/c0;
    .locals 2

    iget-object v0, p0, La/d/a/f/i;->b:Lb/h/b/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/h/b/m;->e()Lb/h/b/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/d/a/f/i;->a:Lb/h/b/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/h/b/p;->Q0()Lb/h/b/c0;

    move-result-object v0

    const-string v1, "activity.supportFragmentManager"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "activity"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c()La/d/a/f/e;
    .locals 5

    invoke-virtual {p0}, La/d/a/f/i;->b()Lb/h/b/c0;

    move-result-object v0

    const-string v1, "InvisibleFragment"

    invoke-virtual {v0, v1}, Lb/h/b/c0;->G(Ljava/lang/String;)Lb/h/b/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existedFragment is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    check-cast v0, La/d/a/f/e;

    goto :goto_0

    :cond_0
    new-instance v0, La/d/a/f/e;

    invoke-direct {v0}, La/d/a/f/e;-><init>()V

    invoke-virtual {p0}, La/d/a/f/i;->b()Lb/h/b/c0;

    move-result-object v2

    .line 1
    new-instance v3, Lb/h/b/a;

    invoke-direct {v3, v2}, Lb/h/b/a;-><init>(Lb/h/b/c0;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2
    invoke-virtual {v3, v2, v0, v1, v4}, Lb/h/b/a;->f(ILb/h/b/m;Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v3}, Lb/h/b/a;->e()V

    :goto_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, La/d/a/f/i;->a:Lb/h/b/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v0

    :cond_0
    const-string v0, "activity"

    invoke-static {v0}, Lc/k/b/c;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e(La/d/a/c/b;)V
    .locals 2

    iput-object p1, p0, La/d/a/f/i;->o:La/d/a/c/b;

    new-instance p1, La/d/a/f/l;

    invoke-direct {p1, p0}, La/d/a/f/l;-><init>(La/d/a/f/i;)V

    new-instance v0, La/d/a/f/j;

    invoke-direct {v0, p0}, La/d/a/f/j;-><init>(La/d/a/f/i;)V

    .line 1
    iput-object v0, p1, La/d/a/f/a;->a:La/d/a/f/b;

    .line 2
    new-instance v1, La/d/a/f/m;

    invoke-direct {v1, p0}, La/d/a/f/m;-><init>(La/d/a/f/i;)V

    .line 3
    iput-object v1, v0, La/d/a/f/a;->a:La/d/a/f/b;

    .line 4
    new-instance v0, La/d/a/f/n;

    invoke-direct {v0, p0}, La/d/a/f/n;-><init>(La/d/a/f/i;)V

    .line 5
    iput-object v0, v1, La/d/a/f/a;->a:La/d/a/f/b;

    .line 6
    new-instance v1, La/d/a/f/k;

    invoke-direct {v1, p0}, La/d/a/f/k;-><init>(La/d/a/f/i;)V

    .line 7
    iput-object v1, v0, La/d/a/f/a;->a:La/d/a/f/b;

    .line 8
    invoke-interface {p1}, La/d/a/f/b;->c()V

    return-void
.end method

.method public final f(Ljava/util/Set;La/d/a/f/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "La/d/a/f/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, La/d/a/f/i;->c()La/d/a/f/e;

    move-result-object v0

    .line 1
    iput-object p0, v0, La/d/a/f/e;->V:La/d/a/f/i;

    iput-object p2, v0, La/d/a/f/e;->W:La/d/a/f/b;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lb/h/b/m;->o0([Ljava/lang/String;I)V

    return-void
.end method
