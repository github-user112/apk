.class public synthetic Lcom/huawei/hms/scankit/p/le;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/huawei/hms/scankit/p/wc;->values()[Lcom/huawei/hms/scankit/p/wc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/hms/scankit/p/le;->a:[I

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/wc;->b:Lcom/huawei/hms/scankit/p/wc;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/huawei/hms/scankit/p/le;->a:[I

    sget-object v1, Lcom/huawei/hms/scankit/p/wc;->c:Lcom/huawei/hms/scankit/p/wc;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x4

    :try_start_2
    sget-object v1, Lcom/huawei/hms/scankit/p/le;->a:[I

    sget-object v2, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    const/4 v2, 0x3

    aput v2, v1, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/huawei/hms/scankit/p/le;->a:[I

    sget-object v2, Lcom/huawei/hms/scankit/p/wc;->g:Lcom/huawei/hms/scankit/p/wc;

    const/4 v2, 0x6

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
