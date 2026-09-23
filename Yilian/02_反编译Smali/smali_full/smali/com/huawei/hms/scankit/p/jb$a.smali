.class public final enum Lcom/huawei/hms/scankit/p/jb$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/jb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum b:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum c:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum d:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum e:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum f:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum g:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum h:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final synthetic i:[Lcom/huawei/hms/scankit/p/jb$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->a:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "ASCII_ENCODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "C40_ENCODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->c:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "TEXT_ENCODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->d:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "ANSIX12_ENCODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->e:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "EDIFACT_ENCODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->f:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "BASE256_ENCODE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->g:Lcom/huawei/hms/scankit/p/jb$a;

    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "UPPER_ENCODE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->h:Lcom/huawei/hms/scankit/p/jb$a;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/jb$a;

    sget-object v10, Lcom/huawei/hms/scankit/p/jb$a;->a:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v10, v1, v2

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->c:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->d:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->e:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->f:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/huawei/hms/scankit/p/jb$a;->g:Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/huawei/hms/scankit/p/jb$a;->i:[Lcom/huawei/hms/scankit/p/jb$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/jb$a;
    .locals 1

    const-class v0, Lcom/huawei/hms/scankit/p/jb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/jb$a;
    .locals 1

    sget-object v0, Lcom/huawei/hms/scankit/p/jb$a;->i:[Lcom/huawei/hms/scankit/p/jb$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/jb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/jb$a;

    return-object v0
.end method
