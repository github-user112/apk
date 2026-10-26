.class public Lf/a/i/c/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/i/c/c;


# direct methods
.method public constructor <init>(Lf/a/i/c/c;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/c/c$b;->a:Lf/a/i/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lf/a/i/c/c$b;->a:Lf/a/i/c/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :cond_0
    :goto_0
    iget-boolean v3, v0, Lf/a/i/c/c;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Lf/a/i/c/c;->a:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    iget-object v2, v0, Lf/a/i/c/c;->e:[B

    iget v4, v0, Lf/a/i/c/c;->b:I

    invoke-virtual {v3, v2, v1, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    :cond_1
    iget-boolean v3, v0, Lf/a/i/c/c;->i:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lf/a/i/c/c;->h:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Lf/a/i/c/c;->g:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v4, v0, Lf/a/i/c/c;->e:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    iget-boolean v3, v0, Lf/a/i/c/c;->d:Z

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget-object v3, v0, Lf/a/i/c/c;->c:Lf/a/i/c/c$c;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lf/a/i/c/c;->e:[B

    invoke-interface {v3, v4, v2}, Lf/a/i/c/c$c;->uploadData([BI)V

    goto :goto_0

    :cond_4
    return-void
.end method
