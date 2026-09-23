.class public final Lq3/g;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# static fields
.field public static final b:Lq3/g;

.field public static final c:Lq3/g;

.field public static final d:Lq3/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq3/g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lq3/g;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lq3/g;->b:Lq3/g;

    .line 9
    .line 10
    new-instance v0, Lq3/g;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lq3/g;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lq3/g;->c:Lq3/g;

    .line 17
    .line 18
    new-instance v0, Lq3/g;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lq3/g;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lq3/g;->d:Lq3/g;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lq3/g;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lq3/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_1
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
