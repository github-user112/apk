.class public final synthetic Lu7/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Ljava/util/List;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lu7/f;->a:Z

    .line 5
    .line 6
    iput-object p2, p0, Lu7/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lu7/f;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lu7/f;->d:Landroid/app/Activity;

    .line 11
    .line 12
    iput-object p5, p0, Lu7/f;->e:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu7/f;->a:Z

    .line 2
    .line 3
    iget-object v1, p0, Lu7/f;->c:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lu7/f;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, v1}, Li9/a;->V(Landroid/content/Context;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lu7/j;->a:Lr8/o;

    .line 14
    .line 15
    iget-object v0, p0, Lu7/f;->e:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v0}, Ls8/p;->c0(Ljava/util/List;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lu7/f;->d:Landroid/app/Activity;

    .line 24
    .line 25
    invoke-static {v2, v0, v1}, Lu7/j;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object v0
.end method
