.class public final Li7/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lr8/o;

.field public static final b:Lr8/o;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final e:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb3/f0;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Li7/d;->a:Lr8/o;

    .line 13
    .line 14
    new-instance v0, Lb3/f0;

    .line 15
    .line 16
    const/16 v1, 0xb

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Li7/d;->b:Lr8/o;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Li7/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Li7/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Li7/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    .line 48
    return-void
.end method

.method public static a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 7

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Li7/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Li7/c;

    .line 13
    .line 14
    sget-object v1, Li7/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    sget-object p0, Li7/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    const/16 v5, 0x1a

    .line 25
    .line 26
    sget-object v6, Li7/d;->b:Lr8/o;

    .line 27
    .line 28
    if-lt v4, v5, :cond_0

    .line 29
    .line 30
    :try_start_1
    iget-object v4, v0, Li7/c;->d:Landroid/media/AudioFocusRequest;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Landroid/media/AudioManager;

    .line 39
    .line 40
    invoke-static {v5, v4}, La7/b;->t(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Landroid/media/AudioManager;

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v4, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    check-cast p0, Li7/c;

    .line 84
    .line 85
    if-eqz p0, :cond_6

    .line 86
    .line 87
    iget-object v0, p0, Li7/c;->c:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p0}, Li7/d;->b(Li7/c;)I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eq p0, v2, :cond_2

    .line 94
    .line 95
    const/4 p0, -0x1

    .line 96
    invoke-interface {v0, p0}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    invoke-interface {v0, v2}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    throw v1

    .line 118
    :cond_4
    const-string v0, "<this>"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Li7/c;

    .line 138
    .line 139
    iget-object v1, v1, Li7/c;->c:Ljava/lang/Object;

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-ne v1, v2, :cond_5

    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_6
    return-void
.end method

.method public static b(Li7/c;)I
    .locals 5

    .line 1
    iget v0, p0, Li7/c;->a:I

    .line 2
    .line 3
    iget v1, p0, Li7/c;->b:I

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1a

    .line 8
    .line 9
    sget-object v4, Li7/d;->b:Lr8/o;

    .line 10
    .line 11
    if-lt v2, v3, :cond_0

    .line 12
    .line 13
    invoke-static {}, La7/b;->q()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, La7/b;->g(I)Landroid/media/AudioFocusRequest$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lg5/a;->y(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-virtual {v0, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v0}, La7/b;->h(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p0}, La7/b;->i(Landroid/media/AudioFocusRequest$Builder;Li7/c;)Landroid/media/AudioFocusRequest$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, La7/b;->j(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Li7/c;->d:Landroid/media/AudioFocusRequest;

    .line 55
    .line 56
    invoke-virtual {v4}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/media/AudioManager;

    .line 61
    .line 62
    invoke-static {v1, v0}, La7/b;->c(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v4}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/media/AudioManager;

    .line 72
    .line 73
    invoke-static {v0}, Lg5/a;->y(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {v2, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_0
    const/4 v1, 0x1

    .line 82
    if-ne v0, v1, :cond_1

    .line 83
    .line 84
    sget-object v1, Li7/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 85
    .line 86
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Li7/d;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    iget-object v2, p0, Li7/c;->c:Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_1
    return v0
.end method

.method public static c(Landroid/media/AudioManager$OnAudioFocusChangeListener;III)V
    .locals 4

    .line 1
    and-int/lit8 p3, p3, 0x8

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x1

    .line 10
    :goto_0
    sget-object v2, Li7/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Li7/c;

    .line 17
    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget-object v3, v2, Li7/c;->c:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v2, v2, Li7/c;->a:I

    .line 30
    .line 31
    if-le v2, p1, :cond_4

    .line 32
    .line 33
    const-string v2, "CarLife_SDK"

    .line 34
    .line 35
    if-eqz p3, :cond_3

    .line 36
    .line 37
    new-instance p3, Li7/c;

    .line 38
    .line 39
    invoke-direct {p3, p1, p2, p0}, Li7/c;-><init>(IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Li7/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 43
    .line 44
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 54
    .line 55
    new-array p1, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string p2, "\u3010\u76d1\u542c\u72b6\u6001\u3011\u8bf7\u6c42\u7126\u70b9 DELAYED"

    .line 58
    .line 59
    aput-object p2, p1, v1

    .line 60
    .line 61
    invoke-virtual {p0, v2, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    sget-object p0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 66
    .line 67
    new-array p1, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string p2, "\u3010\u76d1\u542c\u72b6\u6001\u3011\u8bf7\u6c42\u7126\u70b9 FAILED"

    .line 70
    .line 71
    aput-object p2, p1, v1

    .line 72
    .line 73
    invoke-virtual {p0, v2, p1}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    new-instance p3, Li7/c;

    .line 78
    .line 79
    invoke-direct {p3, p1, p2, p0}, Li7/c;-><init>(IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p3}, Li7/d;->b(Li7/c;)I

    .line 83
    .line 84
    .line 85
    return-void
.end method
