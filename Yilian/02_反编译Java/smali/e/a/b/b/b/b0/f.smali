.class public final Le/a/b/b/b/b0/f;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/f;

    invoke-direct {v0}, Le/a/b/b/b/b0/f;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/f;->a:Le/a/b/b/b/n;

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

    invoke-virtual {p1}, Le/a/b/b/b/z;->l()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/b/b/b/n;->p(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x2

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
    .locals 3

    instance-of v0, p1, Le/a/b/b/b/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1
    iget-object v0, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object v0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Le/a/b/b/b/z;

    invoke-virtual {p1}, Le/a/b/b/b/z;->m()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Le/a/b/b/b/z;->l()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Le/a/b/b/b/n;->p(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
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

    int-to-short v0, v0

    invoke-static {p1, p2, v0}, Le/a/b/b/b/n;->u(Le/a/b/f/a;SS)V

    return-void
.end method
