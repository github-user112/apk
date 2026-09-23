.class public final La/a/a/a/a/h/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/h/a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            "La/a/a/a/a/h/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:La/a/a/a/a/h/a$a;

.field public final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "La/a/a/a/a/h/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, La/a/a/a/a/h/a;->a:Landroid/media/AudioManager;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, La/a/a/a/a/h/a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic f(La/a/a/a/a/h/a;Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZI)I
    .locals 8

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, La/a/a/a/a/h/a;->e(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CarLife_SDK"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AudioFocusManager abandonAudioFocus"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/a/a/h/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/h/a$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, La/a/a/a/a/h/a;->b(La/a/a/a/a/h/a$a;)V

    iget-object p1, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    iget-object p1, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    check-cast p1, La/a/a/a/a/h/a$a;

    invoke-virtual {p0, p1}, La/a/a/a/a/h/a;->c(La/a/a/a/a/h/a$a;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1
    iget-object p1, p1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v0, -0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4
    invoke-interface {p1, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "delayedRequests.listIterator()"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "iterator.next()"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La/a/a/a/a/h/a$a;

    .line 6
    iget-object v1, v1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 7
    invoke-static {v1, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final b(La/a/a/a/a/h/a$a;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 1
    iget-object v1, p1, La/a/a/a/a/h/a$a;->e:Landroid/media/AudioFocusRequest;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, La/a/a/a/a/h/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    invoke-static {v1, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    :cond_1
    return-void

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, La/a/a/a/a/h/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    invoke-static {v1, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v0, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    invoke-static {v2, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v0, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    :cond_4
    throw v1
.end method

.method public final c(La/a/a/a/a/h/a$a;)I
    .locals 6

    sget v0, La/a/a/a/l/b;->w:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    .line 1
    iget v3, p1, La/a/a/a/a/h/a$a;->c:I

    .line 2
    invoke-direct {v0, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 3
    iget v4, p1, La/a/a/a/a/h/a$a;->b:I

    if-eq v4, v2, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v4, La/a/a/a/l/b;->b:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v4, La/a/a/a/l/b;->c:I

    .line 5
    :goto_1
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    const-string v3, "Builder(listener.focusType)\n                    .setAudioAttributes(AudioAttributes\n                        .Builder()\n                        .setUsage(getUsage(listener.stream))\n                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)\n                        .build())\n                    .setOnAudioFocusChangeListener(listener)\n                    .build()"

    invoke-static {v0, v3}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v0, p1, La/a/a/a/a/h/a$a;->e:Landroid/media/AudioFocusRequest;

    .line 7
    iget-object v3, p0, La/a/a/a/a/h/a;->a:Landroid/media/AudioManager;

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_4

    :cond_2
    iget-object v0, p0, La/a/a/a/a/h/a;->a:Landroid/media/AudioManager;

    .line 8
    iget v3, p1, La/a/a/a/a/h/a$a;->b:I

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    sget v3, La/a/a/a/l/b;->b:I

    goto :goto_3

    :cond_4
    :goto_2
    sget v3, La/a/a/a/l/b;->c:I

    .line 10
    :goto_3
    iget v4, p1, La/a/a/a/a/h/a$a;->c:I

    .line 11
    invoke-virtual {v0, p1, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    :goto_4
    if-ne v0, v2, :cond_5

    iput-object p1, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    iget-object v3, p0, La/a/a/a/a/h/a;->b:Ljava/util/Map;

    .line 12
    iget-object v4, p1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 13
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "AudioFocusManager requestAudioFocus "

    aput-object v5, v3, v4

    .line 14
    iget-object p1, p1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    aput-object p1, v3, v2

    const-string p1, " "

    aput-object p1, v3, v1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v3, v1

    const-string p1, "CarLife_SDK"

    const-string v2, "tag"

    .line 16
    invoke-static {p1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v3, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_6

    goto :goto_5

    .line 18
    :cond_6
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, p1, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return v0
.end method

.method public final d(La/a/a/a/a/h/a$a;)V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, La/a/a/a/a/h/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "delayedRequests.listIterator()"

    invoke-static {v0, v1}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "iterator.next()"

    invoke-static {v1, v2}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, La/a/a/a/a/h/a$a;

    .line 1
    iget v2, p1, La/a/a/a/a/h/a$a;->b:I

    iget v3, v1, La/a/a/a/a/h/a$a;->b:I

    if-eq v2, v3, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    iget v2, p1, La/a/a/a/a/h/a$a;->b:I

    iget v3, v1, La/a/a/a/a/h/a$a;->b:I

    if-le v2, v3, :cond_2

    .line 4
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final declared-synchronized e(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIZZ)I
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    iget-object v1, v0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2
    invoke-static {v1, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    monitor-exit p0

    return v2

    .line 3
    :cond_1
    :try_start_1
    iget v0, v0, La/a/a/a/a/h/a$a;->b:I

    if-le v0, p2, :cond_5

    if-nez p5, :cond_5

    const/4 p5, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz p4, :cond_3

    .line 4
    new-instance p4, La/a/a/a/a/h/a$a;

    invoke-direct {p4, p0, p2, p3, p1}, La/a/a/a/a/h/a$a;-><init>(La/a/a/a/a/h/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0, p4}, La/a/a/a/a/h/a;->d(La/a/a/a/a/h/a$a;)V

    const-string p2, "CarLife_SDK"

    new-array p3, p5, [Ljava/lang/Object;

    const-string p4, "AudioFocusManager requestAudioFocus "

    aput-object p4, p3, v3

    aput-object p1, p3, v2

    const-string p1, " "

    aput-object p1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "tag"

    .line 5
    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    const-string p2, "CarLife_SDK"

    new-array p3, p5, [Ljava/lang/Object;

    const-string p4, "AudioFocusManager requestAudioFocus "

    aput-object p4, p3, v3

    aput-object p1, p3, v2

    const-string p1, " "

    aput-object p1, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "tag"

    .line 9
    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {p3, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_1
    monitor-exit p0

    return v3

    :cond_5
    :goto_2
    :try_start_3
    new-instance p4, La/a/a/a/a/h/a$a;

    invoke-direct {p4, p0, p2, p3, p1}, La/a/a/a/a/h/a$a;-><init>(La/a/a/a/a/h/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual {p0, p4}, La/a/a/a/a/h/a;->c(La/a/a/a/a/h/a$a;)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
