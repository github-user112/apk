.class public Lcom/tencent/tinker/android/dex/DebugInfoItem;
.super Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item<",
        "Lcom/tencent/tinker/android/dex/DebugInfoItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DBG_ADVANCE_LINE:B = 0x2t

.field public static final DBG_ADVANCE_PC:B = 0x1t

.field public static final DBG_END_LOCAL:B = 0x5t

.field public static final DBG_END_SEQUENCE:B = 0x0t

.field public static final DBG_RESTART_LOCAL:B = 0x6t

.field public static final DBG_SET_EPILOGUE_BEGIN:B = 0x8t

.field public static final DBG_SET_FILE:B = 0x9t

.field public static final DBG_SET_PROLOGUE_END:B = 0x7t

.field public static final DBG_START_LOCAL:B = 0x3t

.field public static final DBG_START_LOCAL_EXTENDED:B = 0x4t


# instance fields
.field public infoSTM:[B

.field public lineStart:I

.field public parameterNames:[I


# direct methods
.method public constructor <init>(II[I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    iput-object p4, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    return-void
.end method


# virtual methods
.method public byteCountInDex()I
    .locals 5

    iget v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    array-length v1, v1

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128Size(I)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    invoke-static {v4}, Lcom/tencent/tinker/android/dex/Leb128;->unsignedLeb128p1Size(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public compareTo(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([I[I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    invoke-static {v0, p1}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/DebugInfoItem;->compareTo(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/DebugInfoItem;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/DebugInfoItem;->compareTo(Lcom/tencent/tinker/android/dex/DebugInfoItem;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->lineStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->parameterNames:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/DebugInfoItem;->infoSTM:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/util/HashCodeHelper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
