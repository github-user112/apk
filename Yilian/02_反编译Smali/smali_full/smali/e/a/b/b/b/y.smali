.class public final Le/a/b/b/b/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/b/b/b;


# instance fields
.field public final a:Le/a/b/d/b/o;

.field public final b:[I

.field public final c:Le/a/b/b/b/a;


# direct methods
.method public constructor <init>(Le/a/b/d/b/o;[ILe/a/b/b/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Le/a/b/b/b/y;->a:Le/a/b/d/b/o;

    iput-object p2, p0, Le/a/b/b/b/y;->b:[I

    iput-object p3, p0, Le/a/b/b/b/y;->c:Le/a/b/b/b/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Le/a/b/d/b/a;Le/a/b/d/b/a;Le/a/b/b/b/c;Le/a/b/b/b/a;)Le/a/b/b/b/d$a;
    .locals 1

    .line 1
    iget-object v0, p3, Le/a/b/b/b/a;->b:[Le/a/b/b/b/e;

    .line 2
    iget p0, p0, Le/a/b/d/b/a;->a:I

    .line 3
    aget-object p0, v0, p0

    .line 4
    iget-object p3, p3, Le/a/b/b/b/a;->c:[Le/a/b/b/b/e;

    .line 5
    iget p1, p1, Le/a/b/d/b/a;->a:I

    .line 6
    aget-object p1, p3, p1

    .line 7
    new-instance p3, Le/a/b/b/b/d$a;

    invoke-virtual {p0}, Le/a/b/b/b/h;->c()I

    move-result p0

    invoke-virtual {p1}, Le/a/b/b/b/h;->c()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Le/a/b/b/b/d$a;-><init>(IILe/a/b/b/b/c;)V

    return-object p3
.end method
