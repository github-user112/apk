.class public Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

.field public static final NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

.field public static final NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

.field public static final NEXT_STANDARD_STUB_IDX_SLOTS:[I

.field public static final NOTRANSPARENT_SLOT_INDEX:I = 0x0

.field public static final SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

.field public static final SINGLETASK_STUB_COUNT_SLOTS:[I

.field public static final SINGLETOP_STUB_COUNT_SLOTS:[I

.field public static final STANDARD_STUB_COUNT_SLOTS:[I

.field public static final TAG:Ljava/lang/String; = "Tinker.ActivityStubManager"

.field public static final TRANSPARENT_SLOT_INDEX:I = 0x1

.field public static sTargetToStubClassNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->STANDARD_STUB_COUNT_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETOP_STUB_COUNT_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETASK_STUB_COUNT_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_STANDARD_STUB_IDX_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static assignStub(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->STARDARD_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_STANDARD_STUB_IDX_SLOTS:[I

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->STANDARD_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLEINSTANCE_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETASK_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETASK_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETOP_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETOP_STUB_COUNT_SLOTS:[I

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const-string p2, "_T"

    invoke-static {p1, p2}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    aget v4, v1, p2

    add-int/lit8 v5, v4, 0x1

    aput v5, v1, p2

    aget v2, v2, p2

    if-lt v4, v2, :cond_5

    aput v3, v1, p2

    const/4 v4, 0x0

    :cond_5
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
