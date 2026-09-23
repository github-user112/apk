.class public final synthetic Ln1/b;
.super Lg9/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Ln1/b;->h:I

    .line 2
    .line 3
    move-object p7, p4

    .line 4
    move-object p4, p3

    .line 5
    move p3, p6

    .line 6
    move-object p6, p7

    .line 7
    move-object p7, p5

    .line 8
    move-object p5, p2

    .line 9
    move p2, p1

    .line 10
    move-object p1, p0

    .line 11
    invoke-direct/range {p1 .. p7}, Lg9/a;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Ln1/b;->h:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ln3/q;

    .line 7
    .line 8
    iget-wide v2, p1, Ln3/q;->a:J

    .line 9
    .line 10
    check-cast p2, Lw8/c;

    .line 11
    .line 12
    iget-object p1, p0, Lg9/a;->a:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v1, p1

    .line 15
    check-cast v1, Lz/l1;

    .line 16
    .line 17
    iget-object p1, v1, Lz/l1;->B:Lj2/d;

    .line 18
    .line 19
    invoke-virtual {p1}, Lj2/d;->c()Lac/w;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lz/j1;

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct/range {v0 .. v5}, Lz/j1;-><init>(Lz/l1;JLw8/c;I)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x3

    .line 31
    invoke-static {p1, v4, v0, p2}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 32
    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 38
    .line 39
    check-cast p2, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v0, p0, Lg9/a;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ln1/c;

    .line 48
    .line 49
    invoke-virtual {v0, p2, p1}, Ln1/c;->a(ILf1/s;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
