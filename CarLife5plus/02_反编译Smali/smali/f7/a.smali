.class public final Lf7/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# static fields
.field public static final b:Lf7/a;

.field public static final c:Lf7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lf7/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lf7/a;->b:Lf7/a;

    .line 8
    .line 9
    new-instance v0, Lf7/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lf7/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lf7/a;->c:Lf7/a;

    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf7/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lf7/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/s;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    and-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-ne p2, v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    sget-object p2, Lf7/b;->a:Ln1/c;

    .line 31
    .line 32
    const/16 v0, 0x180

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v1, p2, p1, v0}, Lk8/c;->a(ZLn1/c;Lf1/s;I)V

    .line 36
    .line 37
    .line 38
    :goto_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 39
    .line 40
    return-object p1

    .line 41
    :pswitch_0
    check-cast p1, Lf1/s;

    .line 42
    .line 43
    check-cast p2, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    and-int/lit8 p2, p2, 0x3

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    if-ne p2, v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lf1/s;->z()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_2

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p1}, Lf1/s;->Q()V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    sget-object p2, Lx7/f;->a:Lx7/f;

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    invoke-virtual {p2, v0, p1}, Lx7/f;->a(ILf1/s;)V

    .line 69
    .line 70
    .line 71
    :goto_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 72
    .line 73
    return-object p1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
