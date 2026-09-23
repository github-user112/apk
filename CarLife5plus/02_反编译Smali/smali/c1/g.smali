.class public final Lc1/g;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lc1/g;

.field public static final c:Lc1/g;

.field public static final d:Lc1/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc1/g;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lc1/g;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lc1/g;->b:Lc1/g;

    .line 9
    .line 10
    new-instance v0, Lc1/g;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lc1/g;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lc1/g;->c:Lc1/g;

    .line 17
    .line 18
    new-instance v0, Lc1/g;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lc1/g;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lc1/g;->d:Lc1/g;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lc1/g;->a:I

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
    .locals 4

    .line 1
    iget v0, p0, Lc1/g;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ly2/j;

    .line 9
    .line 10
    sget-object v0, Ly2/t;->a:[Lm9/u;

    .line 11
    .line 12
    sget-object v0, Ly2/r;->l:Ly2/u;

    .line 13
    .line 14
    sget-object v2, Ly2/t;->a:[Lm9/u;

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    aget-object v2, v2, v3

    .line 18
    .line 19
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v2}, Ly2/u;->a(Ly2/j;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :pswitch_0
    check-cast p1, Ly2/j;

    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_1
    check-cast p1, Ly2/j;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Ly2/t;->b(Ly2/j;I)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
