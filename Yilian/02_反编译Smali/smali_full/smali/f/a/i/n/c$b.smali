.class public Lf/a/i/n/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public volatile b:I

.field public c:I

.field public d:[B

.field public final synthetic e:Lf/a/i/n/c;


# direct methods
.method public constructor <init>(Lf/a/i/n/c;ILf/a/i/n/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/i/n/c$b;->e:Lf/a/i/n/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lf/a/i/n/c$b;->b:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 3

    iget v0, p0, Lf/a/i/n/c$b;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lf/a/i/n/c$b;->b:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lf/a/i/n/c$b;->e:Lf/a/i/n/c;

    .line 1
    iget-object v0, v0, Lf/a/i/n/c;->d:[[B

    .line 2
    iget v1, p0, Lf/a/i/n/c$b;->b:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lf/a/i/n/c$b;->e:Lf/a/i/n/c;

    .line 3
    iget-object v0, v0, Lf/a/i/n/c;->c:[[B

    .line 4
    iget v2, p0, Lf/a/i/n/c$b;->b:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    return-object v0

    :cond_1
    iget-object v0, p0, Lf/a/i/n/c$b;->d:[B

    return-object v0
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lf/a/i/n/c$b;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lf/a/i/n/c$b;->e:Lf/a/i/n/c;

    .line 1
    iget-object v0, v0, Lf/a/i/n/c;->e:[I

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/a/i/n/c$b;->e:Lf/a/i/n/c;

    .line 3
    iget-object v1, v1, Lf/a/i/n/c;->e:[I

    .line 4
    iget v2, p0, Lf/a/i/n/c$b;->b:I

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v1, -0x1

    iput v1, p0, Lf/a/i/n/c$b;->b:I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
