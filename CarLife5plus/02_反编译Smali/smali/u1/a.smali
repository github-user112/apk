.class public final Lu1/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lu1/b;


# instance fields
.field public final a:Lu1/d;

.field public final b:Ls/g;

.field public final c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lu1/d;

    .line 5
    .line 6
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 7
    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, v0, Lu1/d;->q:J

    .line 12
    .line 13
    iput-object v0, p0, Lu1/a;->a:Lu1/d;

    .line 14
    .line 15
    new-instance v0, Ls/g;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Ls/g;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lu1/a;->b:Ls/g;

    .line 22
    .line 23
    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;-><init>(Lu1/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lu1/a;->c:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    .line 1
    new-instance p1, Lkb/a;

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lkb/a;-><init>(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    sget-object v0, Lq2/c2;->a:Lq2/c2;

    .line 13
    .line 14
    iget-object v1, p0, Lu1/a;->b:Ls/g;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Lu1/a;->a:Lu1/d;

    .line 18
    .line 19
    packed-switch p2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :pswitch_0
    invoke-virtual {v3, p1}, Lu1/d;->C0(Lkb/a;)V

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :pswitch_1
    invoke-virtual {v3, p1}, Lu1/d;->B0(Lkb/a;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :pswitch_2
    new-instance p2, Lb2/a;

    .line 32
    .line 33
    const/16 v4, 0x12

    .line 34
    .line 35
    invoke-direct {p2, v4, p1}, Lb2/a;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v3}, Lb2/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-eq p1, v0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3, p2}, Lq2/f;->A(Lq2/d2;Lf9/k;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1}, Ls/g;->clear()V

    .line 49
    .line 50
    .line 51
    return v2

    .line 52
    :pswitch_3
    invoke-virtual {v3, p1}, Lu1/d;->A0(Lkb/a;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1

    .line 57
    :pswitch_4
    invoke-virtual {v3, p1}, Lu1/d;->D0(Lkb/a;)V

    .line 58
    .line 59
    .line 60
    return v2

    .line 61
    :pswitch_5
    new-instance p2, Lg9/t;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v2, Lk2/f;

    .line 67
    .line 68
    invoke-direct {v2, p1, v3, p2}, Lk2/f;-><init>(Lkb/a;Lu1/d;Lg9/t;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Lk2/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eq v4, v0, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v3, v2}, Lq2/f;->A(Lq2/d2;Lf9/k;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iget-boolean p2, p2, Lg9/t;->a:Z

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v0, Ls/b;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ls/b;-><init>(Ls/g;)V

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {v0}, Ls/b;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    invoke-virtual {v0}, Ls/b;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lu1/d;

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Lu1/d;->E0(Lkb/a;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    return p2

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
