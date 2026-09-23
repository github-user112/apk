package com.tencent.tinker.commons.dexpatcher.util;

/* loaded from: classes.dex */
public final class InstructionTransformer {
    public final com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap indexMap;

    public final class InstructionTransformVisitor extends com.tencent.tinker.android.dx.instruction.InstructionVisitor {
        public InstructionTransformVisitor(com.tencent.tinker.android.dx.instruction.InstructionVisitor instructionVisitor) {
            super(instructionVisitor);
        }

        private int transformIndexIfNeeded(int i, int i2) {
            return i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? i : com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.this.indexMap.adjustFieldIdIndex(i) : com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.this.indexMap.adjustMethodIdIndex(i) : com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.this.indexMap.adjustStringIndex(i) : com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.this.indexMap.adjustTypeIdIndex(i);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitFiveRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9, int i10) {
            super.visitFiveRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6, i7, i8, i9, i10);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitFourRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9) {
            super.visitFourRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6, i7, i8, i9);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitOneRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6) {
            super.visitOneRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitRegisterRangeInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7) {
            super.visitRegisterRangeInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6, i7);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitThreeRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8) {
            super.visitThreeRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6, i7, i8);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitTwoRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7) {
            super.visitTwoRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j, i6, i7);
        }

        @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
        public void visitZeroRegisterInsn(int i, int i2, int i3, int i4, int i5, long j) {
            super.visitZeroRegisterInsn(i, i2, transformIndexIfNeeded(i3, i4), i4, i5, j);
        }
    }

    public InstructionTransformer(com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap) {
        this.indexMap = abstractIndexMap;
    }

    public short[] transform(short[] sArr) {
        com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput shortArrayCodeOutput = new com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput(sArr.length);
        com.tencent.tinker.android.dx.instruction.InstructionPromoter instructionPromoter = new com.tencent.tinker.android.dx.instruction.InstructionPromoter();
        com.tencent.tinker.android.dx.instruction.InstructionWriter instructionWriter = new com.tencent.tinker.android.dx.instruction.InstructionWriter(shortArrayCodeOutput, instructionPromoter);
        com.tencent.tinker.android.dx.instruction.InstructionReader instructionReader = new com.tencent.tinker.android.dx.instruction.InstructionReader(new com.tencent.tinker.android.dx.instruction.ShortArrayCodeInput(sArr));
        try {
            instructionReader.accept(new com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.InstructionTransformVisitor(instructionPromoter));
            instructionReader.accept(new com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer.InstructionTransformVisitor(instructionWriter));
            return shortArrayCodeOutput.getArray();
        } catch (java.io.EOFException e2) {
            throw new com.tencent.tinker.android.dex.DexException(e2);
        }
    }
}
