.class public final Le/a/b/b/b/b0/b;
.super Le/a/b/b/b/n;
.source ""


# static fields
.field public static final a:Le/a/b/b/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/b/b/b0/b;

    invoke-direct {v0}, Le/a/b/b/b/b0/b;-><init>()V

    sput-object v0, Le/a/b/b/b/b0/b;->a:Le/a/b/b/b/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/a/b/b/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Le/a/b/b/b/h;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public j(Le/a/b/b/b/h;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public k(Le/a/b/b/b/h;)Z
    .locals 1

    instance-of v0, p1, Le/a/b/b/b/x;

    if-eqz v0, :cond_0

    .line 1
    iget-object p1, p1, Le/a/b/b/b/h;->d:Le/a/b/d/b/l;

    .line 2
    iget-object p1, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public w(Le/a/b/f/a;Le/a/b/b/b/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Le/a/b/b/b/n;->o(Le/a/b/b/b/h;I)S

    move-result p2

    .line 1
    check-cast p1, Le/a/b/f/c;

    invoke-virtual {p1, p2}, Le/a/b/f/c;->l(I)V

    return-void
.end method
