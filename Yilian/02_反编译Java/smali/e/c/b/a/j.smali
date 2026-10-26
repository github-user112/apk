.class public final Le/c/b/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/a/j$a;,
        Le/c/b/a/j$b;
    }
.end annotation


# instance fields
.field public final a:Le/c/b/a/b;

.field public final b:Z

.field public final c:Le/c/b/a/j$b;

.field public final d:I


# direct methods
.method public constructor <init>(Le/c/b/a/j$b;)V
    .locals 1

    .line 1
    sget-object v0, Le/c/b/a/b$d;->b:Le/c/b/a/b$d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/j;->c:Le/c/b/a/j$b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/c/b/a/j;->b:Z

    iput-object v0, p0, Le/c/b/a/j;->a:Le/c/b/a/b;

    const p1, 0x7fffffff

    iput p1, p0, Le/c/b/a/j;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Le/c/b/a/j;->c:Le/c/b/a/j$b;

    check-cast v1, Le/c/b/a/i;

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Le/c/b/a/h;

    invoke-direct {v0, v1, p0, p1}, Le/c/b/a/h;-><init>(Le/c/b/a/i;Le/c/b/a/j;Ljava/lang/CharSequence;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Le/c/b/a/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Le/c/b/a/a;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    throw v0

    .line 5
    :cond_2
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
