.class public final enum Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/shareutil/ShareOatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstructionSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kMips64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

.field public static final enum kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kArm"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kArm64"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kThumb2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kX86"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kX86_64"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kMips"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    new-instance v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const-string v1, "kMips64"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    sget-object v10, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kNone:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v10, v1, v2

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kArm64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kThumb2:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kX86_64:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->kMips:Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->$VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
    .locals 1

    const-class v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-object p0
.end method

.method public static values()[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;
    .locals 1

    sget-object v0, Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->$VALUES:[Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    invoke-virtual {v0}, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/tinker/loader/shareutil/ShareOatUtil$InstructionSet;

    return-object v0
.end method
