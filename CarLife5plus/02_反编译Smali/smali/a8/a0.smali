.class public final synthetic La8/a0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:La8/w0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lf9/k;


# direct methods
.method public synthetic constructor <init>(La8/w0;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/a0;->a:La8/w0;

    .line 5
    .line 6
    iput-object p2, p0, La8/a0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, La8/a0;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, La8/a0;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, La8/a0;->e:Lf9/k;

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
    iget-object v0, p0, La8/a0;->a:La8/w0;

    .line 16
    .line 17
    iget-object v1, p0, La8/a0;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, La8/a0;->c:Ljava/util/List;

    .line 20
    .line 21
    iget-object v3, p0, La8/a0;->d:Ljava/util/List;

    .line 22
    .line 23
    iget-object v4, p0, La8/a0;->e:Lf9/k;

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v6}, La8/w0;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lf9/k;Lf1/s;I)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 29
    .line 30
    return-object p1
.end method
