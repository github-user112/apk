.class public Lf/a/i/k/b$b;
.super Lf/a/i/k/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/k/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Lf/a/i/k/b;


# direct methods
.method public constructor <init>(Lf/a/i/k/b;JJ)V
    .locals 0

    iput-object p1, p0, Lf/a/i/k/b$b;->f:Lf/a/i/k/b;

    invoke-direct {p0, p2, p3, p4, p5}, Lf/a/i/k/a;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 6

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iget-object v0, p0, Lf/a/i/k/b$b;->f:Lf/a/i/k/b;

    iget-object v1, v0, Lf/a/i/k/b;->b:Lf/a/i/k/b$a;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, p1, v2

    double-to-int v0, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr p1, v2

    double-to-int p1, p1

    const-string p2, ":0"

    const-string v2, ":"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    const-string v4, "0"

    if-ge p1, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ge p1, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_2
    invoke-interface {v1, p1}, Lf/a/i/k/b$a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_4
    :goto_3
    return-void
.end method
