package com.tencent.tinker.android.dx.instruction;

/* loaded from: classes.dex */
public final class InstructionWriter extends com.tencent.tinker.android.dx.instruction.InstructionVisitor {
    public final com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput codeOut;
    public final boolean hasPromoter;
    public final com.tencent.tinker.android.dx.instruction.InstructionPromoter insnPromoter;

    public InstructionWriter(com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput shortArrayCodeOutput, com.tencent.tinker.android.dx.instruction.InstructionPromoter instructionPromoter) {
        super(null);
        this.codeOut = shortArrayCodeOutput;
        this.insnPromoter = instructionPromoter;
        this.hasPromoter = instructionPromoter != null;
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFillArrayDataPayloadInsn(int i, int i2, java.lang.Object obj, int i3, int i4) {
        this.codeOut.write((short) i2);
        this.codeOut.write((short) i4);
        this.codeOut.writeInt(i3);
        if (i4 == 1) {
            this.codeOut.write((byte[]) obj);
            return;
        }
        if (i4 == 2) {
            this.codeOut.write((short[]) obj);
            return;
        }
        if (i4 == 4) {
            this.codeOut.write((int[]) obj);
        } else if (i4 == 8) {
            this.codeOut.write((long[]) obj);
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("bogus element_width: ");
            sbO.append(com.tencent.tinker.android.dx.util.Hex.u2(i4));
            throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
        }
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFiveRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9, int i10) {
        if (i2 != 36) {
            switch (i2) {
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                    break;
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("unexpected opcode: ");
                    sbO.append(com.tencent.tinker.android.dx.util.Hex.u2or4(i2));
                    throw new java.lang.IllegalStateException(sbO.toString());
            }
        }
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i2, com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(i10, 5)), (short) i3, com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i6, i7, i8, i9));
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFourRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9) {
        if (i2 != 36) {
            switch (i2) {
                case 110:
                case 111:
                case 112:
                case 113:
                case 114:
                    break;
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("unexpected opcode: ");
                    sbO.append(com.tencent.tinker.android.dx.util.Hex.u2or4(i2));
                    throw new java.lang.IllegalStateException(sbO.toString());
            }
        }
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i2, com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(0, 4)), (short) i3, com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i6, i7, i8, i9));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitOneRegisterInsn(int r2, int r3, int r4, int r5, int r6, long r7, int r9) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionWriter.visitOneRegisterInsn(int, int, int, int, int, long, int):void");
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitPackedSwitchPayloadInsn(int i, int i2, int i3, int[] iArr) {
        int iBaseAddressForCursor = this.codeOut.baseAddressForCursor();
        this.codeOut.write((short) i2);
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.asUnsignedUnit(iArr.length));
        this.codeOut.writeInt(i3);
        int i4 = 0;
        if (!this.hasPromoter) {
            int length = iArr.length;
            while (i4 < length) {
                this.codeOut.writeInt(iArr[i4] - iBaseAddressForCursor);
                i4++;
            }
            return;
        }
        int length2 = iArr.length;
        while (i4 < length2) {
            this.codeOut.writeInt(this.insnPromoter.getPromotedAddress(iArr[i4]) - iBaseAddressForCursor);
            i4++;
        }
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitRegisterRangeInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7) {
        if (i2 != 37) {
            switch (i2) {
                case 116:
                case 117:
                case 118:
                case 119:
                case 120:
                    break;
                default:
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("unexpected opcode: ");
                    sbO.append(com.tencent.tinker.android.dx.util.Hex.u2or4(i2));
                    throw new java.lang.IllegalStateException(sbO.toString());
            }
        }
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i2, i7), (short) i3, com.tencent.tinker.android.dx.instruction.InstructionCodec.getAUnit(i6));
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitSparseSwitchPayloadInsn(int i, int i2, int[] iArr, int[] iArr2) {
        int iBaseAddressForCursor = this.codeOut.baseAddressForCursor();
        this.codeOut.write((short) i2);
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.asUnsignedUnit(iArr2.length));
        int i3 = 0;
        for (int i4 : iArr) {
            this.codeOut.writeInt(i4);
        }
        if (!this.hasPromoter) {
            int length = iArr2.length;
            while (i3 < length) {
                this.codeOut.writeInt(iArr2[i3] - iBaseAddressForCursor);
                i3++;
            }
            return;
        }
        int length2 = iArr2.length;
        while (i3 < length2) {
            this.codeOut.writeInt(this.insnPromoter.getPromotedAddress(iArr2[i3]) - iBaseAddressForCursor);
            i3++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027 A[FALL_THROUGH] */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitThreeRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6, int r8, int r9, int r10) {
        /*
            r0 = this;
            r1 = 36
            if (r2 == r1) goto L35
            switch(r2) {
                case 45: goto L27;
                case 46: goto L27;
                case 47: goto L27;
                case 48: goto L27;
                case 49: goto L27;
                default: goto L7;
            }
        L7:
            switch(r2) {
                case 68: goto L27;
                case 69: goto L27;
                case 70: goto L27;
                case 71: goto L27;
                case 72: goto L27;
                case 73: goto L27;
                case 74: goto L27;
                case 75: goto L27;
                case 76: goto L27;
                case 77: goto L27;
                case 78: goto L27;
                case 79: goto L27;
                case 80: goto L27;
                case 81: goto L27;
                default: goto La;
            }
        La:
            switch(r2) {
                case 110: goto L35;
                case 111: goto L35;
                case 112: goto L35;
                case 113: goto L35;
                case 114: goto L35;
                default: goto Ld;
            }
        Ld:
            switch(r2) {
                case 144: goto L27;
                case 145: goto L27;
                case 146: goto L27;
                case 147: goto L27;
                case 148: goto L27;
                case 149: goto L27;
                case 150: goto L27;
                case 151: goto L27;
                case 152: goto L27;
                case 153: goto L27;
                case 154: goto L27;
                case 155: goto L27;
                case 156: goto L27;
                case 157: goto L27;
                case 158: goto L27;
                case 159: goto L27;
                case 160: goto L27;
                case 161: goto L27;
                case 162: goto L27;
                case 163: goto L27;
                case 164: goto L27;
                case 165: goto L27;
                case 166: goto L27;
                case 167: goto L27;
                case 168: goto L27;
                case 169: goto L27;
                case 170: goto L27;
                case 171: goto L27;
                case 172: goto L27;
                case 173: goto L27;
                case 174: goto L27;
                case 175: goto L27;
                default: goto L10;
            }
        L10:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L27:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r1 = r0.codeOut
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r8)
            short r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r9, r10)
            r1.write(r2, r3)
            goto L49
        L35:
            short r1 = (short) r3
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r3 = r0.codeOut
            r4 = 3
            r5 = 0
            int r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(r5, r4)
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r4)
            short r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r8, r9, r10, r5)
            r3.write(r2, r1, r4)
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionWriter.visitThreeRegisterInsn(int, int, int, int, int, long, int, int, int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ad  */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitTwoRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6, int r8, int r9) {
        /*
            r0 = this;
            boolean r1 = r0.hasPromoter
            if (r1 == 0) goto La
            com.tencent.tinker.android.dx.instruction.InstructionPromoter r1 = r0.insnPromoter
            int r5 = r1.getPromotedAddress(r5)
        La:
            r1 = 32
            if (r2 == r1) goto Lad
            r1 = 33
            if (r2 == r1) goto L9e
            r1 = 35
            if (r2 == r1) goto Lad
            r1 = 36
            if (r2 == r1) goto L89
            switch(r2) {
                case 1: goto L9e;
                case 2: goto L52;
                case 3: goto L43;
                case 4: goto L9e;
                case 5: goto L52;
                case 6: goto L43;
                case 7: goto L9e;
                case 8: goto L52;
                case 9: goto L43;
                default: goto L1d;
            }
        L1d:
            switch(r2) {
                case 50: goto L5d;
                case 51: goto L5d;
                case 52: goto L5d;
                case 53: goto L5d;
                case 54: goto L5d;
                case 55: goto L5d;
                default: goto L20;
            }
        L20:
            switch(r2) {
                case 82: goto Lad;
                case 83: goto Lad;
                case 84: goto Lad;
                case 85: goto Lad;
                case 86: goto Lad;
                case 87: goto Lad;
                case 88: goto Lad;
                case 89: goto Lad;
                case 90: goto Lad;
                case 91: goto Lad;
                case 92: goto Lad;
                case 93: goto Lad;
                case 94: goto Lad;
                case 95: goto Lad;
                default: goto L23;
            }
        L23:
            switch(r2) {
                case 110: goto L89;
                case 111: goto L89;
                case 112: goto L89;
                case 113: goto L89;
                case 114: goto L89;
                default: goto L26;
            }
        L26:
            switch(r2) {
                case 123: goto L9e;
                case 124: goto L9e;
                case 125: goto L9e;
                case 126: goto L9e;
                case 127: goto L9e;
                case 128: goto L9e;
                case 129: goto L9e;
                case 130: goto L9e;
                case 131: goto L9e;
                case 132: goto L9e;
                case 133: goto L9e;
                case 134: goto L9e;
                case 135: goto L9e;
                case 136: goto L9e;
                case 137: goto L9e;
                case 138: goto L9e;
                case 139: goto L9e;
                case 140: goto L9e;
                case 141: goto L9e;
                case 142: goto L9e;
                case 143: goto L9e;
                default: goto L29;
            }
        L29:
            switch(r2) {
                case 176: goto L9e;
                case 177: goto L9e;
                case 178: goto L9e;
                case 179: goto L9e;
                case 180: goto L9e;
                case 181: goto L9e;
                case 182: goto L9e;
                case 183: goto L9e;
                case 184: goto L9e;
                case 185: goto L9e;
                case 186: goto L9e;
                case 187: goto L9e;
                case 188: goto L9e;
                case 189: goto L9e;
                case 190: goto L9e;
                case 191: goto L9e;
                case 192: goto L9e;
                case 193: goto L9e;
                case 194: goto L9e;
                case 195: goto L9e;
                case 196: goto L9e;
                case 197: goto L9e;
                case 198: goto L9e;
                case 199: goto L9e;
                case 200: goto L9e;
                case 201: goto L9e;
                case 202: goto L9e;
                case 203: goto L9e;
                case 204: goto L9e;
                case 205: goto L9e;
                case 206: goto L9e;
                case 207: goto L9e;
                case 208: goto L77;
                case 209: goto L77;
                case 210: goto L77;
                case 211: goto L77;
                case 212: goto L77;
                case 213: goto L77;
                case 214: goto L77;
                case 215: goto L77;
                case 216: goto L68;
                case 217: goto L68;
                case 218: goto L68;
                case 219: goto L68;
                case 220: goto L68;
                case 221: goto L68;
                case 222: goto L68;
                case 223: goto L68;
                case 224: goto L68;
                case 225: goto L68;
                case 226: goto L68;
                default: goto L2c;
            }
        L2c:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L43:
            short r1 = (short) r2
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r2 = r0.codeOut
            short r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getAUnit(r8)
            short r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getBUnit(r9)
            r2.write(r1, r3, r4)
            goto Lbb
        L52:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r1 = r0.codeOut
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r8)
            short r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getBUnit(r9)
            goto L85
        L5d:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r1 = r0.codeOut
            int r1 = r1.cursor()
            short r1 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTargetUnit(r5, r1)
            goto Lae
        L68:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r1 = r0.codeOut
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r8)
            int r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getLiteralByte(r6)
            short r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r9, r3)
            goto L85
        L77:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r1 = r0.codeOut
            int r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(r8, r9)
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r3)
            short r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getLiteralUnit(r6)
        L85:
            r1.write(r2, r3)
            goto Lbb
        L89:
            short r1 = (short) r3
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r3 = r0.codeOut
            r4 = 2
            r5 = 0
            int r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(r5, r4)
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r4)
            short r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r8, r9, r5, r5)
            r3.write(r2, r1, r4)
            goto Lbb
        L9e:
            short r1 = (short) r2
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r2 = r0.codeOut
            int r3 = com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(r8, r9)
            short r1 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r1, r3)
            r2.write(r1)
            goto Lbb
        Lad:
            short r1 = (short) r3
        Lae:
            com.tencent.tinker.android.dx.instruction.ShortArrayCodeOutput r3 = r0.codeOut
            int r4 = com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(r8, r9)
            short r2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(r2, r4)
            r3.write(r2, r1)
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionWriter.visitTwoRegisterInsn(int, int, int, int, int, long, int, int):void");
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitZeroRegisterInsn(int i, int i2, int i3, int i4, int i5, long j) {
        int targetByte;
        int target;
        if (this.hasPromoter) {
            i5 = this.insnPromoter.getPromotedAddress(i5);
        }
        if (i2 == -1 || i2 == 0 || i2 == 14) {
            this.codeOut.write((short) i2);
            return;
        }
        if (i2 != 36) {
            switch (i2) {
                case 40:
                    if (this.hasPromoter) {
                        target = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTarget(i5, this.codeOut.cursor());
                        if (target != ((byte) target)) {
                            short s = (short) target;
                            if (target == s) {
                                this.codeOut.write((short) 41, s);
                                return;
                            }
                            this.codeOut.write((short) 42, com.tencent.tinker.android.dx.instruction.InstructionCodec.unit0(target), com.tencent.tinker.android.dx.instruction.InstructionCodec.unit1(target));
                            return;
                        }
                        targetByte = target & 255;
                    } else {
                        targetByte = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTargetByte(i5, this.codeOut.cursor());
                    }
                    this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i2, targetByte));
                    return;
                case 41:
                    if (!this.hasPromoter) {
                        short targetUnit = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTargetUnit(i5, this.codeOut.cursor());
                        this.codeOut.write((short) i2, targetUnit);
                        return;
                    }
                    target = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTarget(i5, this.codeOut.cursor());
                    short s2 = (short) target;
                    if (target == s2) {
                        this.codeOut.write((short) i2, s2);
                        return;
                    }
                    this.codeOut.write((short) 42, com.tencent.tinker.android.dx.instruction.InstructionCodec.unit0(target), com.tencent.tinker.android.dx.instruction.InstructionCodec.unit1(target));
                    return;
                case 42:
                    int target2 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTarget(i5, this.codeOut.cursor());
                    this.codeOut.write((short) i2, com.tencent.tinker.android.dx.instruction.InstructionCodec.unit0(target2), com.tencent.tinker.android.dx.instruction.InstructionCodec.unit1(target2));
                    return;
                default:
                    switch (i2) {
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case 114:
                            break;
                        default:
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("unexpected opcode: ");
                            sbO.append(com.tencent.tinker.android.dx.util.Hex.u2or4(i2));
                            throw new java.lang.IllegalStateException(sbO.toString());
                    }
            }
        }
        this.codeOut.write(com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(i2, com.tencent.tinker.android.dx.instruction.InstructionCodec.makeByte(0, 0)), (short) i3, com.tencent.tinker.android.dx.instruction.InstructionCodec.codeUnit(0, 0, 0, 0));
    }
}
