.class public final synthetic La8/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp1/p;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lp1/p;Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p4, p0, La8/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La8/k;->b:Lp1/p;

    .line 4
    .line 5
    iput-object p2, p0, La8/k;->c:Lf1/b1;

    .line 6
    .line 7
    iput-object p3, p0, La8/k;->d:Lf1/b1;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, La8/k;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const-string v2, "option"

    .line 6
    .line 7
    iget-object v3, p0, La8/k;->d:Lf1/b1;

    .line 8
    .line 9
    iget-object v4, p0, La8/k;->c:Lf1/b1;

    .line 10
    .line 11
    iget-object v5, p0, La8/k;->b:Lp1/p;

    .line 12
    .line 13
    check-cast p1, Lj8/k0;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, La8/t;->a:La8/t;

    .line 22
    .line 23
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v3, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lp1/p;->clear()V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_0
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, La8/t;->a:La8/t;

    .line 39
    .line 40
    invoke-interface {v4, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-interface {v3, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Lp1/p;->clear()V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
