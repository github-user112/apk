.class public abstract Lf/a/k/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/k/d0;->a:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lf/a/k/d0;->b:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lf/a/k/d0;->a:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lf/a/k/d0;->b:J

    iput-wide p1, p0, Lf/a/k/d0;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lf/a/k/d0;->a:J

    sub-long v4, v0, v2

    iget-wide v6, p0, Lf/a/k/d0;->b:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lf/a/k/d0;->a(Landroid/view/View;)V

    iput-wide v0, p0, Lf/a/k/d0;->a:J

    :cond_1
    return-void
.end method
