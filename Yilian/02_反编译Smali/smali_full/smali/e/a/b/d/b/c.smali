.class public abstract Le/a/b/d/b/c;
.super Le/a/b/d/b/e;
.source ""


# instance fields
.field public final e:Le/a/b/d/c/a;


# direct methods
.method public constructor <init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;Le/a/b/d/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Le/a/b/d/b/e;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/c;->e:Le/a/b/d/c/a;

    invoke-interface {v0}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
