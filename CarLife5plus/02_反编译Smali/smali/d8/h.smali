.class public final synthetic Ld8/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Ld8/j;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Ld8/j;Ljava/util/List;ZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld8/h;->a:Ld8/j;

    .line 5
    .line 6
    iput-object p2, p0, Ld8/h;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-boolean p3, p0, Ld8/h;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Ld8/h;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x8037

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    iget-object v0, p0, Ld8/h;->a:Ld8/j;

    .line 17
    .line 18
    iget-object v1, p0, Ld8/h;->b:Ljava/util/List;

    .line 19
    .line 20
    iget-boolean v2, p0, Ld8/h;->c:Z

    .line 21
    .line 22
    iget-boolean v3, p0, Ld8/h;->d:Z

    .line 23
    .line 24
    invoke-virtual/range {v0 .. v5}, Ld8/j;->b(Ljava/util/List;ZZLf1/s;I)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1
.end method
