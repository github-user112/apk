.class public final Lv6/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, La/a;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x10000

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sput v1, Lv6/c;->d:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sput v1, Lv6/c;->d:I

    .line 13
    .line 14
    return-void
.end method
