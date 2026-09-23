.class public final Lm7/e0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final synthetic a:Lg9/x;

.field public final synthetic b:Lf9/k;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lg9/x;Lf9/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm7/e0;->a:Lg9/x;

    .line 5
    .line 6
    iput-object p2, p0, Lm7/e0;->b:Lf9/k;

    .line 7
    .line 8
    iput p3, p0, Lm7/e0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u65e0\u6cd5\u641c\u7d22\u9644\u8fd1\u8bbe\u5907(\u9519\u8bef\u7801:"

    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "\u7cfb\u7edf\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string p1, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301WLAN\u76f4\u8fde"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string p1, "\u64cd\u4f5c\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    .line 25
    .line 26
    :goto_0
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onSuccess()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lm7/e0;->a:Lg9/x;

    .line 3
    .line 4
    iget-object v1, v1, Lg9/x;->b:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x21

    .line 11
    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    sget-object v1, Ll8/c;->a:Lfc/c;

    .line 15
    .line 16
    const-string v1, "\u672a\u83b7\u53d6\u5230\u76f4\u8fde\u540d\u79f0\uff0c\u53ef\u80fd\u4e0d\u652f\u6301"

    .line 17
    .line 18
    invoke-static {v0, v1}, Ll8/c;->g(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lm7/e0;->b:Lf9/k;

    .line 25
    .line 26
    iget v2, p0, Lm7/e0;->c:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :goto_1
    sget-object v2, Ll8/c;->a:Lfc/c;

    .line 37
    .line 38
    const-string v2, "\u5f53\u524d\u8bbe\u5907\u4e0d\u652f\u6301WLAN\u76f4\u8fde"

    .line 39
    .line 40
    invoke-static {v0, v2}, Ll8/c;->g(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x1

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    aput-object v1, v3, v0

    .line 53
    .line 54
    const-string v0, "ConnectFeature"

    .line 55
    .line 56
    invoke-virtual {v2, v0, v3}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
