.class public Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    return-void
.end method


# virtual methods
.method public visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFiveRegisterInsn(IIIIIJIIIII)V

    :cond_0
    return-void
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFourRegisterInsn(IIIIIJIIII)V

    :cond_0
    return-void
.end method

.method public visitOneRegisterInsn(IIIIIJI)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitOneRegisterInsn(IIIIIJI)V

    :cond_0
    return-void
.end method

.method public visitPackedSwitchPayloadInsn(III[I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitPackedSwitchPayloadInsn(III[I)V

    :cond_0
    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitRegisterRangeInsn(IIIIIJII)V

    :cond_0
    return-void
.end method

.method public visitSparseSwitchPayloadInsn(II[I[I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitSparseSwitchPayloadInsn(II[I[I)V

    :cond_0
    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitThreeRegisterInsn(IIIIIJIII)V

    :cond_0
    return-void
.end method

.method public visitTwoRegisterInsn(IIIIIJII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitTwoRegisterInsn(IIIIIJII)V

    :cond_0
    return-void
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 8

    iget-object v0, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->prevIv:Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitZeroRegisterInsn(IIIIIJ)V

    :cond_0
    return-void
.end method
