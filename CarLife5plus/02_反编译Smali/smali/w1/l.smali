.class public final Lw1/l;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lw1/l;

.field public static final c:Lw1/l;

.field public static final d:Lw1/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw1/l;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lw1/l;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lw1/l;->b:Lw1/l;

    .line 9
    .line 10
    new-instance v0, Lw1/l;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lw1/l;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lw1/l;->c:Lw1/l;

    .line 17
    .line 18
    new-instance v0, Lw1/l;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lw1/l;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lw1/l;->d:Lw1/l;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lw1/l;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw1/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1/s;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    invoke-virtual {p1, v0}, Lw1/s;->E0(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :pswitch_0
    check-cast p1, Lw1/s;

    .line 19
    .line 20
    const/4 v0, 0x7

    .line 21
    invoke-virtual {p1, v0}, Lw1/s;->E0(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :pswitch_1
    check-cast p1, Lw1/a;

    .line 31
    .line 32
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_2
    check-cast p1, Lw1/a;

    .line 36
    .line 37
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 38
    .line 39
    return-object p1

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
