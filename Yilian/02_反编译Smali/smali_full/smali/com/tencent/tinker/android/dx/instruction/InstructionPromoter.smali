.class public final Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;
.super Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.source ""


# instance fields
.field public final addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

.field public currentPromotedAddress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V

    new-instance v0, Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-direct {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void
.end method

.method private mapAddressIfNeeded(I)V
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->append(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPromotedAddress(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/android/utils/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1
.end method

.method public getPromotedAddressCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->addressMap:Lcom/tencent/tinker/android/utils/SparseIntArray;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/utils/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    const/4 p2, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    const/4 p4, 0x1

    if-eq p5, p4, :cond_3

    const/4 p4, 0x2

    if-eq p5, p4, :cond_2

    if-eq p5, p2, :cond_1

    const/16 p2, 0x8

    if-ne p5, p2, :cond_0

    check-cast p3, [J

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x4

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string p2, "bogus element_width: "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p5}, Lcom/tencent/tinker/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p3, [I

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    check-cast p3, [S

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    check-cast p3, [B

    array-length p2, p3

    shr-int/lit8 p3, p2, 0x1

    and-int/2addr p2, p4

    add-int/2addr p2, p3

    :goto_0
    add-int/2addr p2, p1

    iput p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void
.end method

.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitOneRegisterInsn(IIIIIJI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x22

    if-eq p2, p1, :cond_2

    const/16 p1, 0x24

    if-eq p2, p1, :cond_1

    const/16 p1, 0x26

    if-eq p2, p1, :cond_1

    const/16 p1, 0x27

    if-eq p2, p1, :cond_0

    const/16 p1, 0x2b

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const p1, 0xffff

    if-le p3, p1, :cond_2

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x5

    goto :goto_1

    :cond_0
    :pswitch_2
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_3
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_2
    :pswitch_4
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x2

    :goto_1
    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public visitPackedSwitchPayloadInsn(III[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    array-length p2, p4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x25

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitSparseSwitchPayloadInsn(II[I[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    array-length p1, p4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    :pswitch_1
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    :goto_0
    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitTwoRegisterInsn(IIIIIJII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/16 p1, 0x20

    if-eq p2, p1, :cond_2

    const/16 p1, 0x21

    if-eq p2, p1, :cond_1

    const/16 p1, 0x23

    if-eq p2, p1, :cond_2

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    :cond_1
    :pswitch_1
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :pswitch_2
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x2

    :goto_0
    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->mapAddressIfNeeded(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    if-eqz p2, :cond_2

    const/16 p1, 0xe

    if-eq p2, p1, :cond_2

    const/16 p1, 0x24

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "unexpected opcode: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p1

    int-to-short p2, p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p1

    int-to-byte p2, p1

    if-eq p1, p2, :cond_2

    int-to-short p2, p1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    :pswitch_2
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    add-int/lit8 p1, p1, 0x1

    :goto_1
    iput p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->currentPromotedAddress:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
