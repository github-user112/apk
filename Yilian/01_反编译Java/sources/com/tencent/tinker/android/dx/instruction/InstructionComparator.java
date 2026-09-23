package com.tencent.tinker.android.dx.instruction;

/* loaded from: classes.dex */
public abstract class InstructionComparator {
    public final com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] insnHolders1;
    public final com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] insnHolders2;
    public final short[] insns1;
    public final short[] insns2;
    public final java.util.Set<java.lang.String> visitedInsnAddrPairs;

    public static class FillArrayDataPayloadInstructionHolder extends com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder {
        public java.lang.Object data;
        public int elementWidth;
        public int size;

        public FillArrayDataPayloadInstructionHolder() {
            super();
            this.data = null;
            this.size = 0;
            this.elementWidth = 0;
        }
    }

    public static class InstructionHolder {
        public int a;
        public int address;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1189c;

        /* renamed from: d, reason: collision with root package name */
        public int f1190d;

        /* renamed from: e, reason: collision with root package name */
        public int f1191e;
        public int index;
        public int insnFormat;
        public long literal;
        public int opcode;
        public int registerCount;
        public int target;

        public InstructionHolder() {
            this.insnFormat = 0;
            this.address = -1;
            this.opcode = -1;
            this.index = 0;
            this.target = 0;
            this.literal = 0L;
            this.registerCount = 0;
            this.a = 0;
            this.b = 0;
            this.f1189c = 0;
            this.f1190d = 0;
            this.f1191e = 0;
        }
    }

    public static class PackedSwitchPayloadInsntructionHolder extends com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder {
        public int firstKey;
        public int[] targets;

        public PackedSwitchPayloadInsntructionHolder() {
            super();
            this.firstKey = 0;
            this.targets = null;
        }
    }

    public static class SparseSwitchPayloadInsntructionHolder extends com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder {
        public int[] keys;
        public int[] targets;

        public SparseSwitchPayloadInsntructionHolder() {
            super();
            this.keys = null;
            this.targets = null;
        }
    }

    public InstructionComparator(short[] sArr, short[] sArr2) {
        this.insns1 = sArr;
        this.insns2 = sArr2;
        if (sArr != null) {
            this.insnHolders1 = readInstructionsIntoHolders(new com.tencent.tinker.android.dx.instruction.ShortArrayCodeInput(sArr), sArr.length);
        } else {
            this.insnHolders1 = null;
        }
        if (sArr2 != null) {
            this.insnHolders2 = readInstructionsIntoHolders(new com.tencent.tinker.android.dx.instruction.ShortArrayCodeInput(sArr2), sArr2.length);
        } else {
            this.insnHolders2 = null;
        }
        this.visitedInsnAddrPairs = new java.util.HashSet();
    }

    private boolean compareIndex(int i, int i2, int i3) {
        int instructionIndexType = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionIndexType(i);
        return instructionIndexType != 2 ? instructionIndexType != 3 ? instructionIndexType != 4 ? instructionIndexType != 5 ? i2 == i3 : compareField(i2, i3) : compareMethod(i2, i3) : compareString(i2, i3) : compareType(i2, i3);
    }

    private int getPromotedOpCodeOnDemand(com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder) {
        int i = instructionHolder.opcode;
        if (i == 26 || i == 27) {
            return 27;
        }
        if (i == 40 || i == 41 || i == 42) {
            return 42;
        }
        return i;
    }

    private com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] readInstructionsIntoHolders(com.tencent.tinker.android.dx.instruction.ShortArrayCodeInput shortArrayCodeInput, int i) {
        shortArrayCodeInput.reset();
        final com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[i];
        try {
            new com.tencent.tinker.android.dx.instruction.InstructionReader(shortArrayCodeInput).accept(new com.tencent.tinker.android.dx.instruction.InstructionVisitor(null) { // from class: com.tencent.tinker.android.dx.instruction.InstructionComparator.1
                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitFillArrayDataPayloadInsn(int i2, int i3, java.lang.Object obj, int i4, int i5) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder fillArrayDataPayloadInstructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder();
                    fillArrayDataPayloadInstructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    fillArrayDataPayloadInstructionHolder.address = i2;
                    fillArrayDataPayloadInstructionHolder.opcode = i3;
                    fillArrayDataPayloadInstructionHolder.data = obj;
                    fillArrayDataPayloadInstructionHolder.size = i4;
                    fillArrayDataPayloadInstructionHolder.elementWidth = i5;
                    instructionHolderArr[i2] = fillArrayDataPayloadInstructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitFiveRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7, int i8, int i9, int i10, int i11) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = 5;
                    instructionHolder.a = i7;
                    instructionHolder.b = i8;
                    instructionHolder.f1189c = i9;
                    instructionHolder.f1190d = i10;
                    instructionHolder.f1191e = i11;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitFourRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7, int i8, int i9, int i10) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = 4;
                    instructionHolder.a = i7;
                    instructionHolder.b = i8;
                    instructionHolder.f1189c = i9;
                    instructionHolder.f1190d = i10;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitOneRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = 1;
                    instructionHolder.a = i7;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitPackedSwitchPayloadInsn(int i2, int i3, int i4, int[] iArr) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder packedSwitchPayloadInsntructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder();
                    packedSwitchPayloadInsntructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    packedSwitchPayloadInsntructionHolder.address = i2;
                    packedSwitchPayloadInsntructionHolder.opcode = i3;
                    packedSwitchPayloadInsntructionHolder.firstKey = i4;
                    packedSwitchPayloadInsntructionHolder.targets = iArr;
                    instructionHolderArr[i2] = packedSwitchPayloadInsntructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitRegisterRangeInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7, int i8) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = i8;
                    instructionHolder.a = i7;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitSparseSwitchPayloadInsn(int i2, int i3, int[] iArr, int[] iArr2) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder sparseSwitchPayloadInsntructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder();
                    sparseSwitchPayloadInsntructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    sparseSwitchPayloadInsntructionHolder.address = i2;
                    sparseSwitchPayloadInsntructionHolder.opcode = i3;
                    sparseSwitchPayloadInsntructionHolder.keys = iArr;
                    sparseSwitchPayloadInsntructionHolder.targets = iArr2;
                    instructionHolderArr[i2] = sparseSwitchPayloadInsntructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitThreeRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7, int i8, int i9) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = 3;
                    instructionHolder.a = i7;
                    instructionHolder.b = i8;
                    instructionHolder.f1189c = i9;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitTwoRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j, int i7, int i8) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                    instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                    instructionHolder.address = i2;
                    instructionHolder.opcode = i3;
                    instructionHolder.index = i4;
                    instructionHolder.target = i6;
                    instructionHolder.literal = j;
                    instructionHolder.registerCount = 2;
                    instructionHolder.a = i7;
                    instructionHolder.b = i8;
                    instructionHolderArr[i2] = instructionHolder;
                }

                @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
                public void visitZeroRegisterInsn(int i2, int i3, int i4, int i5, int i6, long j) {
                    if (i3 != 0) {
                        com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = new com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder();
                        instructionHolder.insnFormat = com.tencent.tinker.android.dx.instruction.InstructionCodec.getInstructionFormat(i3);
                        instructionHolder.address = i2;
                        instructionHolder.opcode = i3;
                        instructionHolder.index = i4;
                        instructionHolder.target = i6;
                        instructionHolder.literal = j;
                        instructionHolderArr[i2] = instructionHolder;
                    }
                }
            });
            return instructionHolderArr;
        } catch (java.io.EOFException e2) {
            throw new java.lang.RuntimeException(e2);
        }
    }

    public final boolean compare() {
        this.visitedInsnAddrPairs.clear();
        if (this.insnHolders1 == null && this.insnHolders2 == null) {
            return true;
        }
        if (this.insnHolders1 == null || this.insnHolders2 == null) {
            return false;
        }
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < this.insnHolders1.length && i2 < this.insnHolders2.length) {
            com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = null;
            com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder2 = null;
            while (true) {
                com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr = this.insnHolders1;
                if (i >= instructionHolderArr.length || instructionHolder2 != null) {
                    break;
                }
                instructionHolder2 = instructionHolderArr[i];
                i++;
            }
            if (instructionHolder2 == null) {
                break;
            }
            i3++;
            while (true) {
                com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr2 = this.insnHolders2;
                if (i2 >= instructionHolderArr2.length || instructionHolder != null) {
                    break;
                }
                instructionHolder = instructionHolderArr2[i2];
                i2++;
            }
            if (instructionHolder == null) {
                break;
            }
            i4++;
            if (!isSameInstruction(instructionHolder2, instructionHolder)) {
                return false;
            }
        }
        while (true) {
            com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr3 = this.insnHolders1;
            if (i < instructionHolderArr3.length) {
                int i5 = i + 1;
                if (instructionHolderArr3[i] != null) {
                    return false;
                }
                i = i5;
            } else {
                while (true) {
                    com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr4 = this.insnHolders2;
                    if (i2 >= instructionHolderArr4.length) {
                        return i3 == i4;
                    }
                    int i6 = i2 + 1;
                    if (instructionHolderArr4[i2] != null) {
                        return false;
                    }
                    i2 = i6;
                }
            }
        }
    }

    public abstract boolean compareField(int i, int i2);

    public abstract boolean compareMethod(int i, int i2);

    public abstract boolean compareString(int i, int i2);

    public abstract boolean compareType(int i, int i2);

    public boolean isSameInstruction(int i, int i2) {
        com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr = this.insnHolders1;
        com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder = i < instructionHolderArr.length ? instructionHolderArr[i] : null;
        com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder[] instructionHolderArr2 = this.insnHolders2;
        return isSameInstruction(instructionHolder, i2 < instructionHolderArr2.length ? instructionHolderArr2[i2] : null);
    }

    public boolean isSameInstruction(com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder, com.tencent.tinker.android.dx.instruction.InstructionComparator.InstructionHolder instructionHolder2) {
        if (instructionHolder == null && instructionHolder2 == null) {
            return true;
        }
        if (instructionHolder == null || instructionHolder2 == null || getPromotedOpCodeOnDemand(instructionHolder) != getPromotedOpCodeOnDemand(instructionHolder2)) {
            return false;
        }
        int i = instructionHolder.opcode;
        int i2 = instructionHolder.insnFormat;
        if (i2 != 2 && i2 != 11) {
            if (i2 != 13) {
                if (i2 != 15 && i2 != 21 && i2 != 7) {
                    if (i2 != 8) {
                        if (i2 != 18) {
                            if (i2 != 19 && i2 != 23 && i2 != 24) {
                                switch (i2) {
                                    case 26:
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder fillArrayDataPayloadInstructionHolder = (com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder) instructionHolder;
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder fillArrayDataPayloadInstructionHolder2 = (com.tencent.tinker.android.dx.instruction.InstructionComparator.FillArrayDataPayloadInstructionHolder) instructionHolder2;
                                        int i3 = fillArrayDataPayloadInstructionHolder.elementWidth;
                                        if (i3 != fillArrayDataPayloadInstructionHolder2.elementWidth || fillArrayDataPayloadInstructionHolder.size != fillArrayDataPayloadInstructionHolder2.size) {
                                            return false;
                                        }
                                        if (i3 == 1) {
                                            return com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare((byte[]) fillArrayDataPayloadInstructionHolder.data, (byte[]) fillArrayDataPayloadInstructionHolder2.data) == 0;
                                        }
                                        if (i3 == 2) {
                                            return com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare((short[]) fillArrayDataPayloadInstructionHolder.data, (short[]) fillArrayDataPayloadInstructionHolder2.data) == 0;
                                        }
                                        if (i3 == 4) {
                                            return com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare((int[]) fillArrayDataPayloadInstructionHolder.data, (int[]) fillArrayDataPayloadInstructionHolder2.data) == 0;
                                        }
                                        if (i3 == 8) {
                                            return com.tencent.tinker.android.dex.util.CompareUtils.sArrCompare((long[]) fillArrayDataPayloadInstructionHolder.data, (long[]) fillArrayDataPayloadInstructionHolder2.data) == 0;
                                        }
                                        java.lang.StringBuilder sbO = e.a.c.a.a.o("bogus element_width: ");
                                        sbO.append(com.tencent.tinker.android.dx.util.Hex.u2(i3));
                                        throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
                                    case 27:
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder packedSwitchPayloadInsntructionHolder = (com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder) instructionHolder;
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder packedSwitchPayloadInsntructionHolder2 = (com.tencent.tinker.android.dx.instruction.InstructionComparator.PackedSwitchPayloadInsntructionHolder) instructionHolder2;
                                        if (packedSwitchPayloadInsntructionHolder.firstKey != packedSwitchPayloadInsntructionHolder2.firstKey) {
                                            return false;
                                        }
                                        int[] iArr = packedSwitchPayloadInsntructionHolder.targets;
                                        if (iArr.length != packedSwitchPayloadInsntructionHolder2.targets.length) {
                                            return false;
                                        }
                                        int length = iArr.length;
                                        for (int i4 = 0; i4 < length; i4++) {
                                            if (!isSameInstruction(packedSwitchPayloadInsntructionHolder.targets[i4], packedSwitchPayloadInsntructionHolder2.targets[i4])) {
                                                return false;
                                            }
                                        }
                                        return true;
                                    case 28:
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder sparseSwitchPayloadInsntructionHolder = (com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder) instructionHolder;
                                        com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder sparseSwitchPayloadInsntructionHolder2 = (com.tencent.tinker.android.dx.instruction.InstructionComparator.SparseSwitchPayloadInsntructionHolder) instructionHolder2;
                                        if (com.tencent.tinker.android.dex.util.CompareUtils.uArrCompare(sparseSwitchPayloadInsntructionHolder.keys, sparseSwitchPayloadInsntructionHolder2.keys) != 0) {
                                            return false;
                                        }
                                        int[] iArr2 = sparseSwitchPayloadInsntructionHolder.targets;
                                        if (iArr2.length != sparseSwitchPayloadInsntructionHolder2.targets.length) {
                                            return false;
                                        }
                                        int length2 = iArr2.length;
                                        for (int i5 = 0; i5 < length2; i5++) {
                                            if (!isSameInstruction(sparseSwitchPayloadInsntructionHolder.targets[i5], sparseSwitchPayloadInsntructionHolder2.targets[i5])) {
                                                return false;
                                            }
                                        }
                                        return true;
                                    default:
                                        return instructionHolder.literal == instructionHolder2.literal && instructionHolder.registerCount == instructionHolder2.registerCount && instructionHolder.a == instructionHolder2.a && instructionHolder.b == instructionHolder2.b && instructionHolder.f1189c == instructionHolder2.f1189c && instructionHolder.f1190d == instructionHolder2.f1190d && instructionHolder.f1191e == instructionHolder2.f1191e;
                                }
                            }
                        }
                    }
                }
            }
            return compareIndex(i, instructionHolder.index, instructionHolder2.index);
        }
        if (this.visitedInsnAddrPairs.add(instructionHolder.address + "-" + instructionHolder2.address)) {
            return isSameInstruction(instructionHolder.target, instructionHolder2.target);
        }
        return true;
    }
}
