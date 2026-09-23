.class public final synthetic Ll0/t0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll0/z0;


# direct methods
.method public synthetic constructor <init>(Ll0/z0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll0/t0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/t0;->b:Ll0/z0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ll0/t0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lk2/w;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lk2/v;->f(Lk2/w;Z)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Ll0/t0;->b:Ll0/z0;

    .line 14
    .line 15
    invoke-interface {v2, v0, v1}, Ll0/z0;->e(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lk2/w;->a()V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_0
    check-cast p1, Lx1/b;

    .line 25
    .line 26
    iget-wide v0, p1, Lx1/b;->a:J

    .line 27
    .line 28
    iget-object p1, p0, Ll0/t0;->b:Ll0/z0;

    .line 29
    .line 30
    invoke-interface {p1, v0, v1}, Ll0/z0;->a(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
