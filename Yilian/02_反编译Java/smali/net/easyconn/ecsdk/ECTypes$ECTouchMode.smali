.class public Lnet/easyconn/ecsdk/ECTypes$ECTouchMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ECTouchMode"
.end annotation


# static fields
.field public static final EC_TOUCH_MODE_MULTI_TOUCH:I = 0x1

.field public static final EC_TOUCH_MODE_NOT_SUPPORT_TOUCH:I = 0x2

.field public static final EC_TOUCH_MODE_SINGLE_TOUCH:I


# instance fields
.field public final synthetic this$0:Lnet/easyconn/ecsdk/ECTypes;

.field public value:I


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes;I)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchMode;->this$0:Lnet/easyconn/ecsdk/ECTypes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchMode;->value:I

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECTouchMode;->value:I

    return v0
.end method
