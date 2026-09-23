.class public final Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;
.super Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InstructionTransformVisitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-direct {p0, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V

    return-void
.end method

.method private transformIndexIfNeeded(II)I
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-static {p2}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;)Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFieldIdIndex(I)I

    move-result p1

    return p1

    :cond_1
    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-static {p2}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;)Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethodIdIndex(I)I

    move-result p1

    return p1

    :cond_2
    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-static {p2}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;)Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result p1

    return p1

    :cond_3
    iget-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;

    invoke-static {p2}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;->access$000(Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer;)Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 14

    move-object v13, p0

    move/from16 v0, p3

    move/from16 v4, p4

    invoke-direct {p0, v0, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-super/range {v0 .. v12}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFiveRegisterInsn(IIIIIJIIIII)V

    return-void
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
    .locals 13

    move-object v12, p0

    move/from16 v0, p3

    move/from16 v4, p4

    invoke-direct {p0, v0, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-super/range {v0 .. v11}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitFourRegisterInsn(IIIIIJIIII)V

    return-void
.end method

.method public visitOneRegisterInsn(IIIIIJI)V
    .locals 10

    move-object v9, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-super/range {v0 .. v8}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitOneRegisterInsn(IIIIIJI)V

    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 11

    move-object v10, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitRegisterRangeInsn(IIIIIJII)V

    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 12

    move-object v11, p0

    move v0, p3

    move/from16 v4, p4

    invoke-direct {p0, p3, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-super/range {v0 .. v10}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitThreeRegisterInsn(IIIIIJIII)V

    return-void
.end method

.method public visitTwoRegisterInsn(IIIIIJII)V
    .locals 11

    move-object v10, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitTwoRegisterInsn(IIIIIJII)V

    return-void
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 8

    invoke-direct {p0, p3, p4}, Lcom/tencent/tinker/commons/dexpatcher/util/InstructionTransformer$InstructionTransformVisitor;->transformIndexIfNeeded(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-super/range {v0 .. v7}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;->visitZeroRegisterInsn(IIIIIJ)V

    return-void
.end method
