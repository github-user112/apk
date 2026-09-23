.class public final synthetic Ll8/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll8/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Ll8/k;->b:I

    .line 7
    .line 8
    iput p3, p0, Ll8/k;->c:I

    .line 9
    .line 10
    iput p4, p0, Ll8/k;->d:I

    .line 11
    .line 12
    iput p5, p0, Ll8/k;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Ll8/n;->b:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    iget-object v1, p0, Ll8/k;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v2, p0, Ll8/k;->b:I

    .line 14
    .line 15
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 16
    .line 17
    iget v2, p0, Ll8/k;->c:I

    .line 18
    .line 19
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 20
    .line 21
    iget v2, p0, Ll8/k;->d:I

    .line 22
    .line 23
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 24
    .line 25
    iget v2, p0, Ll8/k;->e:I

    .line 26
    .line 27
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 28
    .line 29
    sget-object v2, Ll8/n;->a:Lr8/o;

    .line 30
    .line 31
    invoke-virtual {v2}, Lr8/o;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/WindowManager;

    .line 36
    .line 37
    sget-object v3, Ll8/n;->c:Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/view/View;

    .line 44
    .line 45
    invoke-interface {v2, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/baidu/carlife/sdk/util/Logger;->Companion:Lcom/baidu/carlife/sdk/util/Logger$Companion;

    .line 50
    .line 51
    const-string v2, "\u3010\u60ac\u6d6e\u6a21\u5757\u3011updateFloatView\u627e\u4e0d\u5230layoutParams key="

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x1

    .line 58
    new-array v2, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    aput-object v1, v2, v3

    .line 62
    .line 63
    const-string v1, "CarLife_Vehicle"

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/baidu/carlife/sdk/util/Logger$Companion;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
