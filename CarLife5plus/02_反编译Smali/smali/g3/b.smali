.class public final Lg3/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# static fields
.field public static final b:Lg3/b;

.field public static final c:Lg3/b;

.field public static final d:Lg3/b;

.field public static final e:Lg3/b;

.field public static final f:Lg3/b;

.field public static final g:Lg3/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg3/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lg3/b;->b:Lg3/b;

    .line 9
    .line 10
    new-instance v0, Lg3/b;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lg3/b;->c:Lg3/b;

    .line 17
    .line 18
    new-instance v0, Lg3/b;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lg3/b;->d:Lg3/b;

    .line 25
    .line 26
    new-instance v0, Lg3/b;

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lg3/b;->e:Lg3/b;

    .line 33
    .line 34
    new-instance v0, Lg3/b;

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lg3/b;->f:Lg3/b;

    .line 41
    .line 42
    new-instance v0, Lg3/b;

    .line 43
    .line 44
    const/4 v2, 0x5

    .line 45
    invoke-direct {v0, v1, v2}, Lg3/b;-><init>(II)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lg3/b;->g:Lg3/b;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lg3/b;->a:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lg3/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lg3/j;

    .line 7
    .line 8
    iget p1, p1, Lg3/j;->a:I

    .line 9
    .line 10
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_1
    check-cast p1, Lg3/j;

    .line 19
    .line 20
    iget p1, p1, Lg3/j;->a:I

    .line 21
    .line 22
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_2
    check-cast p1, Ljava/util/List;

    .line 26
    .line 27
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_3
    check-cast p1, Ly1/a0;

    .line 31
    .line 32
    iget-object p1, p1, Ly1/a0;->a:[F

    .line 33
    .line 34
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_4
    check-cast p1, Ly1/a0;

    .line 38
    .line 39
    iget-object p1, p1, Ly1/a0;->a:[F

    .line 40
    .line 41
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 42
    .line 43
    return-object p1

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
