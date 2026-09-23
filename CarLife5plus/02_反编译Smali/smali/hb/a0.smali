.class public final Lhb/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lp/h3;


# direct methods
.method public synthetic constructor <init>(Lp/h3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lhb/a0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lhb/a0;->b:Lp/h3;

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
    .locals 2

    .line 1
    iget v0, p0, Lhb/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lpa/s0;

    .line 7
    .line 8
    const-string v0, "it"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lhb/a0;->b:Lp/h3;

    .line 14
    .line 15
    iget-object v0, v0, Lp/h3;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lhb/k;

    .line 18
    .line 19
    iget-object v0, v0, Lhb/k;->d:Lra/g;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lp4/e;->s(Lpa/s0;Lra/g;)Lpa/s0;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Lhb/a0;->b:Lp/h3;

    .line 33
    .line 34
    iget-object v0, v0, Lp/h3;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Lhb/k;

    .line 37
    .line 38
    iget-object v1, v0, Lhb/k;->b:Lra/f;

    .line 39
    .line 40
    invoke-static {v1, p1}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-boolean v1, p1, Lua/b;->c:Z

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 50
    .line 51
    iget-object v0, v0, Lhb/i;->b:Lv9/y;

    .line 52
    .line 53
    const-string v1, "<this>"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p1}, Lv9/v;->e(Lv9/y;Lua/b;)Lv9/h;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of v0, p1, Lv9/p0;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    check-cast p1, Lv9/p0;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 70
    :goto_1
    return-object p1

    .line 71
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lhb/a0;->b:Lp/h3;

    .line 78
    .line 79
    iget-object v0, v0, Lp/h3;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lhb/k;

    .line 82
    .line 83
    iget-object v1, v0, Lhb/k;->b:Lra/f;

    .line 84
    .line 85
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 86
    .line 87
    invoke-static {v1, p1}, Li9/a;->B(Lra/f;I)Lua/b;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-boolean v1, p1, Lua/b;->c:Z

    .line 92
    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lhb/i;->b(Lua/b;)Lv9/e;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    iget-object v0, v0, Lhb/i;->b:Lv9/y;

    .line 101
    .line 102
    invoke-static {v0, p1}, Lv9/v;->e(Lv9/y;Lua/b;)Lv9/h;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_2
    return-object p1

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
