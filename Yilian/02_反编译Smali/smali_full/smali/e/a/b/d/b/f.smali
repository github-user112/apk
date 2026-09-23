.class public final Le/a/b/d/b/f;
.super Le/a/b/f/d;
.source ""


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Le/a/b/f/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public i(I)Le/a/b/d/b/e;
    .locals 0

    invoke-virtual {p0, p1}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/d/b/e;

    return-object p1
.end method
