.class public La/a/b/n/s$c;
.super La/a/b/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/n/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:La/a/b/n/s;


# direct methods
.method public constructor <init>(La/a/b/n/s;La/a/b/n/s$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    invoke-direct {p0}, La/a/b/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3fb

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f1

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f2

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f4

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3ef

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f7

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f9

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f3

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3fc

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x3f6

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const/16 v0, 0x7da

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    const v0, 0x18009

    invoke-virtual {p0, v0}, La/a/b/o/a;->a(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MsgMainFragmentHandler handleMessage get msg: "

    invoke-static {v2}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, La/a/b/r/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainFragment"

    invoke-static {v2, v1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x3ea

    const v5, 0x7f0e009f

    const v6, 0x7f08005d

    const/16 v7, 0x8

    if-eq v1, v4, :cond_9

    const/16 v4, 0x3ec

    if-eq v1, v4, :cond_8

    const/16 v4, 0x3f6

    if-eq v1, v4, :cond_6

    const/16 p1, 0x41c

    if-eq v1, p1, :cond_5

    const/16 p1, 0x7da

    if-eq v1, p1, :cond_4

    const p1, 0x18009

    if-eq v1, p1, :cond_3

    const/16 p1, 0x3fb

    if-eq v1, p1, :cond_2

    const/16 p1, 0x3fc

    if-eq v1, p1, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 1
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 2
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 3
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    const v1, 0x7f0e00a4

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 5
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 6
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 7
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 9
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 10
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 11
    iget-object p1, p1, La/a/b/n/s;->e0:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 13
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    const v1, 0x7f0e00a2

    .line 14
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 15
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 16
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 17
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 19
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 20
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 21
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 22
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 23
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    const v1, 0x7f0e00a1

    .line 24
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 25
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 26
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f08007a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 27
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 28
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 29
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    const v1, 0x7f0e00a0

    .line 30
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 31
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 32
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 33
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_3
    sget-object p1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 35
    iget-object v1, v1, La/a/b/n/s;->r0:Ljava/lang/Runnable;

    goto/16 :goto_5

    .line 36
    :cond_3
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 37
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 38
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 39
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 40
    invoke-virtual {p1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->a()V

    goto/16 :goto_6

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "showFragment(HelpMainFragment.getInstance()"

    aput-object v1, p1, v3

    invoke-static {v2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    if-eqz p1, :cond_a

    invoke-static {}, La/a/b/n/q;->C0()La/a/b/n/q;

    move-result-object v1

    invoke-virtual {p1, v1}, La/a/b/n/k;->a(La/a/b/n/g;)V

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 41
    iget-boolean v1, p1, La/a/b/n/s;->m0:Z

    if-eqz v1, :cond_a

    .line 42
    iput-boolean v3, p1, La/a/b/n/s;->m0:Z

    .line 43
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 44
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 45
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 46
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 47
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 49
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "ChangeUI:: MSG_FRAGMENT_REFRESH  AoaNotSupportADBNotOpen "

    aput-object v1, p1, v3

    invoke-static {v2, p1}, La/a/a/a/n/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    iget p1, p1, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 51
    iget-object v1, v1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 52
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 53
    iget-object v1, v1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 55
    iget-object v1, v1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 56
    invoke-virtual {v1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->b()V

    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 57
    iget-object v1, v1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 58
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 59
    iget-object v1, v1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 60
    invoke-virtual {v1, p1}, Lcom/baidu/carlifevehicle/view/LoadingProgressBar;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_2
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "set progress number error"

    aput-object v4, v1, v3

    invoke-static {v2, v1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_8
    sget-object v5, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 61
    iget-object p1, p1, La/a/b/n/s;->q0:Ljava/lang/Runnable;

    .line 62
    invoke-virtual {v5, p1}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 63
    iget-object v6, p1, La/a/b/n/s;->r0:Ljava/lang/Runnable;

    .line 64
    sget p1, La/a/b/n/s;->Z:I

    int-to-long v9, p1

    move-wide v7, v9

    invoke-virtual/range {v5 .. v10}, La/a/a/a/n/h;->b(Ljava/lang/Runnable;JJ)V

    goto :goto_6

    :cond_9
    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 65
    iget-object p1, p1, La/a/b/n/s;->c0:Lcom/baidu/carlifevehicle/view/LoadingProgressBar;

    .line 66
    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 67
    iget-object p1, p1, La/a/b/n/s;->j0:Landroid/widget/RelativeLayout;

    .line 68
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 69
    iget-object p1, p1, La/a/b/n/s;->d0:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 71
    iget-object v1, p1, La/a/b/n/s;->b0:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p1}, Lb/h/b/m;->v()Landroid/content/res/Resources;

    move-result-object p1

    goto/16 :goto_0

    :goto_4
    sget-object p1, La/a/a/a/n/h;->a:La/a/a/a/n/h;

    iget-object v1, p0, La/a/b/n/s$c;->b:La/a/b/n/s;

    .line 73
    iget-object v1, v1, La/a/b/n/s;->q0:Ljava/lang/Runnable;

    .line 74
    :goto_5
    invoke-virtual {p1, v1}, La/a/a/a/n/h;->c(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "change main fragment get exception"

    aput-object v0, p1, v3

    invoke-static {v2, p1}, La/a/a/a/n/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
