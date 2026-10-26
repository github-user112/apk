.class public Lf/a/k/g0$b;
.super Lf/a/k/d0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lf/a/k/g0;


# direct methods
.method public constructor <init>(Lf/a/k/g0;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/g0$b;->c:Lf/a/k/g0;

    invoke-direct {p0}, Lf/a/k/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lf/a/k/g0$b;->c:Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->u0()V

    iget-object p1, p0, Lf/a/k/g0$b;->c:Lf/a/k/g0;

    iget-object p1, p1, Lf/a/k/g0;->u:Lf/a/i/j/c;

    if-eqz p1, :cond_0

    const v0, 0x13880

    const/4 v1, 0x3

    const-string v2, "EC_MAIN_TO_ABOUT"

    invoke-virtual {p1, v0, v1, v2}, Lf/a/i/j/c;->a(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lf/a/k/g0$b;->c:Lf/a/k/g0;

    invoke-virtual {p1}, Lf/a/k/g0;->l0()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090077
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
