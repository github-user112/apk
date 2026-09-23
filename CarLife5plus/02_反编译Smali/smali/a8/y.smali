.class public final synthetic La8/y;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:La8/w0;

.field public final synthetic b:Lz7/b2;

.field public final synthetic c:Z

.field public final synthetic d:Lf9/k;

.field public final synthetic e:Lf9/a;

.field public final synthetic f:Lf9/a;


# direct methods
.method public synthetic constructor <init>(La8/w0;Lz7/b2;ZLf9/k;Lf9/a;Lf9/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La8/y;->a:La8/w0;

    .line 5
    .line 6
    iput-object p2, p0, La8/y;->b:Lz7/b2;

    .line 7
    .line 8
    iput-boolean p3, p0, La8/y;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, La8/y;->d:Lf9/k;

    .line 11
    .line 12
    iput-object p5, p0, La8/y;->e:Lf9/a;

    .line 13
    .line 14
    iput-object p6, p0, La8/y;->f:Lf9/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    .line 2
    check-cast v6, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const p1, 0x30001

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iget-object v0, p0, La8/y;->a:La8/w0;

    .line 17
    .line 18
    iget-object v1, p0, La8/y;->b:Lz7/b2;

    .line 19
    .line 20
    iget-boolean v2, p0, La8/y;->c:Z

    .line 21
    .line 22
    iget-object v3, p0, La8/y;->d:Lf9/k;

    .line 23
    .line 24
    iget-object v4, p0, La8/y;->e:Lf9/a;

    .line 25
    .line 26
    iget-object v5, p0, La8/y;->f:Lf9/a;

    .line 27
    .line 28
    invoke-virtual/range {v0 .. v7}, La8/w0;->e(Lz7/b2;ZLf9/k;Lf9/a;Lf9/a;Lf1/s;I)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 32
    .line 33
    return-object p1
.end method
