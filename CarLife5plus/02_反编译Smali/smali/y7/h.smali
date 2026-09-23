.class public final synthetic Ly7/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lf1/b1;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly7/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly7/h;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Ly7/h;->c:Lf1/b1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ly7/h;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Ly7/h;->c:Lf1/b1;

    .line 7
    .line 8
    iget-object v4, p0, Ly7/h;->b:Ljava/lang/String;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 20
    .line 21
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u97f3\u9891\u6587\u4ef6"

    .line 22
    .line 23
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-interface {v3, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object v1

    .line 33
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Ll8/c;->a:Lfc/c;

    .line 40
    .line 41
    const-string v0, "\u8bf7\u5148\u9009\u62e9\u5e94\u7528"

    .line 42
    .line 43
    invoke-static {v2, v0}, Ll8/c;->g(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-interface {v3, v0}, Lf1/b1;->setValue(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    return-object v1

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
