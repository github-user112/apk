.class public final Lcom/muyetuge/carlifevehicle/service/AccessService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/muyetuge/carlifevehicle/service/AccessService;",
        "Landroid/accessibilityservice/AccessibilityService;",
        "<init>",
        "()V",
        "i8/a",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final e:Ldc/l0;

.field public static final f:Lr8/o;


# instance fields
.field public final a:Lac/l1;

.field public final b:Lfc/c;

.field public final c:Ljc/c;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Ldc/b0;->b(Ljava/lang/Object;)Ldc/l0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 8
    .line 9
    new-instance v0, Lb3/f0;

    .line 10
    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lb3/f0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lr8/a;->d(Lf9/a;)Lr8/o;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/muyetuge/carlifevehicle/service/AccessService;->f:Lr8/o;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lac/z;->b()Lac/l1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/muyetuge/carlifevehicle/service/AccessService;->a:Lac/l1;

    .line 9
    .line 10
    sget-object v1, Lac/g0;->a:Lhc/e;

    .line 11
    .line 12
    sget-object v1, Lfc/m;->a:Lbc/d;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Lp9/x1;->I(Lw8/f;Lw8/h;)Lw8/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lac/z;->a(Lw8/h;)Lfc/c;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/muyetuge/carlifevehicle/service/AccessService;->b:Lfc/c;

    .line 26
    .line 27
    new-instance v0, Ljc/c;

    .line 28
    .line 29
    invoke-direct {v0}, Ljc/c;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/muyetuge/carlifevehicle/service/AccessService;->c:Ljc/c;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_2

    .line 4
    .line 5
    :cond_0
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->getConnectionType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    invoke-static {}, Lcom/baidu/carlife/sdk/receiver/CarLife;->receiver()Lcom/baidu/carlife/sdk/receiver/CarLifeReceiver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lcom/baidu/carlife/sdk/CarLifeContext;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "android"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x3

    .line 41
    iget-object v2, p0, Lcom/muyetuge/carlifevehicle/service/AccessService;->b:Lfc/c;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/16 v0, 0x20

    .line 57
    .line 58
    if-ne p1, v0, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    const-string v0, "\u63a5\u53d7"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 89
    .line 90
    new-instance v4, Lb8/g;

    .line 91
    .line 92
    const/16 v5, 0xd

    .line 93
    .line 94
    invoke-direct {v4, v0, v3, v5}, Lb8/g;-><init>(Ljava/lang/Object;Lw8/c;I)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3, v4, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string v0, "com.android.systemui"

    .line 106
    .line 107
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    const-string v0, "\u786e\u5b9a"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_4

    .line 126
    .line 127
    invoke-static {p1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move-object p1, v3

    .line 135
    :goto_1
    if-eqz p1, :cond_5

    .line 136
    .line 137
    new-instance v0, Li8/b;

    .line 138
    .line 139
    invoke-direct {v0, p0, p1, v3}, Li8/b;-><init>(Lcom/muyetuge/carlifevehicle/service/AccessService;Landroid/view/accessibility/AccessibilityNodeInfo;Lw8/c;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3, v0, v1}, Lac/z;->r(Lac/w;Lw8/h;Lf9/n;I)Lac/j1;

    .line 143
    .line 144
    .line 145
    :cond_5
    :goto_2
    return-void
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    sget-object v1, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    .line 6
    sget-object v1, Lcom/muyetuge/carlifevehicle/service/AccessService;->e:Ldc/l0;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2, v0}, Ldc/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/muyetuge/carlifevehicle/service/AccessService;->a:Lac/l1;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lac/c1;->a(Ljava/util/concurrent/CancellationException;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    .line 1
    invoke-static {}, Li8/a;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
