.class public final Li7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/sdk/internal/transport/TransportListener;


# instance fields
.field public final a:Lr8/o;

.field public b:Landroid/support/v4/media/session/t;

.field public c:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb3/f0;

    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Li7/h;->a:Lr8/o;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/Long;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Li7/h;->c:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object v3, Li7/j;->a:Lib/d;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-object v3, Li7/j;->b:Ldc/l0;

    .line 16
    .line 17
    invoke-virtual {v3}, Ldc/l0;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v3, 0x2

    .line 32
    const/4 v5, 0x2

    .line 33
    :goto_0
    new-instance v17, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    :goto_1
    move-wide v6, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getProgressBar()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v3, v0

    .line 51
    goto :goto_1

    .line 52
    :goto_2
    if-ne v5, v2, :cond_2

    .line 53
    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    .line 56
    const/high16 v10, 0x3f800000    # 1.0f

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_2
    const/4 v0, 0x0

    .line 60
    const/4 v10, 0x0

    .line 61
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v15

    .line 65
    iget-object v0, v1, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 66
    .line 67
    if-eqz v0, :cond_7

    .line 68
    .line 69
    new-instance v4, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 70
    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    const-wide/16 v11, 0x36

    .line 74
    .line 75
    const/4 v13, 0x0

    .line 76
    const/4 v14, 0x0

    .line 77
    const-wide/16 v18, -0x1

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    invoke-direct/range {v4 .. v20}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/ArrayList;JLandroid/os/Bundle;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v0, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v0, Landroid/support/v4/media/session/m;

    .line 87
    .line 88
    iput-object v4, v0, Landroid/support/v4/media/session/m;->f:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 89
    .line 90
    iget-object v2, v0, Landroid/support/v4/media/session/m;->d:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v2

    .line 93
    :try_start_0
    iget-object v3, v0, Landroid/support/v4/media/session/m;->e:Landroid/os/RemoteCallbackList;

    .line 94
    .line 95
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    add-int/lit8 v3, v3, -0x1

    .line 100
    .line 101
    :goto_4
    if-ltz v3, :cond_3

    .line 102
    .line 103
    iget-object v5, v0, Landroid/support/v4/media/session/m;->e:Landroid/os/RemoteCallbackList;

    .line 104
    .line 105
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Landroid/support/v4/media/session/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    :try_start_1
    invoke-interface {v5, v4}, Landroid/support/v4/media/session/b;->T(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    goto :goto_7

    .line 117
    :catch_0
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_3
    :try_start_2
    iget-object v3, v0, Landroid/support/v4/media/session/m;->e:Landroid/os/RemoteCallbackList;

    .line 121
    .line 122
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 123
    .line 124
    .line 125
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    iget-object v0, v0, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 127
    .line 128
    iget-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Landroid/media/session/PlaybackState;

    .line 129
    .line 130
    if-nez v2, :cond_6

    .line 131
    .line 132
    invoke-static {}, Landroid/support/v4/media/session/u;->d()Landroid/media/session/PlaybackState$Builder;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget v6, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 137
    .line 138
    iget-wide v7, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    .line 139
    .line 140
    iget v9, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 141
    .line 142
    iget-wide v10, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    .line 143
    .line 144
    invoke-static/range {v5 .. v11}, Landroid/support/v4/media/session/u;->x(Landroid/media/session/PlaybackState$Builder;IJFJ)V

    .line 145
    .line 146
    .line 147
    iget-wide v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->c:J

    .line 148
    .line 149
    invoke-static {v5, v2, v3}, Landroid/support/v4/media/session/u;->u(Landroid/media/session/PlaybackState$Builder;J)V

    .line 150
    .line 151
    .line 152
    iget-wide v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->e:J

    .line 153
    .line 154
    invoke-static {v5, v2, v3}, Landroid/support/v4/media/session/u;->s(Landroid/media/session/PlaybackState$Builder;J)V

    .line 155
    .line 156
    .line 157
    iget-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->g:Ljava/lang/CharSequence;

    .line 158
    .line 159
    invoke-static {v5, v2}, Landroid/support/v4/media/session/u;->v(Landroid/media/session/PlaybackState$Builder;Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->i:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_4

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 179
    .line 180
    iget-object v6, v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->a:Ljava/lang/String;

    .line 181
    .line 182
    iget-object v7, v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->b:Ljava/lang/CharSequence;

    .line 183
    .line 184
    iget v8, v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->c:I

    .line 185
    .line 186
    invoke-static {v6, v7, v8}, Landroid/support/v4/media/session/u;->e(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/media/session/PlaybackState$CustomAction$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iget-object v3, v3, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->d:Landroid/os/Bundle;

    .line 191
    .line 192
    invoke-static {v6, v3}, Landroid/support/v4/media/session/u;->w(Landroid/media/session/PlaybackState$CustomAction$Builder;Landroid/os/Bundle;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v6}, Landroid/support/v4/media/session/u;->b(Landroid/media/session/PlaybackState$CustomAction$Builder;)Landroid/media/session/PlaybackState$CustomAction;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v5, v3}, Landroid/support/v4/media/session/u;->a(Landroid/media/session/PlaybackState$Builder;Landroid/media/session/PlaybackState$CustomAction;)V

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_4
    iget-wide v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->j:J

    .line 204
    .line 205
    invoke-static {v5, v2, v3}, Landroid/support/v4/media/session/u;->t(Landroid/media/session/PlaybackState$Builder;J)V

    .line 206
    .line 207
    .line 208
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .line 210
    const/16 v3, 0x16

    .line 211
    .line 212
    if-lt v2, v3, :cond_5

    .line 213
    .line 214
    iget-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->k:Landroid/os/Bundle;

    .line 215
    .line 216
    invoke-static {v5, v2}, Landroid/support/v4/media/session/w;->b(Landroid/media/session/PlaybackState$Builder;Landroid/os/Bundle;)V

    .line 217
    .line 218
    .line 219
    :cond_5
    invoke-static {v5}, Landroid/support/v4/media/session/u;->c(Landroid/media/session/PlaybackState$Builder;)Landroid/media/session/PlaybackState;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iput-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Landroid/media/session/PlaybackState;

    .line 224
    .line 225
    :cond_6
    iget-object v2, v4, Landroid/support/v4/media/session/PlaybackStateCompat;->l:Landroid/media/session/PlaybackState;

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    throw v0

    .line 233
    :cond_7
    return-void
.end method

.method public final synthetic onConnectionAttached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->a(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionAuthenFailed(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->b(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onConnectionDetached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Li7/h;->a(ZLjava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-object v2, v1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/support/v4/media/session/m;

    .line 18
    .line 19
    invoke-virtual {v1, v0, v0}, Landroid/support/v4/media/session/t;->j1(Landroid/support/v4/media/session/k;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 23
    .line 24
    invoke-virtual {v3, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, v1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    iget-object p1, v2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 42
    .line 43
    iget-object v1, v2, Landroid/support/v4/media/session/m;->e:Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 46
    .line 47
    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 49
    .line 50
    const/16 v3, 0x1b

    .line 51
    .line 52
    if-ne v1, v3, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v3, "mCallback"

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/os/Handler;

    .line 73
    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    const-string v3, "MediaSessionCompat"

    .line 82
    .line 83
    const-string v4, "Exception happened while accessing MediaSession.mCallback."

    .line 84
    .line 85
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .line 87
    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v2, Landroid/support/v4/media/session/m;->b:Landroid/support/v4/media/session/l;

    .line 92
    .line 93
    iget-object v1, v1, Landroid/support/v4/media/session/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/media/session/MediaSession;->release()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/lang/ClassCastException;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_2
    :goto_1
    iput-object v0, p0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 116
    .line 117
    iput-object v0, p0, Li7/h;->c:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 118
    .line 119
    return-void
.end method

.method public final synthetic onConnectionEstablished(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->d(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionReattached(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->e(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onConnectionVersionNotSupprt(Lcom/baidu/carlife/sdk/CarLifeContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/baidu/carlife/sdk/a;->f(Lcom/baidu/carlife/sdk/ConnectionChangeListener;Lcom/baidu/carlife/sdk/CarLifeContext;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onReceiveMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "message"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [Ljava/lang/Integer;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v0, v4, v5

    .line 26
    .line 27
    aput-object v2, v4, v1

    .line 28
    .line 29
    invoke-static {v4}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getChannel()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_18

    .line 46
    .line 47
    invoke-virtual {p2}, Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;->getServiceType()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v2, 0x0

    .line 52
    sparse-switch v0, :sswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :sswitch_0
    invoke-virtual {p0, v5, v2}, Li7/h;->a(ZLjava/lang/Long;)V

    .line 58
    .line 59
    .line 60
    return v5

    .line 61
    :sswitch_1
    iget-object p1, p0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 62
    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_0
    new-instance p1, Landroid/support/v4/media/session/t;

    .line 68
    .line 69
    iget-object p2, p0, Li7/h;->a:Lr8/o;

    .line 70
    .line 71
    invoke-virtual {p2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/content/Context;

    .line 76
    .line 77
    invoke-direct {p1, p2}, Landroid/support/v4/media/session/t;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p1, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p2, Landroid/support/v4/media/session/m;

    .line 83
    .line 84
    iget-object v0, p2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 90
    .line 91
    invoke-virtual {p2, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Landroid/support/v4/media/session/t;->c:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p2, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_1

    .line 107
    .line 108
    iput-object p1, p0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 109
    .line 110
    new-instance p1, Landroid/os/Handler;

    .line 111
    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 117
    .line 118
    .line 119
    new-instance p2, Landroidx/lifecycle/z;

    .line 120
    .line 121
    const/16 v0, 0xd

    .line 122
    .line 123
    invoke-direct {p2, v0, p0}, Landroidx/lifecycle/z;-><init>(ILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return v5

    .line 130
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    new-instance p1, Ljava/lang/ClassCastException;

    .line 138
    .line 139
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :sswitch_2
    invoke-static {p2}, Ll8/s;->a(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/google/protobuf/d0;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_18

    .line 148
    .line 149
    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 150
    .line 151
    iput-object p1, p0, Li7/h;->c:Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 152
    .line 153
    invoke-virtual {p0, v1, v2}, Li7/h;->a(ZLjava/lang/Long;)V

    .line 154
    .line 155
    .line 156
    return v5

    .line 157
    :sswitch_3
    invoke-static {p2}, Ll8/s;->a(Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Lcom/google/protobuf/d0;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-eqz p2, :cond_18

    .line 162
    .line 163
    check-cast p2, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 164
    .line 165
    new-instance v0, La2/d;

    .line 166
    .line 167
    invoke-direct {v0, v1}, La2/d;-><init>(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-nez v4, :cond_2

    .line 175
    .line 176
    const-string v4, "\u672a\u77e5\u6b4c\u540d"

    .line 177
    .line 178
    :cond_2
    const-string v6, "android.media.metadata.TITLE"

    .line 179
    .line 180
    invoke-virtual {v0, v6, v4}, La2/d;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-nez v4, :cond_3

    .line 188
    .line 189
    const-string v4, "\u672a\u77e5\u6b4c\u624b"

    .line 190
    .line 191
    :cond_3
    const-string v6, "android.media.metadata.ARTIST"

    .line 192
    .line 193
    invoke-virtual {v0, v6, v4}, La2/d;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const-string v4, "android.media.metadata.MEDIA_ID"

    .line 197
    .line 198
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v0, v4, v6}, La2/d;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v4, "android.media.metadata.ALBUM"

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v0, v4, v6}, La2/d;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getPlaylistNum()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    int-to-long v6, v4

    .line 219
    const-string v4, "android.media.metadata.NUM_TRACKS"

    .line 220
    .line 221
    invoke-virtual {v0, v4, v6, v7}, La2/d;->s(Ljava/lang/String;J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDuration()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    const/16 v7, 0x2710

    .line 233
    .line 234
    if-lt v4, v7, :cond_4

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_4
    move-object v6, v2

    .line 238
    :goto_0
    if-eqz v6, :cond_5

    .line 239
    .line 240
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    int-to-long v6, v4

    .line 245
    goto :goto_1

    .line 246
    :cond_5
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDuration()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    int-to-long v6, v4

    .line 251
    const-wide/16 v8, 0x3e8

    .line 252
    .line 253
    mul-long v6, v6, v8

    .line 254
    .line 255
    :goto_1
    const-string v4, "android.media.metadata.DURATION"

    .line 256
    .line 257
    invoke-virtual {v0, v4, v6, v7}, La2/d;->s(Ljava/lang/String;J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbumArt()Lcom/google/protobuf/i;

    .line 261
    .line 262
    .line 263
    move-result-object p2

    .line 264
    if-eqz p2, :cond_b

    .line 265
    .line 266
    invoke-virtual {p2}, Lcom/google/protobuf/i;->size()I

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_6

    .line 271
    .line 272
    move-object p2, v2

    .line 273
    :cond_6
    if-eqz p2, :cond_8

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/google/protobuf/i;->size()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-nez v2, :cond_7

    .line 280
    .line 281
    sget-object v2, Lcom/google/protobuf/n0;->b:[B

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_7
    new-array v4, v2, [B

    .line 285
    .line 286
    invoke-virtual {p2, v4, v2}, Lcom/google/protobuf/i;->j([BI)V

    .line 287
    .line 288
    .line 289
    move-object v2, v4

    .line 290
    :goto_2
    invoke-virtual {p2}, Lcom/google/protobuf/i;->size()I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    invoke-static {v2, v5, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :cond_8
    if-eqz v2, :cond_b

    .line 299
    .line 300
    sget-object p2, Landroid/support/v4/media/MediaMetadataCompat;->c:Ls/f;

    .line 301
    .line 302
    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 303
    .line 304
    invoke-virtual {p2, v4}, Ls/q0;->containsKey(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v6

    .line 308
    if-eqz v6, :cond_a

    .line 309
    .line 310
    invoke-virtual {p2, v4}, Ls/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    check-cast p2, Ljava/lang/Integer;

    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result p2

    .line 320
    if-ne p2, v3, :cond_9

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 324
    .line 325
    const-string p2, "The "

    .line 326
    .line 327
    const-string v0, " key cannot be used to put a Bitmap"

    .line 328
    .line 329
    invoke-static {p2, v4, v0}, La2/f;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p1

    .line 337
    :cond_a
    :goto_3
    iget-object p2, v0, La2/d;->b:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast p2, Landroid/os/Bundle;

    .line 340
    .line 341
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 342
    .line 343
    .line 344
    :cond_b
    iget-object p2, p0, Li7/h;->b:Landroid/support/v4/media/session/t;

    .line 345
    .line 346
    if-eqz p2, :cond_18

    .line 347
    .line 348
    new-instance v2, Landroid/support/v4/media/MediaMetadataCompat;

    .line 349
    .line 350
    iget-object v0, v0, La2/d;->b:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v0, Landroid/os/Bundle;

    .line 353
    .line 354
    invoke-direct {v2, v0}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 355
    .line 356
    .line 357
    iget-object p2, p2, Landroid/support/v4/media/session/t;->b:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p2, Landroid/support/v4/media/session/m;

    .line 360
    .line 361
    iput-object v2, p2, Landroid/support/v4/media/session/m;->g:Landroid/support/v4/media/MediaMetadataCompat;

    .line 362
    .line 363
    iget-object p2, p2, Landroid/support/v4/media/session/m;->a:Landroid/media/session/MediaSession;

    .line 364
    .line 365
    iget-object v0, v2, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/media/MediaMetadata;

    .line 366
    .line 367
    if-nez v0, :cond_17

    .line 368
    .line 369
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    .line 370
    .line 371
    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 372
    .line 373
    .line 374
    iget-object v4, v2, Landroid/support/v4/media/MediaMetadataCompat;->a:Landroid/os/Bundle;

    .line 375
    .line 376
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_16

    .line 389
    .line 390
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    check-cast v7, Ljava/lang/String;

    .line 395
    .line 396
    sget-object v8, Landroid/support/v4/media/MediaMetadataCompat;->c:Ls/f;

    .line 397
    .line 398
    invoke-virtual {v8, v7}, Ls/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v8

    .line 402
    check-cast v8, Ljava/lang/Integer;

    .line 403
    .line 404
    if-nez v8, :cond_d

    .line 405
    .line 406
    const/4 v8, -0x1

    .line 407
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    :cond_d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-eqz v8, :cond_15

    .line 416
    .line 417
    if-eq v8, v1, :cond_14

    .line 418
    .line 419
    if-eq v8, v3, :cond_13

    .line 420
    .line 421
    if-eq v8, p1, :cond_12

    .line 422
    .line 423
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    if-eqz v8, :cond_11

    .line 428
    .line 429
    instance-of v9, v8, Ljava/lang/CharSequence;

    .line 430
    .line 431
    if-eqz v9, :cond_e

    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_e
    instance-of v9, v8, Ljava/lang/Long;

    .line 435
    .line 436
    if-eqz v9, :cond_f

    .line 437
    .line 438
    check-cast v8, Ljava/lang/Long;

    .line 439
    .line 440
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 441
    .line 442
    .line 443
    move-result-wide v8

    .line 444
    invoke-virtual {v0, v7, v8, v9}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_f
    instance-of v9, v8, Landroid/graphics/Bitmap;

    .line 449
    .line 450
    if-eqz v9, :cond_10

    .line 451
    .line 452
    check-cast v8, Landroid/graphics/Bitmap;

    .line 453
    .line 454
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 455
    .line 456
    .line 457
    goto :goto_4

    .line 458
    :cond_10
    instance-of v9, v8, Landroid/media/Rating;

    .line 459
    .line 460
    if-eqz v9, :cond_c

    .line 461
    .line 462
    check-cast v8, Landroid/media/Rating;

    .line 463
    .line 464
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 465
    .line 466
    .line 467
    goto :goto_4

    .line 468
    :cond_11
    :goto_5
    check-cast v8, Ljava/lang/CharSequence;

    .line 469
    .line 470
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 471
    .line 472
    .line 473
    goto :goto_4

    .line 474
    :cond_12
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    check-cast v8, Landroid/media/Rating;

    .line 479
    .line 480
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;

    .line 481
    .line 482
    .line 483
    goto :goto_4

    .line 484
    :cond_13
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 485
    .line 486
    .line 487
    move-result-object v8

    .line 488
    check-cast v8, Landroid/graphics/Bitmap;

    .line 489
    .line 490
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 491
    .line 492
    .line 493
    goto :goto_4

    .line 494
    :cond_14
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    invoke-virtual {v0, v7, v8}, Landroid/media/MediaMetadata$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;

    .line 499
    .line 500
    .line 501
    goto :goto_4

    .line 502
    :cond_15
    const-wide/16 v8, 0x0

    .line 503
    .line 504
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 505
    .line 506
    .line 507
    move-result-wide v8

    .line 508
    invoke-virtual {v0, v7, v8, v9}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 509
    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_16
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    iput-object p1, v2, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/media/MediaMetadata;

    .line 517
    .line 518
    :cond_17
    iget-object p1, v2, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/media/MediaMetadata;

    .line 519
    .line 520
    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 521
    .line 522
    .line 523
    :cond_18
    :goto_6
    return v5

    .line 524
    nop

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x10035 -> :sswitch_3
        0x10036 -> :sswitch_2
        0x30001 -> :sswitch_1
        0x30003 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic onSendMessage(Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/baidu/carlife/sdk/internal/transport/b;->b(Lcom/baidu/carlife/sdk/internal/transport/TransportListener;Lcom/baidu/carlife/sdk/CarLifeContext;Lcom/baidu/carlife/sdk/internal/protocol/CarLifeMessage;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
