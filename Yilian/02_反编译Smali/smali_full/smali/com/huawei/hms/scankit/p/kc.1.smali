.class public final enum Lcom/huawei/hms/scankit/p/kc;
.super Lcom/huawei/hms/scankit/p/lc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/lc;-><init>(Ljava/lang/String;ILcom/huawei/hms/scankit/p/dc;)V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 1

    add-int v0, p1, p2

    mul-int p1, p1, p2

    rem-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v0

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
