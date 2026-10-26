.class public final Le/a/b/d/b/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Le/a/b/d/b/b;

.field public final b:I

.field public c:[Le/a/b/f/f;

.field public d:Le/a/b/f/f;


# direct methods
.method public constructor <init>(Le/a/b/d/b/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    iput-object p1, p0, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    iput p2, p0, Le/a/b/d/b/o;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/d/b/o;->c:[Le/a/b/f/f;

    iput-object p1, p0, Le/a/b/d/b/o;->d:Le/a/b/f/f;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstLabel < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
