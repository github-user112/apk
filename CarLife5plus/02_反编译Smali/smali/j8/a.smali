.class public final synthetic Lj8/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lr8/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lr8/e;III)V
    .locals 0

    .line 1
    iput p5, p0, Lj8/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lj8/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lj8/a;->e:Lr8/e;

    .line 6
    .line 7
    iput p3, p0, Lj8/a;->c:I

    .line 8
    .line 9
    iput p4, p0, Lj8/a;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lj8/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/a;->e:Lr8/e;

    .line 7
    .line 8
    check-cast v0, Lf9/a;

    .line 9
    .line 10
    check-cast p1, Lf1/s;

    .line 11
    .line 12
    check-cast p2, Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p2, p0, Lj8/a;->c:I

    .line 18
    .line 19
    or-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iget-object v1, p0, Lj8/a;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget v2, p0, Lj8/a;->d:I

    .line 28
    .line 29
    invoke-static {v1, v0, p1, p2, v2}, Lg5/a;->m(Ljava/lang/String;Lf9/a;Lf1/s;II)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_0
    iget-object v0, p0, Lj8/a;->e:Lr8/e;

    .line 36
    .line 37
    check-cast v0, Lf9/n;

    .line 38
    .line 39
    check-cast p1, Lf1/s;

    .line 40
    .line 41
    check-cast p2, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget p2, p0, Lj8/a;->c:I

    .line 47
    .line 48
    or-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    invoke-static {p2}, Lf1/b;->y(I)I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    iget-object v1, p0, Lj8/a;->b:Ljava/lang/String;

    .line 55
    .line 56
    iget v2, p0, Lj8/a;->d:I

    .line 57
    .line 58
    invoke-static {v1, v0, p1, p2, v2}, Lg5/a;->f(Ljava/lang/String;Lf9/n;Lf1/s;II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
