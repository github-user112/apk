.class public synthetic Lcom/huawei/hms/scankit/p/mc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/huawei/hms/scankit/p/wc;->values()[Lcom/huawei/hms/scankit/p/wc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/hms/scankit/p/mc;->a:[I

    :try_start_0
    sget-object v1, Lcom/huawei/hms/scankit/p/wc;->b:Lcom/huawei/hms/scankit/p/wc;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v1, Lcom/huawei/hms/scankit/p/wc;->c:Lcom/huawei/hms/scankit/p/wc;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x3

    const/4 v1, 0x4

    :try_start_2
    sget-object v2, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v3, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x6

    :try_start_3
    sget-object v3, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v4, Lcom/huawei/hms/scankit/p/wc;->g:Lcom/huawei/hms/scankit/p/wc;

    aput v1, v3, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v3, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v4, Lcom/huawei/hms/scankit/p/wc;->a:Lcom/huawei/hms/scankit/p/wc;

    const/4 v4, 0x0

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x7

    :try_start_5
    sget-object v4, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v5, Lcom/huawei/hms/scankit/p/wc;->h:Lcom/huawei/hms/scankit/p/wc;

    aput v2, v4, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/16 v2, 0x8

    :try_start_6
    sget-object v4, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v5, Lcom/huawei/hms/scankit/p/wc;->i:Lcom/huawei/hms/scankit/p/wc;

    aput v3, v4, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v4, Lcom/huawei/hms/scankit/p/wc;->d:Lcom/huawei/hms/scankit/p/wc;

    aput v2, v3, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v0, 0x9

    :try_start_8
    sget-object v2, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v3, Lcom/huawei/hms/scankit/p/wc;->f:Lcom/huawei/hms/scankit/p/wc;

    aput v0, v2, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/huawei/hms/scankit/p/mc;->a:[I

    sget-object v2, Lcom/huawei/hms/scankit/p/wc;->j:Lcom/huawei/hms/scankit/p/wc;

    const/16 v2, 0xa

    aput v2, v1, v0
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
