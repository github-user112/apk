.class public Lnet/easyconn/ecsdk/ECTypes$ECInputImeOptions;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECInputImeOptions"
.end annotation


# static fields
.field public static final EC_INPUT_IME_ACTION_DONE:I = 0x6

.field public static final EC_INPUT_IME_ACTION_GO:I = 0x2

.field public static final EC_INPUT_IME_ACTION_NEXT:I = 0x5

.field public static final EC_INPUT_IME_ACTION_NONE:I = 0x1

.field public static final EC_INPUT_IME_ACTION_PREVIOUS:I = 0x7

.field public static final EC_INPUT_IME_ACTION_SEARCH:I = 0x3

.field public static final EC_INPUT_IME_ACTION_SEND:I = 0x4

.field public static final EC_INPUT_IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final EC_INPUT_IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final EC_INPUT_IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final EC_INPUT_IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final EC_INPUT_IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final EC_INPUT_IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final EC_INPUT_IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final EC_INPUT_IME_FLAG_NO_FULL_SCREEN:I = 0x2000000

.field public static final EC_INPUT_IME_FLAG_NO_PERSONALIZED_LEARNING:I = 0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
