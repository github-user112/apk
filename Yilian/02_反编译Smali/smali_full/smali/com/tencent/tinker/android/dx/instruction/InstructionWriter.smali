.class public final Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;
.super Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.source ""


# instance fields
.field public final codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

.field public final hasPromoter:Z

.field public final insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    iput-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    return-void
.end method


# virtual methods
.method public visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V
    .locals 0

    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    int-to-short p1, p5

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    const/4 p1, 0x1

    if-eq p5, p1, :cond_3

    const/4 p1, 0x2

    if-eq p5, p1, :cond_2

    const/4 p1, 0x4

    if-eq p5, p1, :cond_1

    const/16 p1, 0x8

    if-ne p5, p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    check-cast p3, [J

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write([J)V

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
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    check-cast p3, [I

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write([I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    check-cast p3, [S

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write([S)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    check-cast p3, [B

    invoke-virtual {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write([B)V

    :goto_0
    return-void
.end method

.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 0

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
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x5

    invoke-static {p12, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8, p9, p10, p11}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

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
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x0

    const/4 p5, 0x4

    invoke-static {p4, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8, p9, p10, p11}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    return-void

    nop

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
    .locals 1

    iget-boolean p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    invoke-virtual {p1, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->getPromotedAddress(I)I

    move-result p5

    :cond_0
    const/16 p1, 0x22

    if-eq p2, p1, :cond_8

    const/16 p1, 0x24

    if-eq p2, p1, :cond_7

    const/16 p1, 0x26

    const/16 p4, 0x2c

    const/16 v0, 0x2b

    if-eq p2, p1, :cond_5

    const/16 p1, 0x27

    if-eq p2, p1, :cond_4

    if-eq p2, v0, :cond_5

    if-eq p2, p4, :cond_5

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
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    const p4, 0xffff

    if-eqz p1, :cond_1

    if-le p3, p4, :cond_8

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/16 p2, 0x1b

    :goto_0
    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit0(I)S

    move-result p4

    invoke-static {p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit1(I)S

    move-result p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto/16 :goto_6

    :cond_1
    if-gt p3, p4, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    const-string p2, "string index out of bound: "

    invoke-static {p2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Lcom/tencent/tinker/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", perhaps you need to enable force jumbo mode."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p4

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit0(J)S

    move-result p5

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit1(J)S

    move-result p1

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit2(J)S

    move-result p2

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit3(J)S

    move-result p8

    move p6, p1

    move p7, p2

    invoke-virtual/range {p3 .. p8}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSSSS)V

    goto/16 :goto_6

    :pswitch_3
    const/16 p1, 0x15

    if-ne p2, p1, :cond_3

    const/16 p1, 0x10

    goto :goto_1

    :cond_3
    const/16 p1, 0x30

    :goto_1
    shr-long p3, p6, p1

    long-to-int p1, p3

    int-to-short p1, p1

    goto/16 :goto_5

    :pswitch_4
    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getLiteralInt(J)I

    move-result p1

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getLiteralUnit(J)S

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto/16 :goto_6

    :pswitch_6
    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getLiteralNibble(J)I

    move-result p3

    invoke-static {p8, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p3

    invoke-static {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    goto :goto_6

    :pswitch_7
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTargetUnit(II)S

    move-result p1

    goto :goto_5

    :cond_4
    :pswitch_8
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    goto :goto_6

    :cond_5
    if-eq p2, v0, :cond_6

    if-eq p2, p4, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p3

    invoke-virtual {p1, p5, p3}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->setBaseAddress(II)V

    :goto_2
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p1

    :goto_3
    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit0(I)S

    move-result p4

    invoke-static {p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit1(I)S

    move-result p1

    invoke-virtual {p3, p2, p4, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_6

    :cond_7
    :pswitch_9
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-static {p5, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8, p5, p5, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_6

    :cond_8
    :goto_4
    :pswitch_a
    int-to-short p1, p3

    :goto_5
    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-virtual {p3, p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public visitPackedSwitchPayloadInsn(III[I)V
    .locals 2

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressForCursor()I

    move-result p1

    int-to-short p2, p2

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {v0, p2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    array-length v0, p4

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->asUnsignedUnit(I)S

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p2, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    iget-boolean p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    array-length p2, p4

    :goto_0
    if-ge p3, p2, :cond_1

    aget v0, p4, p3

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->getPromotedAddress(I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p4

    :goto_1
    if-ge p3, p2, :cond_1

    aget v0, p4, p3

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 0

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
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getAUnit(I)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    return-void

    nop

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
    .locals 4

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressForCursor()I

    move-result p1

    int-to-short p2, p2

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {v0, p2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    array-length v0, p4

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->asUnsignedUnit(I)S

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p3, v1

    iget-object v3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {v3, v2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p2, :cond_1

    array-length p2, p4

    :goto_1
    if-ge v0, p2, :cond_2

    aget p3, p4, v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    invoke-virtual {v1, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->getPromotedAddress(I)I

    move-result p3

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    sub-int/2addr p3, p1

    invoke-virtual {v1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    array-length p2, p4

    :goto_2
    if-ge v0, p2, :cond_2

    aget p3, p4, v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    sub-int/2addr p3, p1

    invoke-virtual {v1, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 0

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
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p9, p10}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto :goto_0

    :cond_0
    :pswitch_1
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x3

    const/4 p5, 0x0

    invoke-static {p5, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8, p9, p10, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    :goto_0
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

    iget-boolean p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    invoke-virtual {p1, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->getPromotedAddress(I)I

    move-result p5

    :cond_0
    const/16 p1, 0x20

    if-eq p2, p1, :cond_3

    const/16 p1, 0x21

    if-eq p2, p1, :cond_2

    const/16 p1, 0x23

    if-eq p2, p1, :cond_3

    const/16 p1, 0x24

    if-eq p2, p1, :cond_1

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

    :pswitch_0
    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getAUnit(I)S

    move-result p3

    invoke-static {p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getBUnit(I)S

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getBUnit(I)S

    move-result p3

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTargetUnit(II)S

    move-result p1

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p8}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getLiteralByte(J)I

    move-result p3

    invoke-static {p9, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p3

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p8, p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p3

    invoke-static {p2, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p6, p7}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getLiteralUnit(J)S

    move-result p3

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto :goto_2

    :cond_1
    :pswitch_5
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-static {p5, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p8, p9, p5, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_2

    :cond_2
    :pswitch_6
    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p8, p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p3

    invoke-static {p1, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p1

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    goto :goto_2

    :cond_3
    :pswitch_7
    int-to-short p1, p3

    :goto_1
    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p8, p9}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p4

    invoke-static {p2, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-virtual {p3, p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_1
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
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
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
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 0

    iget-boolean p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->insnPromoter:Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;

    invoke-virtual {p1, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionPromoter;->getPromotedAddress(I)I

    move-result p5

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    if-eqz p2, :cond_7

    const/16 p1, 0xe

    if-eq p2, p1, :cond_7

    const/16 p1, 0x24

    if-eq p2, p1, :cond_6

    const/16 p1, 0x2a

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
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p1

    int-to-short p2, p2

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit0(I)S

    move-result p4

    invoke-static {p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit1(I)S

    move-result p1

    invoke-virtual {p3, p2, p4, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p3

    invoke-static {p5, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p3

    int-to-short p4, p3

    if-eq p3, p4, :cond_1

    goto :goto_0

    :cond_1
    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTargetUnit(II)S

    move-result p1

    int-to-short p2, p2

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p3, p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto :goto_2

    :pswitch_2
    iget-boolean p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->hasPromoter:Z

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p3}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p3

    invoke-static {p5, p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTarget(II)I

    move-result p3

    int-to-byte p4, p3

    if-eq p3, p4, :cond_4

    int-to-short p2, p3

    if-eq p3, p2, :cond_3

    :goto_0
    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit0(I)S

    move-result p4

    invoke-static {p3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->unit1(I)S

    move-result p3

    invoke-virtual {p2, p1, p4, p3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_2

    :cond_3
    const/16 p1, 0x29

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SS)V

    goto :goto_2

    :cond_4
    and-int/lit16 p1, p3, 0xff

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result p1

    invoke-static {p5, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getTargetByte(II)I

    move-result p1

    :goto_1
    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-static {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p1

    invoke-virtual {p3, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    goto :goto_2

    :cond_6
    :pswitch_3
    int-to-short p1, p3

    iget-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    const/4 p4, 0x0

    invoke-static {p4, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->makeByte(II)I

    move-result p5

    invoke-static {p2, p5}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(II)S

    move-result p2

    invoke-static {p4, p4, p4, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->codeUnit(IIII)S

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(SSS)V

    goto :goto_2

    :cond_7
    int-to-short p1, p2

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionWriter;->codeOut:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeOutput;->write(S)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
