.class public final Lv7/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/h0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/b1;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lf1/b1;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Lv7/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/j;->b:Lf1/b1;

    .line 4
    .line 5
    iput-object p2, p0, Lv7/j;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lv7/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/j;->b:Lf1/b1;

    .line 7
    .line 8
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ll8/u;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ll8/u;->a()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lv7/j;->c:Lf1/b1;

    .line 24
    .line 25
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ll8/w;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x1

    .line 38
    if-ne v2, v3, :cond_2

    .line 39
    .line 40
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ll8/w;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Ll8/w;->dismiss()V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lv7/j;->b:Lf1/b1;

    .line 56
    .line 57
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ll8/u;

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1}, Ll8/u;->a()V

    .line 66
    .line 67
    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lv7/j;->c:Lf1/b1;

    .line 73
    .line 74
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ll8/w;

    .line 79
    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    const/4 v3, 0x1

    .line 87
    if-ne v2, v3, :cond_5

    .line 88
    .line 89
    invoke-interface {v0}, Lf1/v2;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ll8/w;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    invoke-virtual {v2}, Ll8/w;->dismiss()V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-interface {v0, v1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
