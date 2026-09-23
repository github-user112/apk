.class public final synthetic La/a/b/n/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:La/a/b/n/m;


# direct methods
.method public synthetic constructor <init>(La/a/b/n/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/n/b;->a:La/a/b/n/m;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object p1, p0, La/a/b/n/b;->a:La/a/b/n/m;

    .line 1
    sget-object v0, La/a/b/n/m;->Z:La/a/b/n/m;

    const-string v0, "this$0"

    .line 2
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CarlifeConnectType"

    const/4 v1, 0x2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    const/4 p2, 0x5

    invoke-interface {p1, p2}, La/a/a/a/m/c;->i(I)V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, La/a/b/r/d;->d(Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, La/a/a/a/m/b;->b()La/a/a/a/m/c;

    move-result-object p1

    invoke-interface {p1, v1}, La/a/a/a/m/c;->i(I)V

    invoke-static {}, La/a/b/r/d;->a()La/a/b/r/d;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, La/a/b/r/d;->d(Ljava/lang/String;I)Z

    goto :goto_0

    .line 3
    :pswitch_2
    new-instance p2, La/d/a/a;

    invoke-direct {p2, p1}, La/d/a/a;-><init>(Lb/h/b/m;)V

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    .line 4
    invoke-virtual {p2, v0}, La/d/a/a;->a([Ljava/lang/String;)La/d/a/f/i;

    move-result-object p2

    sget-object v0, La/a/b/n/e;->a:La/a/b/n/e;

    .line 5
    iput-object v0, p2, La/d/a/f/i;->p:La/d/a/c/a;

    .line 6
    new-instance v0, La/a/b/n/c;

    invoke-direct {v0, p1}, La/a/b/n/c;-><init>(La/a/b/n/m;)V

    invoke-virtual {p2, v0}, La/d/a/f/i;->e(La/d/a/c/b;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
