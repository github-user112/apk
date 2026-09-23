.class public final Ll0/m1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lz/m1;


# instance fields
.field public final synthetic a:Lz/m1;

.field public final b:Lf1/f0;

.field public final c:Lf1/f0;


# direct methods
.method public constructor <init>(Lz/m1;Ll0/o1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/m1;->a:Lz/m1;

    .line 5
    .line 6
    new-instance p1, Ll0/l1;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, p2, v0}, Ll0/l1;-><init>(Ll0/o1;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ll0/m1;->b:Lf1/f0;

    .line 17
    .line 18
    new-instance p1, Ll0/l1;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-direct {p1, p2, v0}, Ll0/l1;-><init>(Ll0/o1;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lf1/b;->o(Lf9/a;)Lf1/f0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Ll0/m1;->c:Lf1/f0;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/m1;->a:Lz/m1;

    .line 2
    .line 3
    invoke-interface {v0}, Lz/m1;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/m1;->c:Lf1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/m1;->b:Lf1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/f0;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final d(F)F
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/m1;->a:Lz/m1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz/m1;->d(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/m1;->a:Lz/m1;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lz/m1;->e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
