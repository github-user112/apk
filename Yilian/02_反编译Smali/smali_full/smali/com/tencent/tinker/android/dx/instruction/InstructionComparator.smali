.class public abstract Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;,
        Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;,
        Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;,
        Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;
    }
.end annotation


# instance fields
.field public final insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

.field public final insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

.field public final insns1:[S

.field public final insns2:[S

.field public final visitedInsnAddrPairs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([S[S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insns1:[S

    iput-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insns2:[S

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-direct {v1, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;-><init>([S)V

    array-length p1, p1

    invoke-direct {p0, v1, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->readInstructionsIntoHolders(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;I)[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;-><init>([S)V

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->readInstructionsIntoHolders(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;I)[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    :goto_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->visitedInsnAddrPairs:Ljava/util/Set;

    return-void
.end method

.method private compareIndex(III)Z
    .locals 1

    invoke-static {p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionIndexType(I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-ne p2, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->compareField(II)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->compareMethod(II)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->compareString(II)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->compareType(II)Z

    move-result p1

    return p1
.end method

.method private getPromotedOpCodeOnDemand(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)I
    .locals 2

    iget p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_3

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x28

    const/16 v1, 0x2a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x29

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method private readInstructionsIntoHolders(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;I)[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->reset()V

    new-array p2, p2, [Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    new-instance v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;-><init>(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;)V

    :try_start_0
    new-instance p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)V

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->accept(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final compare()Z
    .locals 11

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->visitedInsnAddrPairs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    iget-object v6, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v6, v6

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    const/4 v6, 0x0

    move-object v7, v6

    :goto_0
    iget-object v8, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v9, v8

    if-ge v0, v9, :cond_3

    if-nez v7, :cond_3

    add-int/lit8 v7, v0, 0x1

    aget-object v0, v8, v0

    move v10, v7

    move-object v7, v0

    move v0, v10

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_5

    add-int/lit8 v4, v4, 0x1

    :goto_1
    iget-object v8, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v9, v8

    if-ge v3, v9, :cond_4

    if-nez v6, :cond_4

    add-int/lit8 v6, v3, 0x1

    aget-object v3, v8, v3

    move v10, v6

    move-object v6, v3

    move v3, v10

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v7, v6}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->isSameInstruction(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)Z

    move-result v6

    if-nez v6, :cond_2

    return v2

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v7, v6

    if-ge v0, v7, :cond_7

    add-int/lit8 v7, v0, 0x1

    aget-object v0, v6, v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    move v0, v7

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v6, v0

    if-ge v3, v6, :cond_9

    add-int/lit8 v6, v3, 0x1

    aget-object v0, v0, v3

    if-eqz v0, :cond_8

    return v2

    :cond_8
    move v3, v6

    goto :goto_3

    :cond_9
    if-ne v4, v5, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_b
    :goto_5
    return v2
.end method

.method public abstract compareField(II)Z
.end method

.method public abstract compareMethod(II)Z
.end method

.method public abstract compareString(II)Z
.end method

.method public abstract compareType(II)Z
.end method

.method public isSameInstruction(II)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders1:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->insnHolders2:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v2, v0, p2

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->isSameInstruction(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)Z

    move-result p1

    return p1
.end method

.method public isSameInstruction(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    if-nez p2, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->getPromotedOpCodeOnDemand(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->getPromotedOpCodeOnDemand(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iget v3, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1d

    const/16 v5, 0xb

    if-eq v3, v5, :cond_1d

    const/16 v5, 0xd

    if-eq v3, v5, :cond_1c

    const/16 v5, 0xf

    if-eq v3, v5, :cond_1d

    const/16 v5, 0x15

    if-eq v3, v5, :cond_1d

    const/4 v5, 0x7

    if-eq v3, v5, :cond_1d

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1c

    const/16 v6, 0x12

    if-eq v3, v6, :cond_1d

    const/16 v6, 0x13

    if-eq v3, v6, :cond_1c

    const/16 v6, 0x17

    if-eq v3, v6, :cond_1c

    const/16 v6, 0x18

    if-eq v3, v6, :cond_1c

    packed-switch v3, :pswitch_data_0

    iget-wide v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    iget-wide v4, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_15

    return v1

    :pswitch_0
    check-cast p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;

    check-cast p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;

    iget-object v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->keys:[I

    iget-object v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->keys:[I

    invoke-static {v2, v3}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([I[I)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->targets:[I

    array-length v3, v2

    iget-object v4, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->targets:[I

    array-length v4, v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    iget-object v4, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->targets:[I

    aget v4, v4, v3

    iget-object v5, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->targets:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->isSameInstruction(II)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v0

    :pswitch_1
    check-cast p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;

    check-cast p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;

    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->firstKey:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->firstKey:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->targets:[I

    array-length v3, v2

    iget-object v4, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->targets:[I

    array-length v4, v4

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_a

    iget-object v4, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->targets:[I

    aget v4, v4, v3

    iget-object v5, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->targets:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->isSameInstruction(II)Z

    move-result v4

    if-nez v4, :cond_9

    return v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    return v0

    :pswitch_2
    check-cast p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;

    check-cast p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;

    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->elementWidth:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->elementWidth:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v3, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->size:I

    iget v6, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->size:I

    if-eq v3, v6, :cond_c

    return v1

    :cond_c
    if-eq v2, v0, :cond_13

    if-eq v2, v4, :cond_11

    const/4 v1, 0x4

    if-eq v2, v1, :cond_f

    if-ne v2, v5, :cond_e

    iget-object p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p1, [J

    iget-object p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p2, [J

    invoke-static {p1, p2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->sArrCompare([J[J)I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_e
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string p2, "bogus element_width: "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p1, [I

    iget-object p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p2, [I

    invoke-static {p1, p2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([I[I)I

    move-result p1

    if-nez p1, :cond_10

    goto :goto_3

    :cond_10
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_11
    iget-object p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p1, [S

    iget-object p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p2, [S

    invoke-static {p1, p2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([S[S)I

    move-result p1

    if-nez p1, :cond_12

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    :goto_4
    return v0

    :cond_13
    iget-object p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p1, [B

    iget-object p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p1, p2}, Lcom/tencent/tinker/android/dex/util/CompareUtils;->uArrCompare([B[B)I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_15
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    if-eq v2, v3, :cond_16

    return v1

    :cond_16
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    if-eq v2, v3, :cond_17

    return v1

    :cond_17
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    if-eq v2, v3, :cond_18

    return v1

    :cond_18
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->c:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->c:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->d:I

    iget v3, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->d:I

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->e:I

    iget p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->e:I

    if-eq p1, p2, :cond_1b

    return v1

    :cond_1b
    return v0

    :cond_1c
    iget p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iget p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    invoke-direct {p0, v2, p1, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->compareIndex(III)Z

    move-result p1

    return p1

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->visitedInsnAddrPairs:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget p1, p1, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iget p2, p2, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->isSameInstruction(II)Z

    move-result p1

    return p1

    :cond_1e
    return v0

    :cond_1f
    :goto_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
