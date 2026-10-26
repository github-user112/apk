.class public synthetic Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/shareutil/ShareOatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->values()[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    :try_start_0
    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    const/4 v1, 0x3

    :try_start_1
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v3, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v3, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput v1, v2, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x4

    aput v1, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x5

    aput v1, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x6

    aput v1, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x7

    aput v1, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$1;->$SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet:[I

    sget-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
