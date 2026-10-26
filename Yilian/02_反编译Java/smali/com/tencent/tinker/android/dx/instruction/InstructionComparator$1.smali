.class public Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;
.super Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;->readInstructionsIntoHolders(Lcom/tencent/tinker/android/dx/instruction/ShortArrayCodeInput;I)[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;

.field public final synthetic val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->this$0:Lcom/tencent/tinker/android/dx/instruction/InstructionComparator;

    iput-object p3, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    invoke-direct {p0, p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionVisitor;)V

    return-void
.end method


# virtual methods
.method public visitFillArrayDataPayloadInsn(IILjava/lang/Object;II)V
    .locals 2

    new-instance v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput-object p3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->data:Ljava/lang/Object;

    iput p4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->size:I

    iput p5, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$FillArrayDataPayloadInstructionHolder;->elementWidth:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object v0, p2, p1

    return-void
.end method

.method public visitFiveRegisterInsn(IIIIIJIIIII)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    const/4 p2, 0x5

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iput p9, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    iput p10, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->c:I

    iput p11, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->d:I

    iput p12, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->e:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitFourRegisterInsn(IIIIIJIIII)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    const/4 p2, 0x4

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iput p9, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    iput p10, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->c:I

    iput p11, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->d:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitOneRegisterInsn(IIIIIJI)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    const/4 p2, 0x1

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitPackedSwitchPayloadInsn(III[I)V
    .locals 2

    new-instance v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->firstKey:I

    iput-object p4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$PackedSwitchPayloadInsntructionHolder;->targets:[I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object v0, p2, p1

    return-void
.end method

.method public visitRegisterRangeInsn(IIIIIJII)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    iput p9, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitSparseSwitchPayloadInsn(II[I[I)V
    .locals 2

    new-instance v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput-object p3, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->keys:[I

    iput-object p4, v0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$SparseSwitchPayloadInsntructionHolder;->targets:[I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object v0, p2, p1

    return-void
.end method

.method public visitThreeRegisterInsn(IIIIIJIII)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    const/4 p2, 0x3

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iput p9, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    iput p10, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->c:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitTwoRegisterInsn(IIIIIJII)V
    .locals 1

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    const/4 p2, 0x2

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->registerCount:I

    iput p8, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->a:I

    iput p9, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->b:I

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    return-void
.end method

.method public visitZeroRegisterInsn(IIIIIJ)V
    .locals 1

    if-eqz p2, :cond_0

    new-instance p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;-><init>(Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;)V

    invoke-static {p2}, Lcom/tencent/tinker/android/dx/instruction/InstructionCodec;->getInstructionFormat(I)I

    move-result v0

    iput v0, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->insnFormat:I

    iput p1, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->address:I

    iput p2, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->opcode:I

    iput p3, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->index:I

    iput p5, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->target:I

    iput-wide p6, p4, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;->literal:J

    iget-object p2, p0, Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$1;->val$result:[Lcom/tencent/tinker/android/dx/instruction/InstructionComparator$InstructionHolder;

    aput-object p4, p2, p1

    :cond_0
    return-void
.end method
