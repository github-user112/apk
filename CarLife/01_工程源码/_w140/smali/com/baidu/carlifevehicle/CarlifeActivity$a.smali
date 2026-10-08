.class public final Lcom/baidu/carlifevehicle/CarlifeActivity$a;
.super La/a/b/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlifevehicle/CarlifeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lcom/baidu/carlifevehicle/CarlifeActivity;


# direct methods
.method public constructor <init>(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-direct {p0}, La/a/b/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x7d9

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x7d5

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x7d4

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x7d6

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "args"

    const-string v1, "tag"

    const-string v2, "CarLife_SDK"

    const-string v3, "msg"

    invoke-static {p1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "MsgMainActivityHandler handleMessage get msg: "

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-static {v7}, La/a/b/r/c;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 1
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    const/4 v7, 0x3

    if-nez v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v2, v5}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x3e8

    if-eq p1, v5, :cond_e

    const/16 v5, 0x3ea

    if-eq p1, v5, :cond_d

    const/16 v5, 0x3ec

    if-eq p1, v5, :cond_c

    const/16 v5, 0x7d9

    if-eq p1, v5, :cond_9

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 5
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-static {}, La/a/b/n/l;->E0()La/a/b/n/l;

    move-result-object v5

    invoke-virtual {p1, v5}, La/a/b/n/k;->a(La/a/b/n/g;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v5, "mIsCalling="

    iget-object v6, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 9
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v5, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v7, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, La/a/b/n/l;->E0()La/a/b/n/l;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v5}, Lb/b/c/j;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, La/a/b/n/l;->D0(Ljava/lang/String;)V

    invoke-static {}, La/a/b/n/l;->E0()La/a/b/n/l;

    move-result-object p1

    .line 15
    iget-object p1, p1, La/a/b/n/l;->d0:Landroid/widget/Button;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    sput-boolean v3, La/a/b/n/l;->a0:Z

    .line 16
    invoke-static {}, La/a/b/n/l;->E0()La/a/b/n/l;

    move-result-object p1

    const v5, 0x7f08005c

    invoke-virtual {p1, v5}, La/a/b/n/l;->C0(I)V

    goto/16 :goto_8

    :pswitch_1
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 17
    iget-boolean p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Z

    if-nez p1, :cond_5

    new-array p1, v3, [Ljava/lang/Object;

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsInitConfig is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 19
    iget-boolean v6, v6, Lcom/baidu/carlifevehicle/CarlifeActivity;->B:Z

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", so delay 500"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v4

    .line 21
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v5, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v5, :cond_4

    goto :goto_2

    .line 23
    :cond_4
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, v7, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/16 p1, 0x7d5

    const/16 v5, 0x1f4

    .line 24
    invoke-static {p1, v5}, La/a/b/o/b;->b(II)V

    return-void

    :cond_5
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1}, La/a/a/a/c;->v()Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x7d4

    invoke-static {p1}, La/a/b/o/b;->a(I)V

    goto/16 :goto_8

    :cond_6
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 25
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-eqz p1, :cond_14

    .line 26
    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, La/a/b/n/s;->C0()La/a/b/n/s;

    move-result-object v5

    goto :goto_4

    :pswitch_2
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1}, La/a/a/a/c;->v()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 27
    sget-object v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 29
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-eqz p1, :cond_14

    .line 30
    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 31
    sget-object v5, La/a/b/n/w;->Z:La/a/b/n/w;

    if-nez v5, :cond_8

    new-instance v5, La/a/b/n/w;

    invoke-direct {v5}, La/a/b/n/w;-><init>()V

    sput-object v5, La/a/b/n/w;->Z:La/a/b/n/w;

    :cond_8
    sget-object v5, La/a/b/n/w;->Z:La/a/b/n/w;

    goto :goto_4

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 33
    sget-object v5, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 35
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-nez p1, :cond_a

    goto/16 :goto_8

    .line 36
    :cond_a
    sget-object v5, La/a/b/n/u;->Z:La/a/b/n/u;

    if-nez v5, :cond_b

    new-instance v5, La/a/b/n/u;

    invoke-direct {v5}, La/a/b/n/u;-><init>()V

    sput-object v5, La/a/b/n/u;->Z:La/a/b/n/u;

    :cond_b
    sget-object v5, La/a/b/n/u;->Z:La/a/b/n/u;

    goto :goto_4

    .line 37
    :cond_c
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1, v3}, Lcom/baidu/carlifevehicle/CarlifeActivity;->g1(Z)V

    goto/16 :goto_8

    :cond_d
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 40
    iget-object p1, p1, Lcom/baidu/carlifevehicle/CarlifeActivity;->w:La/a/b/n/k;

    if-eqz p1, :cond_14

    .line 41
    invoke-static {p1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    goto :goto_3

    :goto_4
    invoke-virtual {p1, v5}, La/a/b/n/k;->a(La/a/b/n/g;)V

    goto/16 :goto_8

    :cond_e
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, La/a/b/r/a;->a:Z

    if-eqz p1, :cond_f

    .line 43
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->c1()V

    goto :goto_8

    :cond_f
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    .line 44
    iget p1, p1, La/a/b/r/a;->D:I

    const/4 v6, 0x5

    if-lt p1, v6, :cond_10

    const/4 p1, 0x1

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_12

    new-array p1, v3, [Ljava/lang/Object;

    const-string v6, "read conf again"

    aput-object v6, p1, v4

    .line 45
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v6, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v6, :cond_11

    goto :goto_6

    .line 47
    :cond_11
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v6, v7, v2, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_6
    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    .line 49
    iget v6, p1, La/a/b/r/a;->D:I

    add-int/2addr v6, v3

    iput v6, p1, La/a/b/r/a;->D:I

    new-instance v6, La/a/b/r/a$a;

    invoke-direct {v6, p1}, La/a/b/r/a$a;-><init>(La/a/b/r/a;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-wide/16 v6, 0x1f4

    .line 50
    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_12
    iget-object p1, p0, Lcom/baidu/carlifevehicle/CarlifeActivity$a;->b:Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-static {p1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->Z0(Lcom/baidu/carlifevehicle/CarlifeActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "handle message exception"

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    .line 51
    invoke-static {v2, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    const/4 v1, 0x6

    .line 53
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x7d4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
