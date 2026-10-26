.class public Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# instance fields
.field public final a:Ld/l/c;

.field public final b:Ld/l/f;


# direct methods
.method public constructor <init>(Ld/l/c;Ld/l/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Ld/l/f;

    return-void
.end method


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->b(Ld/l/h;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->g(Ld/l/h;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->e(Ld/l/h;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->a(Ld/l/h;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->f(Ld/l/h;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Ld/l/c;

    invoke-interface {v0, p1}, Ld/l/c;->c(Ld/l/h;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Ld/l/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ld/l/f;->d(Ld/l/h;Ld/l/e$a;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
