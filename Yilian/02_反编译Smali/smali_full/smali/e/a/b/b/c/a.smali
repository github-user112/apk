.class public final Le/a/b/b/c/a;
.super Le/a/b/b/c/h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/c/a$b;
    }
.end annotation


# static fields
.field public static final f:Le/a/b/b/c/a$b;


# instance fields
.field public e:Le/a/b/b/c/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/b/b/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/b/c/a$b;-><init>(Le/a/b/b/c/a$a;)V

    sput-object v0, Le/a/b/b/c/a;->f:Le/a/b/b/c/a$b;

    return-void
.end method


# virtual methods
.method public a(Le/a/b/b/c/m;)V
    .locals 0

    .line 1
    iget-object p1, p1, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public b()Le/a/b/b/c/z;
    .locals 1

    sget-object v0, Le/a/b/b/c/z;->s:Le/a/b/b/c/z;

    return-object v0
.end method

.method public f(Le/a/b/b/c/h0;)I
    .locals 0

    check-cast p1, Le/a/b/b/c/a;

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public k(Le/a/b/b/c/l0;I)V
    .locals 0

    .line 1
    iget-object p1, p1, Le/a/b/b/c/l0;->b:Le/a/b/b/c/m;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Le/a/b/b/c/m;Le/a/b/f/a;)V
    .locals 0

    check-cast p2, Le/a/b/f/c;

    const/4 p1, 0x0

    throw p1
.end method
