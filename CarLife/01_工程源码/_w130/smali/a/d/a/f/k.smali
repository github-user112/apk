.class public La/d/a/f/k;
.super La/d/a/f/a;
.source ""


# direct methods
.method public constructor <init>(La/d/a/f/i;)V
    .locals 0

    invoke-direct {p0, p1}, La/d/a/f/a;-><init>(La/d/a/f/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    .line 1
    invoke-virtual {p1}, La/d/a/f/i;->c()La/d/a/f/e;

    move-result-object v0

    .line 2
    iput-object p1, v0, La/d/a/f/e;->V:La/d/a/f/i;

    iput-object p0, v0, La/d/a/f/e;->W:La/d/a/f/b;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lb/h/b/m;->A0(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La/d/a/f/e;->D0()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    .line 1
    iget-object v0, v0, La/d/a/f/i;->g:Ljava/util/Set;

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/d/a/f/a;->b()V

    return-void

    :cond_0
    iget-object v0, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v0, v0, La/d/a/f/i;->p:La/d/a/c/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, La/d/a/f/a;->b()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, La/d/a/f/a;->d:La/d/a/f/i;

    iget-object v1, v1, La/d/a/f/i;->p:La/d/a/c/a;

    .line 3
    iget-object v2, p0, La/d/a/f/a;->b:La/d/a/f/c;

    .line 4
    invoke-interface {v1, v2, v0}, La/d/a/c/a;->a(La/d/a/f/c;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, La/d/a/f/a;->b()V

    return-void
.end method
