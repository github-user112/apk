.class public final synthetic Lq0/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lq0/q;

.field public final synthetic c:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Lq0/q;Landroid/graphics/drawable/Icon;II)V
    .locals 0

    .line 1
    iput p4, p0, Lq0/p;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq0/p;->b:Lq0/q;

    .line 4
    .line 5
    iput-object p2, p0, Lq0/p;->c:Landroid/graphics/drawable/Icon;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lq0/p;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq0/p;->c:Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    check-cast p1, Lf1/s;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/16 p2, 0x31

    .line 16
    .line 17
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    iget-object v1, p0, Lq0/p;->b:Lq0/q;

    .line 22
    .line 23
    invoke-virtual {v1, v0, p1, p2}, Lq0/q;->b(Landroid/graphics/drawable/Icon;Lf1/s;I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_0
    iget-object v0, p0, Lq0/p;->c:Landroid/graphics/drawable/Icon;

    .line 30
    .line 31
    check-cast p1, Lf1/s;

    .line 32
    .line 33
    check-cast p2, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const/16 p2, 0x31

    .line 39
    .line 40
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object v1, p0, Lq0/p;->b:Lq0/q;

    .line 45
    .line 46
    invoke-virtual {v1, v0, p1, p2}, Lq0/q;->b(Landroid/graphics/drawable/Icon;Lf1/s;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
