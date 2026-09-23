.class public final Lv/b;
.super Ly8/i;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic e:Lv/c;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv/c;Ljava/lang/Object;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/b;->e:Lv/c;

    .line 2
    .line 3
    iput-object p2, p0, Lv/b;->f:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Ly8/i;-><init>(ILw8/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lw8/c;

    .line 2
    .line 3
    new-instance v0, Lv/b;

    .line 4
    .line 5
    iget-object v1, p0, Lv/b;->e:Lv/c;

    .line 6
    .line 7
    iget-object v2, p0, Lv/b;->f:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1}, Lv/b;-><init>(Lv/c;Ljava/lang/Object;Lw8/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lv/b;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lv/b;->e:Lv/c;

    .line 5
    .line 6
    invoke-static {p1}, Lv/c;->b(Lv/c;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv/b;->f:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lv/c;->a(Lv/c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Lv/c;->c:Lv/k;

    .line 16
    .line 17
    iget-object v1, v1, Lv/k;->b:Lf1/k1;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p1, Lv/c;->e:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1
.end method
