.class public Lnet/easyconn/ecsdk/ECTypes$ECAuthSuccessCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAuthSuccessCode"
.end annotation


# static fields
.field public static final EC_CAR_NETWORK_AUTH_CHECK_UUID_LICENSE:I = 0x1010

.field public static final EC_CAR_NETWORK_AUTH_DOWNLOAD_UUID_LICENSE:I = 0x1030

.field public static final EC_CAR_NETWORK_AUTH_REGISTER_UUID_LICENSE:I = 0x1020

.field public static final EC_PHONE_NETWORK_AUTH_CHECK_UUID_LICENSE:I = 0x2010

.field public static final EC_PHONE_NETWORK_AUTH_DOWNLOAD_UUID_LICENSE:I = 0x2030

.field public static final EC_PHONE_NETWORK_AUTH_REGISTER_UUID_LICENSE:I = 0x2020


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
