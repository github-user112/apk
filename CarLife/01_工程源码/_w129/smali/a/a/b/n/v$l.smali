.class public La/a/b/n/v$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/v;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/hardware/usb/UsbManager;

.field public final synthetic e:La/a/b/n/v;


# direct methods
.method public constructor <init>(La/a/b/n/v;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/UsbManager;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/v$l;->e:La/a/b/n/v;

    iput-object p2, p0, La/a/b/n/v$l;->b:Ljava/lang/String;

    iput-object p3, p0, La/a/b/n/v$l;->c:Ljava/lang/String;

    iput-object p4, p0, La/a/b/n/v$l;->d:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, La/a/b/n/v$l;->b:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "USBSBHLPID"

    const-string v2, "USBSBHLVID"

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, La/a/b/n/v$l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, La/a/b/n/v$l;->d:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object p1, p0, La/a/b/n/v$l;->e:La/a/b/n/v;

    invoke-virtual {p1}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6ca1\u6709USB\u8bbe\u5907\u63a5\u5165,\u65e0\u9700\u5ffd\u7565"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbDevice;

    invoke-static {v5}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, La/a/b/n/v$l;->e:La/a/b/n/v;

    invoke-virtual {v0}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6709"

    invoke-static {v1}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2aUSB\u8bbe\u5907\u63a5\u5165,\u6210\u529f\u5ffd\u7565"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    invoke-virtual {p1, v2}, La/a/a/a/l/a;->i(Ljava/lang/String;)Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    invoke-virtual {p1, v1}, La/a/a/a/l/a;->i(Ljava/lang/String;)Z

    iget-object p1, p0, La/a/b/n/v$l;->e:La/a/b/n/v;

    invoke-virtual {p1}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u53d6\u6d88\u5ffd\u7565\u6210\u529f"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/a/l/a;->k()V

    return-void
.end method
