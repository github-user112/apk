.class public Lf/a/i/m/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A:I = 0x0

.field public static B:I = -0x1

.field public static a:Z = false

.field public static b:Z = true

.field public static c:Ljava/util/Properties; = null

.field public static d:Lf/a/i/a; = null

.field public static e:Z = false

.field public static f:Lnet/easyconn/ecsdk/ECTypes$ECOptions; = null

.field public static g:Ljava/lang/Boolean; = null

.field public static h:Ljava/lang/Boolean; = null

.field public static i:I = -0x1

.field public static j:I = -0x1

.field public static k:I = -0x1

.field public static l:I = -0x1

.field public static m:I = -0x1

.field public static n:I = -0x1

.field public static o:I = -0x1

.field public static p:I = -0x1

.field public static q:I = 0x2

.field public static r:Z = false

.field public static s:Z = false

.field public static t:Z = false

.field public static u:Z = false

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:I

.field public static z:I


# direct methods
.method public static A(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_QT_MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_VR_TIPS"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->G(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_WEATHER_INFO"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_WIFI_ANDROID_SERVICE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static E(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_WIFI_IOS_SERVICE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static F(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static G(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "FLAVOR"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lf/a/i/m/g;->A:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getPropertyFlavor NumberFormatException, e = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sput v0, Lf/a/i/m/g;->A:I

    :goto_0
    sget p0, Lf/a/i/m/g;->A:I

    return p0
.end method

.method public static H(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "FORCE_PUBLISH_ACCORDING_MDNS_LIST"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static I(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "HANDLE_USB_DEVICE_IN_SERVICE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static J(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "TYPE_MIRROR_MODE"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static K(Landroid/content/Context;)I
    .locals 4

    sget v0, Lf/a/i/m/g;->p:I

    .line 1
    sget v1, Lf/a/i/m/g;->q:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    sput v2, Lf/a/i/m/g;->o:I

    sput v1, Lf/a/i/m/g;->p:I

    :cond_0
    const-string v0, "getPropertyMirrorHeight height = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lf/a/i/m/g;->o:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v0, Lf/a/i/m/g;->o:I

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lf/a/i/m/d;->c()I

    move-result v0

    if-lez v0, :cond_2

    sput v0, Lf/a/i/m/g;->o:I

    return v0

    :cond_2
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result v0

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    if-eqz v0, :cond_4

    const-string v0, "MIRROR_PORTRAIT_HEIGHT"

    goto :goto_0

    :cond_4
    const-string v0, "MIRROR_HEIGHT"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_1
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Screen width is %d, height is %d"

    invoke-static {p0, v2}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sput v0, Lf/a/i/m/g;->o:I

    goto :goto_2

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lf/a/i/m/g;->o:I

    :goto_2
    new-array p0, v3, [Ljava/lang/Object;

    sget v0, Lf/a/i/m/g;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const-string v0, "Screen height is %d"

    invoke-static {v0, p0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget p0, Lf/a/i/m/g;->o:I

    return p0
.end method

.method public static L(Landroid/content/Context;)I
    .locals 5

    sget v0, Lf/a/i/m/g;->n:I

    .line 1
    sget v1, Lf/a/i/m/g;->q:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    sput v2, Lf/a/i/m/g;->m:I

    sput v1, Lf/a/i/m/g;->n:I

    :cond_0
    const-string v0, "getPropertyMirrorWidth width = "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lf/a/i/m/g;->m:I

    invoke-static {v0, v1}, Le/a/c/a/a;->A(Ljava/lang/StringBuilder;I)V

    sget v0, Lf/a/i/m/g;->m:I

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lf/a/i/m/d;->d()I

    move-result v0

    if-lez v0, :cond_2

    sput v0, Lf/a/i/m/g;->m:I

    return v0

    :cond_2
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lf/a/i/m/g;->i0()Z

    move-result v0

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    if-eqz v0, :cond_4

    const-string v0, "MIRROR_PORTRAIT_WIDTH"

    goto :goto_0

    :cond_4
    const-string v0, "MIRROR_WIDTH"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_1
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Screen width is %d, height is %d"

    invoke-static {v0, v2}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    sput p0, Lf/a/i/m/g;->m:I

    new-array p0, v3, [Ljava/lang/Object;

    sget v0, Lf/a/i/m/g;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const-string v0, "Screen width is %d"

    invoke-static {v0, p0}, Le/e/a/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    sget p0, Lf/a/i/m/g;->m:I

    return p0
.end method

.method public static M(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "EC_PRODUCT_TYPE"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getPropertyProductType NumberFormatException, e = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public static N(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "QR_REGISTER_PRODUCT_CODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "QZ_CAR_DESCRIPTION"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static P(Landroid/content/Context;)F
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "1"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SCALE_SCREEN"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0
.end method

.method public static Q(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "0"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SCREEN_DPI"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static R(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "0"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SCREEN_TYPE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lf/a/i/g/a;->b(Landroid/content/Context;)Lf/a/i/g/a;

    move-result-object p0

    .line 1
    iget-object p0, p0, Lf/a/i/g/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "key_ec_show_fps_state"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2
    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "SHOW_FPS"

    invoke-static {v0, v3, v1}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static T(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_BT_HID"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static U(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "EC_SUPPORT_FUNCTION_BT_CALL_BY_HU"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static V(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ECP_SUPPORT_FUNCTION_MEDIA_TRANSPORT_VIA_EC"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static W(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_FUNCTION_PHONE_CONTROL_CAR"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static X(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_MIRROR_OVERLAY"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static Y(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "SUPPORT_FUNCTION_PARALLEL_WORLD"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static Z(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_QR_BLE_AP"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    invoke-static {p0}, Lf/a/i/m/g;->q(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {p0}, Lf/a/i/m/g;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {p0}, Lf/a/i/m/g;->s(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "false"

    if-nez v2, :cond_3

    .line 1
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "ENABLE_SDK_WIFI_DIRECT"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    or-int/lit8 v0, v0, 0x8

    .line 2
    :cond_4
    invoke-static {p0}, Lf/a/i/m/g;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit8 v0, v0, 0x10

    .line 3
    :cond_5
    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_6
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "ENABLE_EAP_MODE"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 4
    :cond_7
    invoke-static {p0}, Lf/a/i/m/g;->r(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    or-int/lit8 v0, v0, 0x40

    :cond_8
    invoke-static {p0}, Lf/a/i/m/g;->A(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    or-int/lit16 v0, v0, 0x80

    :cond_9
    invoke-static {p0}, Lf/a/i/m/g;->D(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    or-int/lit16 v0, v0, 0x200

    :cond_a
    invoke-static {p0}, Lf/a/i/m/g;->E(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    or-int/lit16 v0, v0, 0x100

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateSupportConnect ret = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "(%s)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    return v0
.end method

.method public static a0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "SUPPORT_REGISTER_BY_QR"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "ENABLE_SOCKSERVER_AUTH"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "TALKIE_TRANS_BY_BT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lf/a/i/a;
    .locals 20

    const-class v1, Lf/a/i/m/g;

    monitor-enter v1

    :try_start_0
    const-string v0, "getEcConfigProperty start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getEcConfigProperty initPropertis error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lf/a/i/m/g;->d:Lf/a/i/a;

    if-eqz v0, :cond_1

    const-string v0, "getEcConfigProperty ecConfigOptions != null, return"

    invoke-static {v0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v0, Lf/a/i/m/g;->d:Lf/a/i/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lf/a/i/a;

    invoke-direct {v0}, Lf/a/i/a;-><init>()V

    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "MEDIA_LEVEL"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SCREEN_TYPE"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "MIC_TYPE"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;

    invoke-direct {v6}, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;-><init>()V

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;->EC_DVD_LEVEL_HIGH:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    :goto_0
    iput-object v3, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaLevel:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    goto :goto_1

    :cond_2
    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;->EC_DVD_LEVEL_MIDDLE:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    goto :goto_0

    :cond_3
    sget-object v3, Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;->EC_DVD_LEVEL_LOW:Lnet/easyconn/ecsdk/ECTypes$ECMediaLevel;

    goto :goto_0

    :goto_1
    const/4 v3, 0x4

    if-eqz v4, :cond_7

    if-eq v4, v7, :cond_6

    const/4 v8, 0x3

    if-eq v4, v8, :cond_5

    if-eq v4, v3, :cond_4

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_UNKNOWN:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    :goto_2
    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->screenType:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    goto :goto_3

    :cond_4
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_VERTICAL_ROUND:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    goto :goto_2

    :cond_5
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_HORIZONTIAL_ROUND:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    goto :goto_2

    :cond_6
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_VERTICAL:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    goto :goto_2

    :cond_7
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECScreenType;->EC_CAR_SCREEN_HORIZONTAL:Lnet/easyconn/ecsdk/ECTypes$ECScreenType;

    goto :goto_2

    :goto_3
    if-eqz v5, :cond_9

    if-eq v5, v7, :cond_8

    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_UNSUPPORT:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    :goto_4
    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->micType:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    goto :goto_5

    :cond_8
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_PHONE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    goto :goto_4

    :cond_9
    sget-object v4, Lnet/easyconn/ecsdk/ECTypes$ECMicType;->EC_MIC_TYPE_NATIVE:Lnet/easyconn/ecsdk/ECTypes$ECMicType;

    goto :goto_4

    :goto_5
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MEDIA_OS"

    const-string v8, "test-media-os"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaOS:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MEDIA_MODEL"

    const-string v8, ""

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->mediaModel:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "CAR_BRAND"

    const-string v8, "test-car-brand"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carBrand:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "CAR_MODEL"

    const-string v8, "test-car-model"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carModel:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "CAR_CONFIG"

    const-string v8, "test-car-config"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->carConfig:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_BT_CALL"

    const-string v8, "false"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportBTCall:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_BT_SETTING"

    const-string v8, "false"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportBTSetting:Z

    invoke-static {}, Lf/a/i/m/d;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lf/a/i/m/d;->h()Z

    move-result v4

    iput-boolean v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportBTCall:Z

    :cond_a
    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->Q(Landroid/content/Context;)I

    move-result v4

    iput v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->dpi:I

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->v(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->enableDpi:Z

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->a(Landroid/content/Context;)I

    move-result v4

    iput v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportConnect:I

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_FUNCTION_INPUT"

    const-string v8, "false"

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v8, "SUPPORT_FUNCTION_BT_AUTO_PAIR"

    const-string v9, "false"

    invoke-virtual {v5, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget-object v8, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v9, "SUPPORT_SPEECH_WAKE"

    const-string v10, "false"

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget-object v9, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v10, "EC_SUPPORT_FUNCTION_HU_HOTSPOT"

    const-string v11, "false"

    invoke-virtual {v9, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    sget-object v10, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v11, "SUPPORT_FUNCTION_VR_TEXT"

    const-string v12, "false"

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v11, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v12, "MAIN_PAGE_QR_SWITCH"

    const-string v13, "false"

    invoke-virtual {v11, v12, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->g(Landroid/content/Context;)Z

    move-result v12

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->W(Landroid/content/Context;)Z

    move-result v13

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->V(Landroid/content/Context;)Z

    move-result v14

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->U(Landroid/content/Context;)Z

    move-result v15

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->T(Landroid/content/Context;)Z

    move-result v16

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->Z(Landroid/content/Context;)Z

    move-result v17

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->X(Landroid/content/Context;)Z

    move-result v18

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->Y(Landroid/content/Context;)Z

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "supportFunction supportParallelWorld = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-eqz v8, :cond_b

    const/4 v7, 0x2

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    or-int/2addr v4, v7

    if-eqz v9, :cond_c

    const/16 v7, 0x20

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    :goto_7
    or-int/2addr v4, v7

    if-eqz v10, :cond_d

    const/16 v19, 0x4

    goto :goto_8

    :cond_d
    const/16 v19, 0x0

    :goto_8
    or-int v4, v4, v19

    const/16 v7, 0x80

    if-eqz v11, :cond_e

    const/16 v8, 0x80

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    :goto_9
    or-int/2addr v4, v8

    if-eqz v12, :cond_f

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    :goto_a
    or-int/2addr v4, v7

    if-eqz v5, :cond_10

    const/16 v5, 0x10

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    :goto_b
    or-int/2addr v4, v5

    if-eqz v13, :cond_11

    const/16 v5, 0x400

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    :goto_c
    or-int/2addr v4, v5

    if-eqz v14, :cond_12

    const/16 v5, 0x800

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    :goto_d
    or-int/2addr v4, v5

    if-eqz v15, :cond_13

    const/16 v5, 0x100

    goto :goto_e

    :cond_13
    const/4 v5, 0x0

    :goto_e
    or-int/2addr v4, v5

    if-eqz v16, :cond_14

    const/16 v5, 0x4000

    goto :goto_f

    :cond_14
    const/4 v5, 0x0

    :goto_f
    or-int/2addr v4, v5

    if-eqz v18, :cond_15

    const v5, 0x8000

    goto :goto_10

    :cond_15
    const/4 v5, 0x0

    :goto_10
    or-int/2addr v4, v5

    if-eqz v17, :cond_16

    const/16 v5, 0x2000

    goto :goto_11

    :cond_16
    const/4 v5, 0x0

    :goto_11
    or-int/2addr v4, v5

    if-eqz v3, :cond_17

    const/16 v3, 0x1000

    goto :goto_12

    :cond_17
    const/4 v3, 0x0

    :goto_12
    or-int/2addr v3, v4

    iput v3, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportFunction:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supportFunction is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->supportFunction:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "EC_PRODUCT_TYPE"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->productType:I

    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "MIC_SUPPORT_FEATURE"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->micSupportFeature:I

    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "VR_WAKEUP_TEXT"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "VR_WAKEUP_TEXT"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;->wakeupWord:Ljava/lang/String;

    :cond_18
    new-instance v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    invoke-direct {v3}, Lnet/easyconn/ecsdk/ECTypes$ECOptions;-><init>()V

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "ENABLE_USB_BROADCAST_RECEIVER"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableUsbBroadcastReceiver:Z

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForAOA:Z

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForADB:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "ENABLE_SDK_IOS_USB"

    const-string v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "USE_BIND_TRANSPORT"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useBindTransport:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "USE_SUB_PROCESS"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useSubProcess:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "USE_CAR_BT_CALL_RECORDS"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useCarBtCallRecords:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_RV_ADB"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportRVForAdb:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "ENABLE_SDK_WIFI_DIRECT"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableWifiDirect:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "USB_FILTER"

    const-string v7, ""

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->usbFilterPath:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->f0(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useDefaultMdnsPort:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_OTA_UPDATE"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportOTAUpdate:Z

    goto :goto_13

    :cond_19
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_OTA_UPDATE"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportOTAUpdate:Z

    :goto_13
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_PHONE_SIGNAL"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportPhoneSignal:Z

    :cond_1a
    invoke-static/range {p0 .. p0}, Lf/a/i/m/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "licensePath is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    iput-object v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    :cond_1b
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "BLUETOOTH_POLICY"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->bluetoothPolicy:I

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_THIRDPARTY_APP"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportThirdPartyApp:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_SCREEN_TOUCH"

    const-string v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenTouch:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "ENABLE_BACK_CAR_DESKTOP"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportBackDesktop:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "ENABLE_IOS_DECODE_PX3"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lf/a/i/m/g;->e:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MEDIACODEC_MULTI_THREADS"

    const-string v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lf/a/i/m/g;->b:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MAIN_PAGE_QR_SWITCH"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lf/a/i/m/g;->a:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**=> mMainPageQrSwitch is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lf/a/i/m/g;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "SUPPORT_SCREEN_MIRRORING"

    const-string v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenMirroring:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "TYPE_MIRROR_MODE"

    const-string v7, "0"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1c

    const/4 v5, 0x0

    iput v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    goto :goto_14

    :cond_1c
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    iput v5, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    goto :goto_14

    :cond_1d
    if-ne v4, v2, :cond_1e

    iput v2, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    :cond_1e
    :goto_14
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "SOCKET_TIMEOUT_PERIOD"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "SOCKET_TIMEOUT_PERIOD"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "socketTimeoutPeriod is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput v2, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->socketTimeoutPeriod:I

    goto :goto_15

    :cond_1f
    const-string v2, "socketTimeoutPeriod not need set"

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_15
    new-instance v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    invoke-direct {v2}, Lnet/easyconn/ecsdk/ECTypes$ECConfig;-><init>()V

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MANUFACTURER"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "MODEL"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "VERSION"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "URI"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "FLAVOR"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->flavor:J

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "CHANNEL"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->channel:I

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "PHONE_APP_PKG"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppPackage:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "PHONE_APP_MAIN_ACTIVITY"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->phoneAppMainActivity:Ljava/lang/String;

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "LIGHTNING_BIND_APP"

    const-string v7, "true"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->lightningBindApp:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "EXIST_ADB_SERVER_IN_SYSTEM"

    const-string v7, "false"

    invoke-virtual {v4, v5, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->existAdbServerInSystem:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "PACKAGE_NAME"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEcConfig packageName is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->packageName:Ljava/lang/String;

    :cond_20
    invoke-static/range {p0 .. p0}, Lf/a/i/m/g;->b(Landroid/content/Context;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEcConfig enableSockServerAuth is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/e/a/g;->a(Ljava/lang/Object;)V

    iput-boolean v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->enableSockServerAuth:Z

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "LIST_AUTH_SIGNATURE"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listAuthSignature is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v8}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->signature:Ljava/lang/String;

    :cond_21
    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "BONJOUR_MDNS_SERVER_PATH"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bonjourMDNSServerPath is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v5, v8}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    iput-object v4, v2, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    :cond_22
    iput-object v2, v3, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    invoke-virtual {v0, v6}, Lf/a/i/a;->a(Lnet/easyconn/ecsdk/ECTypes$ECCarDescription;)V

    invoke-virtual {v0, v3}, Lf/a/i/a;->b(Lnet/easyconn/ecsdk/ECTypes$ECOptions;)V

    sput-object v0, Lf/a/i/m/g;->d:Lf/a/i/a;

    const-string v2, "getEcConfigProperty end"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    goto :goto_17

    :goto_16
    throw v0

    :goto_17
    goto :goto_16
.end method

.method public static c0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "THEME_IS_LIGHT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Lnet/easyconn/ecsdk/ECTypes$ECOptions;
    .locals 8

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lf/a/i/m/g;->f:Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    invoke-direct {v0}, Lnet/easyconn/ecsdk/ECTypes$ECOptions;-><init>()V

    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "ENABLE_USB_BROADCAST_RECEIVER"

    const-string v3, "false"

    invoke-static {v1, v2, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableUsbBroadcastReceiver:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForAOA:Z

    iput-boolean v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableAndroidUsbForADB:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "ENABLE_SDK_IOS_USB"

    const-string v5, "true"

    invoke-static {v2, v4, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableIOSUsb:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "BLUETOOTH_POLICY"

    invoke-virtual {v2, v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->bluetoothPolicy:I

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "USE_BIND_TRANSPORT"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useBindTransport:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "ENABLE_SDK_WIFI_DIRECT"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->enableWifiDirect:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "SUPPORT_THIRDPARTY_APP"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportThirdPartyApp:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "SUPPORT_SCREEN_TOUCH"

    invoke-static {v2, v6, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenTouch:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "ENABLE_BACK_CAR_DESKTOP"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportBackDesktop:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "ENABLE_IOS_DECODE_PX3"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lf/a/i/m/g;->e:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "SUPPORT_SCREEN_MIRRORING"

    invoke-static {v2, v6, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportScreenMirroring:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "USE_SUB_PROCESS"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useSubProcess:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "SUPPORT_PHONE_SIGNAL"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->supportPhoneSignal:Z

    :cond_2
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "USE_CAR_BT_CALL_RECORDS"

    invoke-static {v2, v6, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->useCarBtCallRecords:Z

    invoke-static {p0}, Lf/a/i/m/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "getEcOptions licensePath is "

    invoke-static {v6, v2, v2}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-object v2, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->workspace:Ljava/lang/String;

    :cond_3
    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "TYPE_MIRROR_MODE"

    const-string v7, "0"

    invoke-virtual {v2, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    iput v4, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    goto :goto_1

    :cond_4
    if-ne v2, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v2, v1, :cond_6

    :goto_0
    iput v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->mirrorMode:I

    :cond_6
    :goto_1
    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "SOCKET_TIMEOUT_PERIOD"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-virtual {v1, v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "socketTimeoutPeriod is "

    invoke-static {v2, v1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iput v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->socketTimeoutPeriod:I

    goto :goto_2

    :cond_7
    const-string v1, "socketTimeoutPeriod not need set"

    invoke-static {v1}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_2
    new-instance v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    invoke-direct {v1}, Lnet/easyconn/ecsdk/ECTypes$ECConfig;-><init>()V

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "MANUFACTURER"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaManufacturer:Ljava/lang/String;

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "MODEL"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaModel:Ljava/lang/String;

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "VERSION"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaVersion:Ljava/lang/String;

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "URI"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->aoaUri:Ljava/lang/String;

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "LIGHTNING_BIND_APP"

    invoke-static {v2, v6, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->lightningBindApp:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v5, "EXIST_ADB_SERVER_IN_SYSTEM"

    invoke-static {v2, v5, v3}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->existAdbServerInSystem:Z

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v3, "PACKAGE_NAME"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getEcOptions packageName is "

    invoke-static {v3, v2, v2}, Le/a/c/a/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iput-object v2, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->packageName:Ljava/lang/String;

    :cond_8
    invoke-static {p0}, Lf/a/i/m/g;->b(Landroid/content/Context;)Z

    move-result p0

    const-string v2, "getEcConfig enableSockServerAuth is "

    invoke-static {v2, p0}, Le/a/c/a/a;->z(Ljava/lang/String;Z)V

    iput-boolean p0, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->enableSockServerAuth:Z

    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "LIST_AUTH_SIGNATURE"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "listAuthSignature is "

    invoke-static {v2, p0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iput-object p0, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->signature:Ljava/lang/String;

    :cond_9
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v2, "BONJOUR_MDNS_SERVER_PATH"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "options bonjourMDNSServerPath is "

    invoke-static {v2, p0}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object p0, v1, Lnet/easyconn/ecsdk/ECTypes$ECConfig;->bonjourMDNSServerPath:Ljava/lang/String;

    :cond_a
    iput-object v1, v0, Lnet/easyconn/ecsdk/ECTypes$ECOptions;->config:Lnet/easyconn/ecsdk/ECTypes$ECConfig;

    sput-object v0, Lf/a/i/m/g;->f:Lnet/easyconn/ecsdk/ECTypes$ECOptions;

    return-object v0
.end method

.method public static d0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "TTS_TRANS_BY_BT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_TAB_STATUS_TIP"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e0(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "USB_FILTER"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "HU_SUPPORT_INTERNET_ACCESS"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static f0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "USE_DEFAULT_MDNS_PORT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "NEW_STATUS_TIP_SUPPORT_QR_LINK"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static g0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "VR_TRANS_BY_BT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "1000"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "OPEN_TRANSPORT_RETRY_TIME"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0
.end method

.method public static h0(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "initPropertis open EcConfig"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "EcConfig.prop"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    sget-object v2, Lf/a/i/m/g;->c:Ljava/util/Properties;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-static {p0}, Lf/a/i/m/g;->j0(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Le/e/a/g;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Le/e/a/g;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Le/e/a/g;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Le/e/a/g;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    throw p0

    :cond_2
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "AIRPLAY_VERSIONCODE"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lf/a/i/m/g;->y:I

    return p0
.end method

.method public static i0()Z
    .locals 2

    .line 1
    sget v0, Lf/a/i/m/g;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static j(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "EC_CAP_SCREEN_MODE"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getPropertyCapScreenMode NumberFormatException, e = "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public static j0(Landroid/content/Context;)V
    .locals 12

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "mergeWithEtc start"

    invoke-static {v1, v0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "FLAVOR"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/etc/ec.conf"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v4, "ENABLE_APP_ANDROID_USB"

    const-string v5, "true"

    invoke-static {p0, v4, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget-object v4, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v6, "ENABLE_WIFI_ANDROID_SERVICE"

    invoke-static {v4, v6, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    sget-object v6, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v7, "ENABLE_APP_WIFI_DIRECT"

    const-string v8, "false"

    invoke-static {v6, v7, v8}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    sget-object v7, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v9, "ENABLE_APP_IOS_USB"

    invoke-static {v7, v9, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    sget-object v9, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v10, "ENABLE_QT_MODE"

    invoke-static {v9, v10, v8}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    sget-object v10, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v11, "ENABLE_WIFI_IOS_SERVICE"

    invoke-static {v10, v11, v5}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    sget-object v10, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v11, "ENABLE_AIRPLAY_MODE"

    invoke-static {v10, v11, v8}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v10, v9, 0x1

    xor-int/lit8 v11, v8, 0x1

    shl-int/lit8 p0, p0, 0x8

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr p0, v4

    shl-int/lit8 v4, v6, 0x6

    or-int/2addr p0, v4

    shl-int/lit8 v4, v7, 0x5

    or-int/2addr p0, v4

    const/4 v4, 0x4

    shl-int/lit8 v6, v9, 0x4

    or-int/2addr p0, v6

    shl-int/lit8 v6, v10, 0x3

    or-int/2addr p0, v6

    shl-int/2addr v5, v2

    or-int/2addr p0, v5

    shl-int/lit8 v5, v8, 0x1

    or-int/2addr p0, v5

    or-int/2addr p0, v11

    const-string v5, "project_flavor"

    const-string v6, "0"

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v7, "conn_type"

    const/4 v8, -0x1

    if-ne v5, v1, :cond_6

    if-eqz v0, :cond_2

    return-void

    .line 1
    :cond_2
    invoke-virtual {v3, v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v0

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_2

    :pswitch_0
    const/16 v0, 0x128

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x2d

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x180

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x1c0

    goto :goto_2

    :pswitch_4
    const/16 v0, 0x28

    goto :goto_2

    :pswitch_5
    const/16 v0, 0x100

    goto :goto_2

    :pswitch_6
    const/16 v0, 0x1ad

    goto :goto_2

    :pswitch_7
    const/16 v0, 0x1ed

    :goto_2
    if-ne v0, v8, :cond_4

    goto/16 :goto_5

    :cond_4
    or-int v1, p0, v0

    if-eq v1, p0, :cond_5

    goto/16 :goto_5

    :cond_5
    and-int/2addr p0, v0

    invoke-static {p0}, Lf/a/i/m/g;->k0(I)V

    goto/16 :goto_5

    :cond_6
    if-ne v5, v2, :cond_b

    if-eq v0, v4, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {v3, v7, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, v0

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    const/4 v0, -0x1

    goto :goto_4

    :pswitch_8
    const/16 v0, 0x86

    goto :goto_4

    :pswitch_9
    const/16 v0, 0x106

    goto :goto_4

    :pswitch_a
    const/16 v0, 0x128

    goto :goto_4

    :pswitch_b
    const/16 v0, 0x130

    goto :goto_4

    :pswitch_c
    const/16 v0, 0x2d

    goto :goto_4

    :pswitch_d
    const/16 v0, 0x36

    goto :goto_4

    :pswitch_e
    const/16 v0, 0x35

    goto :goto_4

    :pswitch_f
    const/16 v0, 0x180

    goto :goto_4

    :pswitch_10
    const/16 v0, 0x1c0

    goto :goto_4

    :pswitch_11
    const/16 v0, 0x30

    goto :goto_4

    :pswitch_12
    const/16 v0, 0x100

    goto :goto_4

    :pswitch_13
    const/16 v0, 0x186

    goto :goto_4

    :pswitch_14
    const/16 v0, 0x1ad

    goto :goto_4

    :pswitch_15
    const/16 v0, 0x1b6

    goto :goto_4

    :pswitch_16
    const/16 v0, 0x1b5

    goto :goto_4

    :pswitch_17
    const/16 v0, 0x1ed

    goto :goto_4

    :pswitch_18
    const/16 v0, 0x1f6

    goto :goto_4

    :pswitch_19
    const/16 v0, 0x1f5

    :goto_4
    if-ne v0, v8, :cond_9

    goto :goto_5

    :cond_9
    or-int v1, p0, v0

    if-eq v1, p0, :cond_a

    goto :goto_5

    :cond_a
    and-int/2addr p0, v0

    invoke-static {p0}, Lf/a/i/m/g;->k0(I)V

    :cond_b
    :goto_5
    return-void

    :catchall_0
    move-exception p0

    goto :goto_9

    :catch_1
    move-object v4, v5

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_2
    :goto_6
    :try_start_3
    const-string v0, "etcProps create fail!"

    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    invoke-static {v0, p0}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_c

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c
    :goto_7
    return-void

    :goto_8
    move-object v5, v4

    :goto_9
    if-eqz v5, :cond_d

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_a
    throw p0

    :cond_e
    :goto_b
    const-string p0, "without init by flavor = "

    invoke-static {p0, v0}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static k(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "CHANNEL"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static k0(I)V
    .locals 5

    ushr-int/lit8 v0, p0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_APP_ANDROID_USB"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/lit8 v0, p0, 0x7

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_WIFI_ANDROID_SERVICE"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/lit8 v0, p0, 0x6

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_APP_WIFI_DIRECT"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/lit8 v0, p0, 0x5

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_APP_IOS_USB"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/lit8 v0, p0, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_QT_MODE"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/lit8 v0, p0, 0x2

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    sget-object v3, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ENABLE_WIFI_IOS_SERVICE"

    invoke-virtual {v3, v4, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    ushr-int/2addr p0, v2

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENABLE_AIRPLAY_MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "CUSTOM_DEVICE_NAME"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v0, "THEME_IS_LIGHT"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "DLNA_PAY_FUNCTION"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static m0(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_BLE_BLUETOOTH"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "EC_UI_SUPPORT_CONTROL"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_ADB_MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_AIRPLAY_MODE"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_ANDROID_USB"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "true"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_IOS_USB"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_APP_WIFI_DIRECT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static t(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_BLE_ENCRYPT"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_DAY_NIGHT_THEME"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_DPI"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_FLOAT_MENU_HOME"

    invoke-virtual {p0, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "WIFI_NETLINK_BEFORE_LOLLIPOP"

    invoke-static {p0, v1, v0}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lf/a/i/m/g;->t:Z

    return p0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_NETLINK"

    invoke-static {p0, v1, v0}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lf/a/i/m/g;->r:Z

    return p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lf/a/i/m/g;->h0(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "false"

    if-nez p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lf/a/i/m/g;->c:Ljava/util/Properties;

    const-string v1, "ENABLE_NETLINK_INCLUDE_WIFI"

    invoke-static {p0, v1, v0}, Le/a/c/a/a;->E(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lf/a/i/m/g;->u:Z

    return p0
.end method
