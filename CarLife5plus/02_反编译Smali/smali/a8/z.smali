.class public final synthetic La8/z;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lf1/b1;

.field public final synthetic d:Lf9/k;


# direct methods
.method public synthetic constructor <init>(Lf9/k;Ljava/util/List;Lf1/b1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, La8/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/z;->d:Lf9/k;

    iput-object p2, p0, La8/z;->b:Ljava/util/List;

    iput-object p3, p0, La8/z;->c:Lf1/b1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lf1/b1;Lf9/k;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, La8/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La8/z;->b:Ljava/util/List;

    iput-object p2, p0, La8/z;->c:Lf1/b1;

    iput-object p3, p0, La8/z;->d:Lf9/k;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, La8/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lg0/g;

    .line 7
    .line 8
    const-string v0, "$this$LazyVerticalGrid"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, La8/z;->b:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, La8/r;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-direct {v2, v3, v0}, La8/r;-><init>(ILjava/util/List;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, La8/i0;

    .line 26
    .line 27
    iget-object v4, p0, La8/z;->c:Lf1/b1;

    .line 28
    .line 29
    iget-object v5, p0, La8/z;->d:Lf9/k;

    .line 30
    .line 31
    invoke-direct {v3, v0, v4, v5}, La8/i0;-><init>(Ljava/util/List;Lf1/b1;Lf9/k;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ln1/c;

    .line 35
    .line 36
    const v4, -0x4297e015

    .line 37
    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-direct {v0, v3, v4, v5}, Ln1/c;-><init>(Ljava/lang/Object;IZ)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lg0/g;->c:Le7/l;

    .line 44
    .line 45
    new-instance v3, Lg0/f;

    .line 46
    .line 47
    sget-object v4, Lg0/g;->d:Lf0/q;

    .line 48
    .line 49
    invoke-direct {v3, v4, v2, v0}, Lg0/f;-><init>(Lf9/n;Lf9/k;Ln1/c;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v3}, Le7/l;->a(ILh0/p;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_0
    check-cast p1, Lz7/a2;

    .line 59
    .line 60
    const-string v0, "newItem"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, La8/z;->b:Ljava/util/List;

    .line 66
    .line 67
    invoke-static {v0, p1}, Ls8/p;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, La8/z;->d:Lf9/k;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    .line 78
    iget-object v0, p0, La8/z;->c:Lf1/b1;

    .line 79
    .line 80
    invoke-interface {v0, p1}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
