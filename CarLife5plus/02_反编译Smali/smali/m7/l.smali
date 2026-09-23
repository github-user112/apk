.class public final synthetic Lm7/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lm7/n;


# direct methods
.method public synthetic constructor <init>(Lm7/n;II)V
    .locals 0

    .line 1
    iput p3, p0, Lm7/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lm7/l;->b:Lm7/n;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lm7/l;->a:I

    .line 2
    .line 3
    check-cast p1, Lf1/s;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x7

    .line 14
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget-object v0, p0, Lm7/l;->b:Lm7/n;

    .line 19
    .line 20
    invoke-virtual {v0, p2, p1}, Lm7/n;->a(ILf1/s;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 24
    .line 25
    return-object p1

    .line 26
    :pswitch_0
    const/4 p2, 0x7

    .line 27
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    iget-object v0, p0, Lm7/l;->b:Lm7/n;

    .line 32
    .line 33
    invoke-virtual {v0, p2, p1}, Lm7/n;->d(ILf1/s;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    const/4 p2, 0x7

    .line 38
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    iget-object v0, p0, Lm7/l;->b:Lm7/n;

    .line 43
    .line 44
    invoke-virtual {v0, p2, p1}, Lm7/n;->d(ILf1/s;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
