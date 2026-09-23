.class public final synthetic Ll0/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lw0/q;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lw0/q;Lr1/p;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll0/a;->a:Lw0/q;

    .line 5
    .line 6
    iput-object p2, p0, Ll0/a;->b:Lr1/p;

    .line 7
    .line 8
    iput-wide p3, p0, Ll0/a;->c:J

    .line 9
    .line 10
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
    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    iget-object v0, p0, Ll0/a;->a:Lw0/q;

    .line 15
    .line 16
    iget-object v1, p0, Ll0/a;->b:Lr1/p;

    .line 17
    .line 18
    iget-wide v2, p0, Ll0/a;->c:J

    .line 19
    .line 20
    invoke-static/range {v0 .. v5}, Ll0/e;->a(Lw0/q;Lr1/p;JLf1/s;I)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    return-object p1
.end method
