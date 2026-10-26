.class public Le/a/b/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/b/b/a;->a:Z

    const/16 v0, 0xd

    iput v0, p0, Le/a/b/b/a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/a/b/b/a;->c:Z

    return-void
.end method
