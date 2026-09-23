.class public final synthetic La/a/b/l/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static final synthetic b:La/a/b/l/d/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/b/l/d/a;

    invoke-direct {v0}, La/a/b/l/d/a;-><init>()V

    sput-object v0, La/a/b/l/d/a;->b:La/a/b/l/d/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 4

    .line 1
    sget-object v0, La/a/b/l/d/f;->a:La/a/b/l/d/f;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VR audio focus change to "

    aput-object v3, v1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "VoiceRecordUtil"

    const-string v2, "tag"

    .line 3
    invoke-static {p1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, p1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
