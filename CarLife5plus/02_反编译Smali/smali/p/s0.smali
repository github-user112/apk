.class public final Lp/s0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lp/s0;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lp/s0;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p4, p0, Lp/s0;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput p1, p0, Lp/s0;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lp/s0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp/s0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Ljava/lang/String;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    iget-object v2, p0, Lp/s0;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/app/Activity;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    array-length v5, v0

    .line 26
    const/4 v6, 0x0

    .line 27
    :goto_0
    if-ge v6, v5, :cond_0

    .line 28
    .line 29
    aget-object v7, v0, v6

    .line 30
    .line 31
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    aput v7, v1, v6

    .line 36
    .line 37
    add-int/lit8 v6, v6, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    check-cast v2, Lu3/b;

    .line 41
    .line 42
    iget v3, p0, Lp/s0;->b:I

    .line 43
    .line 44
    invoke-interface {v2, v3, v0, v1}, Lu3/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lp/s0;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iget-object v1, p0, Lp/s0;->d:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v1, Landroid/graphics/Typeface;

    .line 55
    .line 56
    iget v2, p0, Lp/s0;->b:I

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
