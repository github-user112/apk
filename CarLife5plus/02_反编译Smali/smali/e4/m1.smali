.class public final Le4/m1;
.super Le4/l1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final s:Le4/r1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, La7/c;->g()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Le4/r1;->c(Landroid/view/View;Landroid/view/WindowInsets;)Le4/r1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Le4/m1;->s:Le4/r1;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Le4/r1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le4/l1;-><init>(Le4/r1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Le4/r1;Le4/m1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Le4/l1;-><init>(Le4/r1;Le4/l1;)V

    return-void
.end method


# virtual methods
.method public g(I)Lx3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Le4/q1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, La7/c;->e(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public h(I)Lx3/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Le4/q1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, La7/c;->z(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lx3/b;->c(Landroid/graphics/Insets;)Lx3/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public q(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le4/h1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Le4/q1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, La7/c;->w(Landroid/view/WindowInsets;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
