.class public final Lq9/v;
.super Lq9/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lq9/v;->g:I

    const-string v0, "method"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lq9/q;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Method;ZII)V
    .locals 0

    .line 1
    iput p4, p0, Lq9/v;->g:I

    invoke-direct {p0, p1, p2, p3}, Lq9/q;-><init>(Ljava/lang/reflect/Method;ZI)V

    return-void
.end method


# virtual methods
.method public final t([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lq9/v;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Lp9/q;->l(Lq9/g;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Lq9/q;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_0
    const-string v0, "args"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lp9/q;->l(Lq9/g;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ls8/l;->X([Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lq9/w;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    array-length v0, p1

    .line 36
    const/4 v1, 0x1

    .line 37
    if-gt v0, v1, :cond_0

    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    new-array p1, p1, [Ljava/lang/Object;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length v0, p1

    .line 44
    invoke-static {p1, v1, v0}, Ls8/l;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, v0, p1}, Lq9/q;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :pswitch_1
    const-string v0, "args"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1}, Lp9/q;->l(Lq9/g;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    aget-object v1, p1, v0

    .line 64
    .line 65
    array-length v2, p1

    .line 66
    const/4 v3, 0x1

    .line 67
    if-gt v2, v3, :cond_1

    .line 68
    .line 69
    new-array p1, v0, [Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    array-length v0, p1

    .line 73
    invoke-static {p1, v3, v0}, Ls8/l;->S([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_1
    invoke-virtual {p0, v1, p1}, Lq9/q;->c(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
