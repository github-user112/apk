.class public Lnet/easyconn/ecsdk/ECTypes$ECBluetoothPolicy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECBluetoothPolicy"
.end annotation


# static fields
.field public static final EC_BLUETOOTH_POLICY_ALWAYS_ACCEPT_BTN:I = 0x2

.field public static final EC_BLUETOOTH_POLICY_SEND_DEFAULT_WITH_A2DP_CONNECTED_ONLY:I = 0x0

.field public static final EC_BLUETOOTH_POLICY_SEND_DEFAULT_WITH_HFP_OR_A2DP_CONNECTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
