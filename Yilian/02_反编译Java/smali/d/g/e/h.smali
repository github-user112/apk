.class public Ld/g/e/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/g/e/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/g/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/g/e/f;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroid/graphics/Bitmap;

.field public i:I

.field public j:Z

.field public k:Ld/g/e/i;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroid/os/Bundle;

.field public q:I

.field public r:I

.field public s:Landroid/widget/RemoteViews;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:Z

.field public x:Landroid/app/Notification;

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/g/e/h;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/g/e/h;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/g/e/h;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld/g/e/h;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ld/g/e/h;->o:Z

    iput v1, p0, Ld/g/e/h;->q:I

    iput v1, p0, Ld/g/e/h;->r:I

    iput v1, p0, Ld/g/e/h;->u:I

    iput v1, p0, Ld/g/e/h;->v:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Ld/g/e/h;->x:Landroid/app/Notification;

    iput-object p1, p0, Ld/g/e/h;->a:Landroid/content/Context;

    iput-object p2, p0, Ld/g/e/h;->t:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Ld/g/e/h;->x:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Ld/g/e/h;->i:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld/g/e/h;->y:Ljava/util/ArrayList;

    iput-boolean v0, p0, Ld/g/e/h;->w:Z

    return-void
.end method

.method public static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 11

    new-instance v0, Ld/g/e/j;

    invoke-direct {v0, p0}, Ld/g/e/j;-><init>(Ld/g/e/h;)V

    .line 1
    iget-object v1, v0, Ld/g/e/j;->b:Ld/g/e/h;

    iget-object v1, v1, Ld/g/e/h;->k:Ld/g/e/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v1

    check-cast v3, Ld/g/e/g;

    .line 2
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    .line 3
    iget-object v5, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    .line 4
    invoke-direct {v4, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    iget-object v5, v3, Ld/g/e/g;->c:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    iget-boolean v3, v3, Ld/g/e/i;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 5
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/16 v5, 0x15

    if-lt v3, v4, :cond_1

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_3

    :cond_1
    const/16 v4, 0x18

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-lt v3, v4, :cond_3

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget v4, v0, Ld/g/e/j;->g:I

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v7, :cond_2

    invoke-virtual {v0, v3}, Ld/g/e/j;->d(Landroid/app/Notification;)V

    :cond_2
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_14

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v6, :cond_14

    goto/16 :goto_0

    :cond_3
    if-lt v3, v5, :cond_8

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    iget-object v4, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v0, Ld/g/e/j;->c:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_4

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_4
    iget-object v4, v0, Ld/g/e/j;->d:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_5

    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_5
    iget-object v4, v0, Ld/g/e/j;->h:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_6

    iput-object v4, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_6
    iget v4, v0, Ld/g/e/j;->g:I

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_7

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v7, :cond_7

    invoke-virtual {v0, v3}, Ld/g/e/j;->d(Landroid/app/Notification;)V

    :cond_7
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_14

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v6, :cond_14

    goto :goto_0

    :cond_8
    const/16 v4, 0x14

    if-lt v3, v4, :cond_c

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    iget-object v4, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v0, Ld/g/e/j;->c:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_9

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_9
    iget-object v4, v0, Ld/g/e/j;->d:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_a

    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_a
    iget v4, v0, Ld/g/e/j;->g:I

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_b

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v7, :cond_b

    invoke-virtual {v0, v3}, Ld/g/e/j;->d(Landroid/app/Notification;)V

    :cond_b
    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    iget v4, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_14

    iget v4, v0, Ld/g/e/j;->g:I

    if-ne v4, v6, :cond_14

    :goto_0
    invoke-virtual {v0, v3}, Ld/g/e/j;->d(Landroid/app/Notification;)V

    goto/16 :goto_3

    :cond_c
    const/16 v4, 0x13

    const-string v6, "android.support.actionExtras"

    if-lt v3, v4, :cond_f

    iget-object v3, v0, Ld/g/e/j;->e:Ljava/util/List;

    invoke-static {v3}, Ld/g/e/k;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_d
    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    iget-object v4, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v0, Ld/g/e/j;->c:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_e

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_e
    iget-object v4, v0, Ld/g/e/j;->d:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_14

    goto :goto_2

    :cond_f
    iget-object v3, v0, Ld/g/e/j;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v3}, Ld/b/k/r;->A(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v7, Landroid/os/Bundle;

    iget-object v8, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-direct {v7, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v8, v0, Ld/g/e/j;->f:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v4, v0, Ld/g/e/j;->e:Ljava/util/List;

    invoke-static {v4}, Ld/g/e/k;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {v3}, Ld/b/k/r;->A(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_12
    iget-object v4, v0, Ld/g/e/j;->c:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_13

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v4, v0, Ld/g/e/j;->d:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_14

    :goto_2
    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6
    :cond_14
    :goto_3
    iget-object v4, v0, Ld/g/e/j;->b:Ld/g/e/h;

    iget-object v4, v4, Ld/g/e/h;->s:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_15

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_15
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_17

    if-eqz v1, :cond_17

    iget-object v0, v0, Ld/g/e/j;->b:Ld/g/e/h;

    iget-object v0, v0, Ld/g/e/h;->k:Ld/g/e/i;

    if-eqz v0, :cond_16

    goto :goto_4

    .line 7
    :cond_16
    throw v2

    :cond_17
    :goto_4
    if-eqz v1, :cond_19

    .line 8
    invoke-static {v3}, Ld/b/k/r;->A(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_19

    check-cast v1, Ld/g/e/g;

    .line 9
    iget-boolean v4, v1, Ld/g/e/i;->b:Z

    if-eqz v4, :cond_18

    const-string v4, "android.summaryText"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_18
    const-string v2, "androidx.core.app.extra.COMPAT_TEMPLATE"

    const-string v4, "androidx.core.app.NotificationCompat$BigTextStyle"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_19

    iget-object v1, v1, Ld/g/e/g;->c:Ljava/lang/CharSequence;

    const-string v2, "android.bigText"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_19
    return-object v3
.end method

.method public c(Ljava/lang/CharSequence;)Ld/g/e/h;
    .locals 0

    invoke-static {p1}, Ld/g/e/h;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/g/e/h;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Ld/g/e/h;
    .locals 0

    invoke-static {p1}, Ld/g/e/h;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Ld/g/e/h;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final e(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Ld/g/e/h;->x:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Ld/g/e/h;->x:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    :goto_0
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)Ld/g/e/h;
    .locals 9

    if-eqz p1, :cond_2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Ld/g/e/h;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Ld/g/b;->compat_notification_large_icon_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Ld/g/b;->compat_notification_large_icon_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    int-to-double v5, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    :cond_2
    :goto_0
    iput-object p1, p0, Ld/g/e/h;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(Ld/g/e/i;)Ld/g/e/h;
    .locals 1

    iget-object v0, p0, Ld/g/e/h;->k:Ld/g/e/i;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ld/g/e/h;->k:Ld/g/e/i;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Ld/g/e/i;->a:Ld/g/e/h;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Ld/g/e/i;->a:Ld/g/e/h;

    invoke-virtual {p0, p1}, Ld/g/e/h;->g(Ld/g/e/i;)Ld/g/e/h;

    :cond_0
    return-object p0
.end method
