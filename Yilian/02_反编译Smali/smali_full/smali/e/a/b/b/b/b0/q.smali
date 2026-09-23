.class public final Le/a/b/b/b/b0/q;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/q;

    invoke-direct {v0}, Le/a/b/b/b/b0/q;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/q;->a:Le/a/b/b/b/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Le/a/b/b/b/z;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Le/a/b/b/b/n;->c(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Le/a/b/b/b/n;->a(Le/a/b/b/b/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 1

    instance-of v0, p1, Le/a/b/b/b/z;

    if-eqz v0, :cond_1

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object p1, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Le/a/b/b/b/z;

    invoke-virtual {v0}, Le/a/b/b/b/z;->l()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    invoke-static {p1, p2, v0}, Le/a/b/b/b/n;->t(Le/a/b/f/a;SI)V

    return-void
.end method
