.class public final Lwb/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwb/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lwb/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lwb/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lwb/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    .line 1
    iget v0, p0, Lwb/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lwb/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lwb/c;

    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lwb/c;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    move-object v2, v0

    .line 20
    check-cast v2, Ls8/b;

    .line 21
    .line 22
    invoke-virtual {v2}, Ls8/b;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Ls8/b;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lwb/c;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/Comparator;

    .line 39
    .line 40
    invoke-static {v1, v0}, Ls8/t;->T(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0

    .line 48
    :pswitch_0
    new-instance v0, Ll1/c;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Ll1/c;-><init>(Lwb/c;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :pswitch_1
    new-instance v0, Lwb/b;

    .line 55
    .line 56
    iget-object v1, p0, Lwb/c;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lwb/j;

    .line 59
    .line 60
    invoke-interface {v1}, Lwb/j;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lwb/c;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lf9/k;

    .line 67
    .line 68
    invoke-direct {v0, v1, v2}, Lwb/b;-><init>(Ljava/util/Iterator;Lf9/k;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
