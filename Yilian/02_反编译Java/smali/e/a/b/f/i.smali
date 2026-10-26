.class public Le/a/b/f/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/b/f/i;->a:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-boolean v0, p0, Le/a/b/f/i;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le/a/b/f/j;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Le/a/b/f/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Le/a/b/f/i;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le/a/b/f/j;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Le/a/b/f/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method
