.class public final synthetic Lw0/z0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Lf9/a;


# direct methods
.method public synthetic constructor <init>(Lf9/a;Lf9/a;I)V
    .locals 0

    .line 1
    iput p3, p0, Lw0/z0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw0/z0;->b:Lf9/a;

    .line 4
    .line 5
    iput-object p2, p0, Lw0/z0;->c:Lf9/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw0/z0;->a:I

    .line 2
    .line 3
    check-cast p1, Lo0/g;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lw0/z0;->b:Lf9/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lw0/z0;->c:Lf9/a;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :goto_0
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Lo0/g;->close()V

    .line 32
    .line 33
    .line 34
    :cond_1
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_0
    iget-object v0, p0, Lw0/z0;->b:Lf9/a;

    .line 38
    .line 39
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lw0/z0;->c:Lf9/a;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x1

    .line 58
    :goto_1
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-interface {p1}, Lo0/g;->close()V

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 64
    .line 65
    return-object p1

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
