.class public La/a/b/n/q$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/q;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/b/n/q;


# direct methods
.method public constructor <init>(La/a/b/n/q;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/q$d;->b:La/a/b/n/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, La/a/b/n/q$d;->b:La/a/b/n/q;

    invoke-virtual {v0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, La/a/b/n/q$d;->b:La/a/b/n/q;

    invoke-virtual {p1}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u65e0\u969c\u788d\u8bbe\u7f6e\u6253\u5f00\u62a5\u9519,\u68c0\u67e5\u8f66\u673a\u7cfb\u7edf\u662f\u5426\u6709\u8fd9\u4e2a\u529f\u80fd!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
