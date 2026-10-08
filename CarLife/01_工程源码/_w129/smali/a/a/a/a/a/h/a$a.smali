.class public final La/a/a/a/a/h/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public e:Landroid/media/AudioFocusRequest;

.field public final synthetic f:La/a/a/a/a/h/a;


# direct methods
.method public constructor <init>(La/a/a/a/a/h/a;IILandroid/media/AudioManager$OnAudioFocusChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/a/a/h/a$a;->f:La/a/a/a/a/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, La/a/a/a/a/h/a$a;->b:I

    iput p3, p0, La/a/a/a/a/h/a$a;->c:I

    iput-object p4, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p1, La/a/a/a/a/h/a$a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    check-cast p1, La/a/a/a/a/h/a$a;

    iget-object p1, p1, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v0, p1}, Lc/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AudioFocusManager onAudioFocusChange "

    aput-object v2, v0, v1

    iget-object v1, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v3, " "

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v0, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, La/a/a/a/a/h/a$a;->f:La/a/a/a/a/h/a;

    .line 5
    iput-object p0, p1, La/a/a/a/a/h/a;->c:La/a/a/a/a/h/a$a;

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, La/a/a/a/a/h/a$a;->f:La/a/a/a/a/h/a;

    iget-object v0, p0, La/a/a/a/a/h/a$a;->d:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p1, v0}, La/a/a/a/a/h/a;->a(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    :goto_1
    return-void
.end method
