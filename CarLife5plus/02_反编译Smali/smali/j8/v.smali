.class public final synthetic Lj8/v;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lj8/v;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lj8/v;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lj8/v;->b:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lj8/v;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj8/v;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw0/w;

    .line 9
    .line 10
    iget-object v0, v0, Lw0/w;->f:Lb3/l0;

    .line 11
    .line 12
    iget-object v0, v0, Lb3/l0;->b:Lb3/o;

    .line 13
    .line 14
    iget v1, p0, Lj8/v;->b:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lb3/o;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lj8/v;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lf0/u;

    .line 28
    .line 29
    iget-object v1, v0, Lf0/u;->e:Lf0/p;

    .line 30
    .line 31
    iget-object v1, v1, Lf0/p;->c:Lf1/h1;

    .line 32
    .line 33
    invoke-virtual {v1}, Lf1/h1;->f()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget-object v0, v0, Lf0/u;->e:Lf0/p;

    .line 38
    .line 39
    iget-object v0, v0, Lf0/p;->b:Lf1/h1;

    .line 40
    .line 41
    invoke-virtual {v0}, Lf1/h1;->f()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v2, p0, Lj8/v;->b:I

    .line 46
    .line 47
    div-int/lit8 v2, v2, 0x2

    .line 48
    .line 49
    if-le v1, v2, :cond_0

    .line 50
    .line 51
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
