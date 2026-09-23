.class public Lf/a/e/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:[Lf/a/e/a$a;

.field public b:I

.field public c:I

.field public volatile d:Z

.field public e:Z

.field public final synthetic f:Lf/a/e/a;


# direct methods
.method public constructor <init>(Lf/a/e/a;)V
    .locals 4

    iput-object p1, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v1, v0, [Lf/a/e/a$a;

    iput-object v1, p0, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf/a/e/a$b;->e:Z

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    new-instance v3, Lf/a/e/a$a;

    invoke-direct {v3, p1}, Lf/a/e/a$a;-><init>(Lf/a/e/a;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    aget-object v2, v2, v1

    const/16 v3, 0x800

    new-array v3, v3, [B

    iput-object v3, v2, Lf/a/e/a$a;->a:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 1
    :goto_0
    iget v2, p0, Lf/a/e/a$b;->c:I

    iget v3, p0, Lf/a/e/a$b;->b:I

    sub-int v4, v2, v3

    const/high16 v5, 0x10000

    if-gez v4, :cond_0

    sub-int v3, v5, v3

    add-int v4, v3, v2

    :cond_0
    const/16 v2, 0x40

    if-lt v4, v2, :cond_7

    .line 2
    iget-boolean v2, p0, Lf/a/e/a$b;->e:Z

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    .line 3
    iget-object v2, v2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    .line 5
    iget-object v2, v2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    .line 6
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    .line 7
    iget-object v2, v2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lf/a/e/a$b;->d:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    .line 9
    iget-object v2, v2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-eqz v2, :cond_6

    .line 10
    iget-object v3, p0, Lf/a/e/a$b;->a:[Lf/a/e/a$a;

    iget v6, p0, Lf/a/e/a$b;->b:I

    rem-int/2addr v6, v0

    aget-object v3, v3, v6

    iget-boolean v6, v3, Lf/a/e/a$a;->c:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v3, Lf/a/e/a$a;->a:[B

    iget v8, v3, Lf/a/e/a$a;->b:I

    invoke-virtual {v2, v6, v7, v8}, Landroid/media/AudioTrack;->write([BII)I

    iput-boolean v7, v3, Lf/a/e/a$a;->c:Z

    iget v2, p0, Lf/a/e/a$b;->b:I

    add-int/2addr v2, v4

    iput v2, p0, Lf/a/e/a$b;->b:I

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2, v1, v7, v0}, Landroid/media/AudioTrack;->write([BII)I

    :cond_5
    :goto_2
    iget v2, p0, Lf/a/e/a$b;->b:I

    if-lt v2, v5, :cond_3

    iput v7, p0, Lf/a/e/a$b;->b:I

    goto :goto_1

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget-object v2, p0, Lf/a/e/a$b;->f:Lf/a/e/a;

    .line 11
    iget-object v2, v2, Lf/a/e/a;->a:Landroid/media/AudioTrack;

    if-nez v2, :cond_8

    return-void

    :cond_8
    const-wide/16 v2, 0x14

    .line 12
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
