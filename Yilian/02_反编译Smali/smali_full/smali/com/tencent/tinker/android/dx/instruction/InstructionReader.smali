.class public final Lcom/tencent/tinker/android/dx/instruction/InstructionReader;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    return-void
.end method


# virtual methods
.method public accept(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->reset()V

    :goto_0
    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->cursor()I

    move-result v2

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/Opcodes;->extractOpcodeFromUnit(I)I

    move-result v1

    const/16 v4, 0x100

    const/4 v5, 0x0

    if-eq v1, v4, :cond_15

    const/16 v4, 0x200

    if-eq v1, v4, :cond_12

    const/16 v4, 0x300

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v4, :cond_8

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unknown opcode: "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/tencent/tinker/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    int-to-short v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/2addr v4, v2

    goto :goto_2

    :pswitch_1
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v3

    iget-object v5, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v5}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v5

    int-to-short v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    add-int/2addr v5, v2

    goto/16 :goto_12

    :pswitch_2
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/2addr v4, v2

    goto/16 :goto_6

    :pswitch_3
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    int-to-short v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    add-int/2addr v4, v2

    goto/16 :goto_6

    :pswitch_4
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    add-int/2addr v3, v2

    const-wide/16 v6, 0x0

    goto/16 :goto_7

    :pswitch_5
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x2c

    if-eq v1, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6, v2}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->setBaseAddress(II)V

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_2
    const-wide/16 v7, 0x0

    goto/16 :goto_c

    :pswitch_6
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v4

    goto/16 :goto_a

    :pswitch_7
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readLong()J

    move-result-wide v4

    goto :goto_4

    :pswitch_8
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    int-to-short v4, v4

    int-to-long v4, v4

    const/16 v6, 0x15

    if-ne v1, v6, :cond_1

    const/16 v6, 0x10

    goto :goto_3

    :cond_1
    const/16 v6, 0x30

    :goto_3
    shl-long/2addr v4, v6

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v9, v3

    move-wide v7, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v3, v1

    goto/16 :goto_d

    :pswitch_9
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v4

    goto :goto_5

    :pswitch_a
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    int-to-short v4, v4

    goto :goto_5

    :pswitch_b
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1c

    shr-int/lit8 v3, v3, 0x1c

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    int-to-long v8, v4

    move-wide v7, v8

    const/4 v4, 0x0

    goto/16 :goto_c

    :pswitch_c
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_b

    :pswitch_d
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    iget-object v5, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v5}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v5

    goto/16 :goto_e

    :pswitch_e
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    goto/16 :goto_10

    :pswitch_f
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    :goto_6
    int-to-long v7, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-wide v6, v7

    :goto_7
    move-wide v7, v6

    move v6, v3

    move v3, v1

    goto/16 :goto_9

    :pswitch_10
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v7, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_9

    :pswitch_11
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v13

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v1

    iget-object v3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v5

    iget-object v3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble0(I)I

    move-result v9

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble1(I)I

    move-result v10

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v11

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v12

    invoke-static {v4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionIndexType(I)I

    move-result v15

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_3

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFiveRegisterInsn(IIIIIJIIIII)V

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/tencent/tinker/android/dex/DexException;

    const-string v3, "bogus registerCount: "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/tencent/tinker/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v15

    invoke-virtual/range {v1 .. v12}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFourRegisterInsn(IIIIIJIIII)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move v3, v4

    move v4, v5

    move-wide v7, v6

    move v5, v15

    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_5
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move v3, v4

    move v4, v5

    move-wide v7, v6

    move v5, v15

    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_6
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move v3, v4

    move v4, v5

    move-wide v7, v6

    move v5, v15

    const/4 v6, 0x0

    goto :goto_d

    :cond_7
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    move v3, v4

    move v4, v5

    move-wide v7, v6

    move v5, v15

    goto/16 :goto_8

    :goto_9
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitZeroRegisterInsn(IIIIIJ)V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    :goto_a
    invoke-static {v1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionIndexType(I)I

    move-result v5

    move v6, v5

    move v5, v4

    :goto_b
    const/4 v4, 0x0

    goto/16 :goto_2

    :goto_c
    move v9, v3

    move v3, v1

    move/from16 v16, v6

    move v6, v4

    move v4, v5

    move/from16 v5, v16

    :goto_d
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitOneRegisterInsn(IIIIIJI)V

    goto/16 :goto_0

    :pswitch_13
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v3

    iget-object v5, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v5}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v5

    invoke-static {v1}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionIndexType(I)I

    move-result v6

    move v7, v6

    move v6, v5

    goto/16 :goto_11

    :pswitch_14
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v10

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v5

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v9

    invoke-static {v4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionIndexType(I)I

    move-result v6

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitRegisterRangeInsn(IIIIIJII)V

    goto/16 :goto_0

    :pswitch_15
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v4

    iget-object v3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v5

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    int-to-byte v3, v3

    goto :goto_e

    :pswitch_16
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v5

    iget-object v3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v3

    int-to-short v3, v3

    :goto_e
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    int-to-long v9, v3

    goto :goto_13

    :pswitch_17
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v3

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v5

    invoke-static {v4}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte1(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v11, v4

    move-wide v7, v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v9, v3

    move v10, v5

    const/4 v5, 0x1

    move v3, v1

    :goto_f
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitThreeRegisterInsn(IIIIIJIII)V

    goto/16 :goto_0

    :pswitch_18
    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->byte0(I)I

    move-result v1

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble2(I)I

    move-result v4

    invoke-static {v3}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->nibble3(I)I

    move-result v3

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_10
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v16, v4

    move v4, v3

    move/from16 v3, v16

    :goto_11
    const/4 v5, 0x0

    :goto_12
    const-wide/16 v9, 0x0

    move v8, v5

    move v5, v3

    :goto_13
    move v3, v1

    move-wide/from16 v16, v9

    move v9, v4

    move v10, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-wide/from16 v7, v16

    :goto_14
    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitTwoRegisterInsn(IIIIIJII)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v1

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v9

    const/16 v4, 0x8

    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_d

    if-eq v1, v6, :cond_b

    if-ne v1, v4, :cond_a

    new-array v4, v9, [J

    :goto_15
    if-ge v5, v9, :cond_9

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_9
    const/16 v6, 0x8

    move-object/from16 v1, p1

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Lcom/tencent/tinker/android/dex/DexException;

    const-string v3, "bogus element_width: "

    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/tencent/tinker/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-array v4, v9, [I

    :goto_16
    if-ge v5, v9, :cond_c

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v1

    aput v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_c
    const/4 v6, 0x4

    move-object/from16 v1, p1

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_d
    new-array v4, v9, [S

    :goto_17
    if-ge v5, v9, :cond_e

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_e
    const/4 v6, 0x2

    move-object/from16 v1, p1

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_f
    new-array v6, v9, [B

    const/4 v1, 0x0

    :goto_18
    if-ge v5, v9, :cond_11

    if-eqz v8, :cond_10

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v1

    :cond_10
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    shr-int/2addr v1, v4

    add-int/lit8 v5, v5, 0x1

    xor-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_11
    const/4 v7, 0x1

    move-object/from16 v1, p1

    move-object v4, v6

    move v5, v9

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_12
    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressForCursor()I

    move-result v1

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    new-array v6, v4, [I

    new-array v7, v4, [I

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v4, :cond_13

    iget-object v9, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v9}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_13
    :goto_1a
    if-ge v5, v4, :cond_14

    iget-object v8, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v8}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v8

    add-int/2addr v8, v1

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_14
    invoke-virtual {v14, v2, v3, v6, v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitSparseSwitchPayloadInsn(II[I[I)V

    goto/16 :goto_0

    :cond_15
    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dx/instruction/CodeCursor;->baseAddressForCursor()I

    move-result v1

    iget-object v4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v4}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->read()I

    move-result v4

    iget-object v6, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v6}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v6

    new-array v7, v4, [I

    :goto_1b
    if-ge v5, v4, :cond_16

    iget-object v8, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionReader;->codeIn:Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;

    invoke-virtual {v8}, Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;->readInt()I

    move-result v8

    add-int/2addr v8, v1

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_16
    invoke-virtual {v14, v2, v3, v6, v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitPackedSwitchPayloadInsn(III[I)V

    goto/16 :goto_0

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_18
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_12
        :pswitch_6
        :pswitch_12
        :pswitch_c
        :pswitch_c
        :pswitch_12
        :pswitch_13
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_14
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x74
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
