.class public final Lf1/s2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf1/s1;


# direct methods
.method public synthetic constructor <init>(Lf1/s1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lf1/s2;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/s2;->b:Lf1/s1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p2, p0, Lf1/s2;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lf1/s2;->b:Lf1/s1;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lf1/s1;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_0
    iget-object p2, p0, Lf1/s2;->b:Lf1/s1;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lf1/s1;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
