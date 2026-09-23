.class public abstract Le/a/b/d/c/x;
.super Le/a/b/d/c/a;
.source ""

# interfaces
.implements Le/a/b/d/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/d/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    invoke-interface {p0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    .line 1
    iget v0, v0, Le/a/b/d/d/c;->b:I

    return v0
.end method
