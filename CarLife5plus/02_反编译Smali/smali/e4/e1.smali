.class public Le4/e1;
.super Le4/d1;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le4/d1;-><init>()V

    return-void
.end method

.method public constructor <init>(Le4/r1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Le4/d1;-><init>(Le4/r1;)V

    return-void
.end method


# virtual methods
.method public c(ILx3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le4/d1;->c:Landroid/view/WindowInsets$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Le4/p1;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p2}, Lx3/b;->d()Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {v0, p1, p2}, La7/c;->p(Landroid/view/WindowInsets$Builder;ILandroid/graphics/Insets;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
