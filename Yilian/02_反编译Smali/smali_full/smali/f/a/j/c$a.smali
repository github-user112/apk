.class public final enum Lf/a/j/c$a;
.super Lf/a/j/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lf/a/j/c;-><init>(Ljava/lang/String;ILf/a/j/c$a;)V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/d/d/e;)Le/a/b/d/b/n;
    .locals 3

    .line 1
    sget-object v0, Le/a/b/d/b/p;->u:Le/a/b/d/b/n;

    sget-object v1, Le/a/b/d/b/p;->C:Le/a/b/d/b/n;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Le/a/b/d/b/p;->n(Le/a/b/d/d/e;Le/a/b/d/b/n;Le/a/b/d/b/n;Le/a/b/d/b/n;Le/a/b/d/b/n;)Le/a/b/d/b/n;

    move-result-object p1

    return-object p1
.end method
