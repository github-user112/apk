.class public La/a/b/n/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:[I

.field public final synthetic c:La/a/b/n/h;


# direct methods
.method public constructor <init>(La/a/b/n/h;[I)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$a;->c:La/a/b/n/h;

    iput-object p2, p0, La/a/b/n/h$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    const-string p2, "LOGCAT_JT_KG"

    invoke-virtual {p1, p2, p3}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    iget-object p1, p0, La/a/b/n/h$a;->b:[I

    const/4 p2, 0x0

    aget p1, p1, p2

    if-eq p3, p1, :cond_0

    new-instance p1, La/a/b/s/b;

    .line 1
    sget-object p4, La/a/b/n/g;->V:Lcom/baidu/carlifevehicle/CarlifeActivity;

    .line 2
    invoke-direct {p1, p4}, La/a/b/s/b;-><init>(Landroid/app/Activity;)V

    const-string p4, "\u63d0\u793a"

    invoke-virtual {p1, p4}, La/a/b/s/b;->k(Ljava/lang/String;)La/a/b/s/b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u8bbe\u7f6e\u4fee\u6539\u5b8c\u6210,\u91cd\u65b0\u542f\u52a8\u5e94\u7528\u751f\u6548,\u662f\u5426\u5173\u95ed\u5e94\u7528!\u529f\u80fd\u9700\u8981adb\u6267\u884c adb shell pm grant "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, La/a/b/n/h$a;->c:La/a/b/n/h;

    invoke-virtual {p5}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " android.permission.READ_LOGS  \u547d\u4ee4\u624d\u80fd\u4f7f\u7528"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, La/a/b/s/b;->i(Ljava/lang/String;)La/a/b/s/b;

    const p4, 0x7f0e001e

    invoke-virtual {p1, p4}, La/a/b/s/b;->f(I)La/a/b/s/b;

    invoke-virtual {p1}, La/a/b/s/b;->h()La/a/b/s/b;

    new-instance p4, La/a/b/n/h$a$a;

    invoke-direct {p4, p0}, La/a/b/n/h$a$a;-><init>(La/a/b/n/h$a;)V

    .line 3
    iput-object p4, p1, La/a/b/s/a;->f:La/a/b/s/a$c;

    const p4, 0x7f0e001d

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, La/a/b/s/b;->c(Ljava/lang/String;)La/a/b/s/a;

    .line 5
    new-instance p4, La/a/b/n/h$a$b;

    invoke-direct {p4, p0}, La/a/b/n/h$a$b;-><init>(La/a/b/n/h$a;)V

    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p4

    if-nez p4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, La/a/b/n/h$a;->b:[I

    aput p3, p1, p2

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
