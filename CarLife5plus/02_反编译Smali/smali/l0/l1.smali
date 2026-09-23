.class public final synthetic Ll0/l1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll0/o1;


# direct methods
.method public synthetic constructor <init>(Ll0/o1;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll0/l1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll0/l1;->b:Ll0/o1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ll0/l1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll0/l1;->b:Ll0/o1;

    .line 7
    .line 8
    iget-object v0, v0, Ll0/o1;->a:Lf1/g1;

    .line 9
    .line 10
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :pswitch_0
    iget-object v0, p0, Ll0/l1;->b:Ll0/o1;

    .line 28
    .line 29
    iget-object v1, v0, Ll0/o1;->a:Lf1/g1;

    .line 30
    .line 31
    invoke-virtual {v1}, Lf1/g1;->f()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v0, v0, Ll0/o1;->b:Lf1/g1;

    .line 36
    .line 37
    invoke-virtual {v0}, Lf1/g1;->f()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    cmpg-float v0, v1, v0

    .line 42
    .line 43
    if-gez v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
