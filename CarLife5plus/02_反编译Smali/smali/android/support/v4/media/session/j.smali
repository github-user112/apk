.class public final Landroid/support/v4/media/session/j;
.super Landroid/media/session/MediaSession$Callback;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Landroid/support/v4/media/session/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Landroid/support/v4/media/session/m;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 9
    .line 10
    const/16 v2, 0x18

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ge v0, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "getCallingPackage"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    move-object v3, v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string v1, "MediaSessionCompat"

    .line 36
    .line 37
    const-string v2, "Cannot execute MediaSession.getCallingPackage()"

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    const-string v3, "android.media.session.MediaController"

    .line 49
    .line 50
    :cond_2
    new-instance v0, Lx4/a;

    .line 51
    .line 52
    const/4 v1, -0x1

    .line 53
    invoke-direct {v0, v3, v1, v1}, Lx4/a;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/m;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/support/v4/media/session/k;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 7
    .line 8
    iget-object v1, v1, Landroid/support/v4/media/session/k;->d:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/support/v4/media/session/m;

    .line 15
    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/support/v4/media/session/m;->b()Landroid/support/v4/media/session/k;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method

.method public final onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    const-string v2, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    new-instance p1, Landroid/os/Bundle;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object p2, v0, Landroid/support/v4/media/session/m;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Landroid/support/v4/media/session/d;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "android.support.v4.media.session.EXTRA_BINDER"

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    move-object v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 48
    .line 49
    iget-object v3, p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object p2, p2, Landroid/support/v4/media/session/MediaSessionCompat$Token;->d:Lg5/d;

    .line 53
    .line 54
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :try_start_2
    new-instance v3, Landroid/os/Bundle;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "a"

    .line 64
    .line 65
    new-instance v5, Landroidx/versionedparcelable/ParcelImpl;

    .line 66
    .line 67
    invoke-direct {v5, p2}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Lg5/d;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 74
    .line 75
    .line 76
    :goto_1
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p3, p2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    :try_start_4
    throw p1

    .line 84
    :cond_3
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    if-eqz p3, :cond_4

    .line 91
    .line 92
    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const-string p3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    .line 102
    .line 103
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-eqz p3, :cond_5

    .line 108
    .line 109
    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 116
    .line 117
    const-string p1, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    const-string p3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    .line 124
    .line 125
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    if-eqz p3, :cond_6

    .line 130
    .line 131
    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    check-cast p1, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    const-string p2, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    .line 141
    .line 142
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    const-string p1, "MediaSessionCompat"

    .line 147
    .line 148
    const-string p2, "Could not unparcel the extra data."

    .line 149
    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-string v2, "android.support.v4.media.session.action.ARGUMENT_URI"

    .line 21
    .line 22
    const-string v3, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    :try_start_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_0

    .line 40
    .line 41
    :cond_1
    const-string v1, "android.support.v4.media.session.action.PREPARE"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_2
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    .line 60
    .line 61
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_0

    .line 72
    .line 73
    :cond_3
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_4
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroid/net/Uri;

    .line 108
    .line 109
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const-string v1, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    .line 126
    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    .line 132
    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_7
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_8
    const-string v1, "android.support.v4.media.session.action.SET_RATING"

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_9

    .line 166
    .line 167
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Landroid/support/v4/media/RatingCompat;

    .line 174
    .line 175
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p1}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_9
    const-string v1, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_a

    .line 190
    .line 191
    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    .line 192
    .line 193
    const/high16 v1, 0x3f800000    # 1.0f

    .line 194
    .line 195
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_0
    const-string p1, "MediaSessionCompat"

    .line 200
    .line 201
    const-string p2, "Could not unparcel the data."

    .line 202
    .line 203
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_a
    :goto_0
    const/4 p1, 0x0

    .line 207
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final onFastForward()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 13
    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x1b

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    if-lt v2, v3, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    iget-object v2, v1, Landroid/support/v4/media/session/k;->a:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v3, v1, Landroid/support/v4/media/session/k;->d:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/support/v4/media/session/m;

    .line 36
    .line 37
    iget-object v5, v1, Landroid/support/v4/media/session/k;->e:Landroid/support/v4/media/session/i;

    .line 38
    .line 39
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-eqz v3, :cond_9

    .line 41
    .line 42
    if-nez v5, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const-string v2, "android.intent.extra.KEY_EVENT"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/view/KeyEvent;

    .line 52
    .line 53
    if-eqz v2, :cond_9

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/media/session/m;->c()Lx4/a;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/16 v8, 0x4f

    .line 71
    .line 72
    if-eq v7, v8, :cond_4

    .line 73
    .line 74
    const/16 v8, 0x55

    .line 75
    .line 76
    if-eq v7, v8, :cond_4

    .line 77
    .line 78
    invoke-virtual {v1, v3, v5}, Landroid/support/v4/media/session/k;->a(Landroid/support/v4/media/session/m;Landroid/os/Handler;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v7, 0x1

    .line 87
    if-nez v2, :cond_8

    .line 88
    .line 89
    iget-boolean v2, v1, Landroid/support/v4/media/session/k;->c:Z

    .line 90
    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    .line 95
    .line 96
    iput-boolean v4, v1, Landroid/support/v4/media/session/k;->c:Z

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/support/v4/media/session/m;->d()Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-wide/16 v3, 0x0

    .line 103
    .line 104
    if-nez v2, :cond_5

    .line 105
    .line 106
    move-wide v5, v3

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-wide v5, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 109
    .line 110
    :goto_0
    const-wide/16 v8, 0x20

    .line 111
    .line 112
    and-long/2addr v5, v8

    .line 113
    cmp-long v2, v5, v3

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/support/v4/media/session/k;->d()V

    .line 118
    .line 119
    .line 120
    :cond_6
    :goto_1
    const/4 v4, 0x1

    .line 121
    goto :goto_2

    .line 122
    :cond_7
    iput-boolean v7, v1, Landroid/support/v4/media/session/k;->c:Z

    .line 123
    .line 124
    invoke-virtual {v5, v7, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    int-to-long v2, v2

    .line 133
    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_8
    invoke-virtual {v1, v3, v5}, Landroid/support/v4/media/session/k;->a(Landroid/support/v4/media/session/m;Landroid/os/Handler;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_9
    :goto_2
    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 143
    .line 144
    .line 145
    if-nez v4, :cond_b

    .line 146
    .line 147
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_a
    :goto_3
    const/4 p1, 0x0

    .line 155
    return p1

    .line 156
    :cond_b
    :goto_4
    const/4 p1, 0x1

    .line 157
    return p1

    .line 158
    :catchall_0
    move-exception p1

    .line 159
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    throw p1
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/session/k;->b()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onPlay()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/session/k;->c()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPrepare()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/t;->Z0(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onRewind()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSeekTo(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSetPlaybackSpeed(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onSetRating(Landroid/media/Rating;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_b

    .line 12
    .line 13
    invoke-static {p1}, Landroid/support/v4/media/c;->b(Landroid/media/Rating;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {p1}, Landroid/support/v4/media/c;->e(Landroid/media/Rating;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_a

    .line 23
    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    const-string v4, "Rating"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/media/c;->a(Landroid/media/Rating;)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    cmpg-float v1, p1, v5

    .line 39
    .line 40
    if-ltz v1, :cond_2

    .line 41
    .line 42
    const/high16 v1, 0x42c80000    # 100.0f

    .line 43
    .line 44
    cmpl-float v1, p1, v1

    .line 45
    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    .line 50
    .line 51
    const/4 v1, 0x6

    .line 52
    invoke-direct {v3, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_5

    .line 56
    .line 57
    :cond_2
    :goto_0
    const-string p1, "Invalid percentage-based rating value"

    .line 58
    .line 59
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :pswitch_1
    invoke-static {p1}, Landroid/support/v4/media/c;->c(Landroid/media/Rating;)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 v2, 0x3

    .line 69
    if-eq v1, v2, :cond_5

    .line 70
    .line 71
    const/4 v2, 0x4

    .line 72
    if-eq v1, v2, :cond_4

    .line 73
    .line 74
    const/4 v2, 0x5

    .line 75
    if-eq v1, v2, :cond_3

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v2, "Invalid rating style ("

    .line 80
    .line 81
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ") for a star rating"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_3
    const/high16 v2, 0x40a00000    # 5.0f

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    const/high16 v2, 0x40800000    # 4.0f

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/high16 v2, 0x40400000    # 3.0f

    .line 107
    .line 108
    :goto_1
    cmpg-float v5, p1, v5

    .line 109
    .line 110
    if-ltz v5, :cond_7

    .line 111
    .line 112
    cmpl-float v2, p1, v2

    .line 113
    .line 114
    if-lez v2, :cond_6

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_6
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    .line 118
    .line 119
    invoke-direct {v3, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    :goto_2
    const-string p1, "Trying to set out of range star-based rating"

    .line 124
    .line 125
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    goto :goto_5

    .line 129
    :pswitch_2
    invoke-static {p1}, Landroid/support/v4/media/c;->f(Landroid/media/Rating;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_8
    const/4 v2, 0x0

    .line 139
    :goto_3
    const/4 p1, 0x2

    .line 140
    invoke-direct {v3, v2, p1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/media/c;->d(Landroid/media/Rating;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_9
    const/4 v2, 0x0

    .line 154
    :goto_4
    const/4 p1, 0x1

    .line 155
    invoke-direct {v3, v2, p1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_a
    packed-switch v1, :pswitch_data_1

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :pswitch_4
    new-instance v3, Landroid/support/v4/media/RatingCompat;

    .line 164
    .line 165
    const/high16 p1, -0x40800000    # -1.0f

    .line 166
    .line 167
    invoke-direct {v3, p1, v1}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 168
    .line 169
    .line 170
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    :cond_b
    :goto_6
    const/4 p1, 0x0

    .line 174
    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final onSkipToNext()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/session/k;->d()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/support/v4/media/session/j;->a:Landroid/support/v4/media/session/k;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/support/v4/media/session/k;->e()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onSkipToQueueItem(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/media/session/j;->a()Landroid/support/v4/media/session/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/support/v4/media/session/j;->b(Landroid/support/v4/media/session/m;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/m;->f(Lx4/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
