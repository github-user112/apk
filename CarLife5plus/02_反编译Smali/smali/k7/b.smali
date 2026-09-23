.class public final synthetic Lk7/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lk7/j;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lr8/j;

.field public final synthetic d:Z

.field public final synthetic e:Lf9/o;


# direct methods
.method public synthetic constructor <init>(Lk7/j;Ljava/util/List;Lr8/j;ZLf9/o;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk7/b;->a:Lk7/j;

    .line 5
    .line 6
    iput-object p2, p0, Lk7/b;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lk7/b;->c:Lr8/j;

    .line 9
    .line 10
    iput-boolean p4, p0, Lk7/b;->d:Z

    .line 11
    .line 12
    iput-object p5, p0, Lk7/b;->e:Lf9/o;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    .line 2
    check-cast v5, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x6c07

    .line 10
    .line 11
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    iget-object v0, p0, Lk7/b;->a:Lk7/j;

    .line 16
    .line 17
    iget-object v1, p0, Lk7/b;->b:Ljava/util/List;

    .line 18
    .line 19
    iget-object v2, p0, Lk7/b;->c:Lr8/j;

    .line 20
    .line 21
    iget-boolean v3, p0, Lk7/b;->d:Z

    .line 22
    .line 23
    iget-object v4, p0, Lk7/b;->e:Lf9/o;

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, Lk7/j;->a(Ljava/util/List;Lr8/j;ZLf9/o;Lf1/s;I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method
