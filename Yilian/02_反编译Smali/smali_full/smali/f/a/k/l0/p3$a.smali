.class public Lf/a/k/l0/p3$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/l0/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Lf/a/k/l0/p3;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lf/a/k/l0/p3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/p3$a;->a:Z

    iput-boolean v0, p0, Lf/a/k/l0/p3$a;->b:Z

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/a/k/l0/p3;

    iput-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/k/l0/p3$a;->a:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v0, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MirrorHandler weakReference = null, return"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MirrorHandler what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " begin"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    const-wide/16 v4, 0x1f4

    const/4 v2, 0x0

    const-string v6, "input_method"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_5

    if-eq v0, v7, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p1, "hideKeyboard MSG_HIDE isKeyBoardHiding = "

    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v9, p0, Lf/a/k/l0/p3$a;->a:Z

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lf/a/k/l0/p3$a;->a:Z

    if-nez p1, :cond_c

    iput-boolean v8, p0, Lf/a/k/l0/p3$a;->a:Z

    .line 1
    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v1, p1, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1, v1}, Lf/a/k/l0/p3;->N(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string p1, "hideKeyboardExecute isShow = false, return"

    goto :goto_0

    :cond_2
    iget-object v8, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    if-eqz v8, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const-string p1, "hideKeyboard end"

    :goto_0
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 3
    :cond_3
    new-instance p1, Lf/a/k/l0/s0;

    invoke-direct {p1, p0}, Lf/a/k/l0/s0;-><init>(Lf/a/k/l0/p3$a;)V

    iget-object v1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    if-eqz v1, :cond_4

    goto/16 :goto_2

    .line 4
    :cond_4
    throw v2

    :cond_5
    const-string v9, "showKeyboard MSG_SHOW isKeyBoardShowing = "

    .line 5
    invoke-static {v9}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lf/a/k/l0/p3$a;->b:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v9, v10}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v9, p0, Lf/a/k/l0/p3$a;->b:Z

    if-nez v9, :cond_c

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    iget v10, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->inputType:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    iget v10, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->imeOptions:I

    const/high16 v11, 0x2000000

    or-int/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    iget v10, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->minLines:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setMinLines(I)V

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    iget v10, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->maxLines:I

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    new-array v10, v8, [Landroid/text/InputFilter;

    new-instance v11, Landroid/text/InputFilter$LengthFilter;

    iget v12, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->maxLength:I

    invoke-direct {v11, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v11, v10, v1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v9, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v9, v9, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    iget-object v10, p1, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->rawText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MirrorFragment onInputStart ecInputInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/easyconn/ecsdk/ECTypes$ECInputInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object p1, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object p1, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {p1, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object p1, p1, Lf/a/k/l0/p3;->e:Lnet/easyconn/ui/widget/EcEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iput-boolean v8, p0, Lf/a/k/l0/p3$a;->b:Z

    .line 6
    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v8, p1, Lf/a/k/l0/p3;->r:Landroid/app/Activity;

    .line 7
    invoke-virtual {p1, v8}, Lf/a/k/l0/p3;->N(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "showKeyboardExecute isShow = true, return"

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    const-string p1, "showKeyboard end"

    :goto_1
    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    .line 8
    :cond_7
    new-instance p1, Lf/a/k/l0/p3$a$a;

    invoke-direct {p1, p0}, Lf/a/k/l0/p3$a$a;-><init>(Lf/a/k/l0/p3$a;)V

    iget-object v1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    if-eqz v1, :cond_8

    :goto_2
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 9
    :cond_8
    throw v2

    .line 10
    :cond_9
    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object p1, p1, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    .line 11
    iget-object v2, p1, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    .line 12
    iget-object p1, p1, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    instance-of p1, p1, Lf/a/i/n/a;

    if-eqz p1, :cond_a

    const-string p1, "soft"

    goto :goto_3

    :cond_a
    const-string p1, "hard"

    :goto_3
    iget-object v2, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    .line 13
    iget-object v2, v2, Lf/a/k/l0/p3;->B:Landroid/widget/TextView;

    .line 14
    invoke-static {p1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v4, p0, Lf/a/k/l0/p3$a;->c:Lf/a/k/l0/p3;

    iget-object v4, v4, Lf/a/k/l0/p3;->f:Lf/a/i/o/a;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method
