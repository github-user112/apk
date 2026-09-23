.class public Lb/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb/a/g/g/a$a;

.field public final synthetic d:Landroidx/activity/ComponentActivity$b;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity$b;ILb/a/g/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/a/b;->d:Landroidx/activity/ComponentActivity$b;

    iput p2, p0, Lb/a/b;->b:I

    iput-object p3, p0, Lb/a/b;->c:Lb/a/g/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/a/b;->d:Landroidx/activity/ComponentActivity$b;

    iget v1, p0, Lb/a/b;->b:I

    iget-object v2, p0, Lb/a/b;->c:Lb/a/g/g/a$a;

    .line 1
    iget-object v2, v2, Lb/a/g/g/a$a;->a:Ljava/lang/Object;

    .line 2
    iget-object v3, v0, Lb/a/g/d;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lb/a/g/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lb/a/g/d;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/g/d$b;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lb/a/g/d$b;->a:Lb/a/g/b;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v2}, Lb/a/g/b;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v3, v0, Lb/a/g/d;->h:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/g/d;->g:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
