.class public final Lp9/c1;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lp9/e1;


# direct methods
.method public synthetic constructor <init>(Lp9/e1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp9/c1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp9/c1;->b:Lp9/e1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lp9/c1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp9/c1;->b:Lp9/e1;

    .line 7
    .line 8
    invoke-virtual {v0}, Lp9/o1;->p()Ljava/lang/reflect/Member;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_0
    new-instance v0, Lp9/d1;

    .line 14
    .line 15
    iget-object v1, p0, Lp9/c1;->b:Lp9/e1;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lp9/d1;-><init>(Lp9/e1;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
