.class public final synthetic Lx/n;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Ly1/m;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:La2/h;


# direct methods
.method public synthetic constructor <init>(Ly1/n0;JJLa2/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx/n;->a:Ly1/m;

    .line 5
    .line 6
    iput-wide p2, p0, Lx/n;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Lx/n;->c:J

    .line 9
    .line 10
    iput-object p6, p0, Lx/n;->d:La2/h;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lq2/j0;

    .line 3
    .line 4
    invoke-virtual {v0}, Lq2/j0;->b()V

    .line 5
    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v8, 0x68

    .line 9
    .line 10
    iget-object v1, p0, Lx/n;->a:Ly1/m;

    .line 11
    .line 12
    iget-wide v2, p0, Lx/n;->b:J

    .line 13
    .line 14
    iget-wide v4, p0, Lx/n;->c:J

    .line 15
    .line 16
    iget-object v7, p0, Lx/n;->d:La2/h;

    .line 17
    .line 18
    invoke-static/range {v0 .. v8}, La2/f;->w(Lq2/j0;Ly1/m;JJFLa2/h;I)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1
.end method
