.class public final Lb4/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb4/b;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb4/b;->b:I

    iput-object p2, p0, Lb4/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lb4/b;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, Lc7/a;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lb4/b;->c:Ljava/lang/Object;

    .line 6
    iput p2, p0, Lb4/b;->b:I

    return-void
.end method

.method public constructor <init>(Lv/a1;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb4/b;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4/b;->c:Ljava/lang/Object;

    iput p2, p0, Lb4/b;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lb4/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb4/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v2, p0, Lb4/b;->b:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    :goto_0
    if-ge v4, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ll4/h;

    .line 27
    .line 28
    invoke-virtual {v2}, Ll4/h;->a()V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ll4/h;

    .line 41
    .line 42
    invoke-virtual {v2}, Ll4/h;->b()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return-void

    .line 49
    :pswitch_0
    const/4 v0, 0x0

    .line 50
    :goto_2
    iget v1, p0, Lb4/b;->b:I

    .line 51
    .line 52
    if-ge v0, v1, :cond_2

    .line 53
    .line 54
    iget-object v1, p0, Lb4/b;->c:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Runnable;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    return-void

    .line 73
    :pswitch_1
    iget-object v0, p0, Lb4/b;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lv/a1;

    .line 76
    .line 77
    iget-object v0, v0, Lv/a1;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v0, Ld3/e;

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
