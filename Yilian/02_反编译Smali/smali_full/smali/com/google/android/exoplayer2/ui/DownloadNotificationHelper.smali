.class public final Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NULL_STRING_ID:I


# instance fields
.field public final notificationBuilder:Ld/g/e/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/g/e/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ld/g/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Ld/g/e/h;

    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Ld/g/e/h;

    .line 1
    iget-object v1, v0, Ld/g/e/h;->x:Landroid/app/Notification;

    iput p2, v1, Landroid/app/Notification;->icon:I

    const/4 p2, 0x0

    if-nez p5, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ld/g/e/h;->d(Ljava/lang/CharSequence;)Ld/g/e/h;

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Ld/g/e/h;

    .line 3
    iput-object p3, p1, Ld/g/e/h;->g:Landroid/app/PendingIntent;

    if-nez p4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance p2, Ld/g/e/g;

    invoke-direct {p2}, Ld/g/e/g;-><init>()V

    .line 5
    invoke-static {p4}, Ld/g/e/h;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p2, Ld/g/e/g;->c:Ljava/lang/CharSequence;

    .line 6
    :goto_1
    iget-object p3, p1, Ld/g/e/h;->k:Ld/g/e/i;

    if-eq p3, p2, :cond_2

    iput-object p2, p1, Ld/g/e/h;->k:Ld/g/e/i;

    if-eqz p2, :cond_2

    .line 7
    iget-object p3, p2, Ld/g/e/i;->a:Ld/g/e/h;

    if-eq p3, p1, :cond_2

    iput-object p1, p2, Ld/g/e/i;->a:Ld/g/e/h;

    invoke-virtual {p1, p2}, Ld/g/e/h;->g(Ld/g/e/i;)Ld/g/e/h;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Ld/g/e/h;

    .line 9
    iput p6, p1, Ld/g/e/h;->l:I

    iput p7, p1, Ld/g/e/h;->m:I

    iput-boolean p8, p1, Ld/g/e/h;->n:Z

    const/4 p2, 0x2

    .line 10
    invoke-virtual {p1, p2, p9}, Ld/g/e/h;->e(IZ)V

    .line 11
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->notificationBuilder:Ld/g/e/h;

    .line 12
    iput-boolean p10, p1, Ld/g/e/h;->j:Z

    .line 13
    invoke-virtual {p1}, Ld/g/e/h;->a()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    sget v5, Lcom/google/android/exoplayer2/core/R$string;->exo_download_completed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6

    sget v5, Lcom/google/android/exoplayer2/core/R$string;->exo_download_failed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;)Landroid/app/Notification;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    move-object/from16 v10, p5

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/offline/Download;

    iget v12, v11, Lcom/google/android/exoplayer2/offline/Download;->state:I

    if-eqz v12, :cond_4

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    const/4 v13, 0x5

    if-eq v12, v13, :cond_0

    const/4 v13, 0x7

    if-eq v12, v13, :cond_1

    goto :goto_2

    :cond_0
    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getPercentDownloaded()F

    move-result v4

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v4, v12

    if-eqz v12, :cond_2

    add-float/2addr v2, v4

    const/4 v9, 0x0

    :cond_2
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/offline/Download;->getBytesDownloaded()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_downloading:I

    :goto_3
    move v15, v3

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_9

    if-eqz p6, :cond_9

    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_7

    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_wifi:I

    :goto_4
    move v15, v3

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_8

    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused_for_network:I

    goto :goto_4

    :cond_8
    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_paused:I

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_a

    sget v3, Lcom/google/android/exoplayer2/core/R$string;->exo_download_removing:I

    goto :goto_3

    :cond_a
    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_5
    if-eqz v3, :cond_d

    const/16 v3, 0x64

    if-eqz v4, :cond_c

    int-to-float v4, v8

    div-float/2addr v2, v4

    float-to-int v2, v2

    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    move/from16 v18, v0

    move/from16 v17, v2

    const/16 v16, 0x64

    goto :goto_7

    :cond_c
    const/16 v16, 0x64

    const/16 v17, 0x0

    const/16 v18, 0x1

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_7
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v10 .. v20}, Lcom/google/android/exoplayer2/ui/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
