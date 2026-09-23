package com.tencent.tinker.android.dx.instruction;

/* loaded from: classes.dex */
public final class InstructionPromoter extends com.tencent.tinker.android.dx.instruction.InstructionVisitor {
    public final com.tencent.tinker.android.utils.SparseIntArray addressMap;
    public int currentPromotedAddress;

    public InstructionPromoter() {
        super(null);
        this.addressMap = new com.tencent.tinker.android.utils.SparseIntArray();
        this.currentPromotedAddress = 0;
    }

    private void mapAddressIfNeeded(int i) {
        int i2 = this.currentPromotedAddress;
        if (i != i2) {
            this.addressMap.append(i, i2);
        }
    }

    public int getPromotedAddress(int i) {
        int iIndexOfKey = this.addressMap.indexOfKey(i);
        return iIndexOfKey < 0 ? i : this.addressMap.valueAt(iIndexOfKey);
    }

    public int getPromotedAddressCount() {
        return this.addressMap.size();
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFillArrayDataPayloadInsn(int i, int i2, java.lang.Object obj, int i3, int i4) {
        int length;
        mapAddressIfNeeded(i);
        int i5 = this.currentPromotedAddress + 4;
        this.currentPromotedAddress = i5;
        if (i4 == 1) {
            int length2 = ((byte[]) obj).length;
            length = (length2 & 1) + (length2 >> 1);
        } else if (i4 == 2) {
            length = ((short[]) obj).length * 1;
        } else if (i4 == 4) {
            length = ((int[]) obj).length * 2;
        } else {
            if (i4 != 8) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("bogus element_width: ");
                sbO.append(com.tencent.tinker.android.dx.util.Hex.u2(i4));
                throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
            }
            length = ((long[]) obj).length * 4;
        }
        this.currentPromotedAddress = length + i5;
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFiveRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9, int i10) {
        mapAddressIfNeeded(i);
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
        this.currentPromotedAddress += 3;
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitFourRegisterInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7, int i8, int i9) {
        mapAddressIfNeeded(i);
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
        this.currentPromotedAddress += 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0049 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053 A[FALL_THROUGH] */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitOneRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6, int r8) {
        /*
            r0 = this;
            r0.mapAddressIfNeeded(r1)
            r1 = 34
            if (r2 == r1) goto L53
            r1 = 36
            if (r2 == r1) goto L4e
            r1 = 38
            if (r2 == r1) goto L4e
            r1 = 39
            if (r2 == r1) goto L49
            r1 = 43
            if (r2 == r1) goto L4e
            r1 = 44
            if (r2 == r1) goto L4e
            switch(r2) {
                case 10: goto L49;
                case 11: goto L49;
                case 12: goto L49;
                case 13: goto L49;
                default: goto L1e;
            }
        L1e:
            switch(r2) {
                case 15: goto L49;
                case 16: goto L49;
                case 17: goto L49;
                case 18: goto L49;
                case 19: goto L53;
                case 20: goto L4e;
                case 21: goto L53;
                case 22: goto L53;
                case 23: goto L4e;
                case 24: goto L44;
                case 25: goto L53;
                case 26: goto L3e;
                case 27: goto L4e;
                case 28: goto L53;
                case 29: goto L49;
                case 30: goto L49;
                case 31: goto L53;
                default: goto L21;
            }
        L21:
            switch(r2) {
                case 56: goto L53;
                case 57: goto L53;
                case 58: goto L53;
                case 59: goto L53;
                case 60: goto L53;
                case 61: goto L53;
                default: goto L24;
            }
        L24:
            switch(r2) {
                case 96: goto L53;
                case 97: goto L53;
                case 98: goto L53;
                case 99: goto L53;
                case 100: goto L53;
                case 101: goto L53;
                case 102: goto L53;
                case 103: goto L53;
                case 104: goto L53;
                case 105: goto L53;
                case 106: goto L53;
                case 107: goto L53;
                case 108: goto L53;
                case 109: goto L53;
                case 110: goto L4e;
                case 111: goto L4e;
                case 112: goto L4e;
                case 113: goto L4e;
                case 114: goto L4e;
                default: goto L27;
            }
        L27:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L3e:
            r1 = 65535(0xffff, float:9.1834E-41)
            if (r3 <= r1) goto L53
            goto L4e
        L44:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 5
            goto L57
        L49:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 1
            goto L57
        L4e:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 3
            goto L57
        L53:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 2
        L57:
            r0.currentPromotedAddress = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionPromoter.visitOneRegisterInsn(int, int, int, int, int, long, int):void");
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitPackedSwitchPayloadInsn(int i, int i2, int i3, int[] iArr) {
        mapAddressIfNeeded(i);
        int i4 = this.currentPromotedAddress + 4;
        this.currentPromotedAddress = i4;
        this.currentPromotedAddress = (iArr.length * 2) + i4;
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitRegisterRangeInsn(int i, int i2, int i3, int i4, int i5, long j, int i6, int i7) {
        mapAddressIfNeeded(i);
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
        this.currentPromotedAddress += 3;
    }

    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    public void visitSparseSwitchPayloadInsn(int i, int i2, int[] iArr, int[] iArr2) {
        mapAddressIfNeeded(i);
        int i3 = this.currentPromotedAddress + 2;
        this.currentPromotedAddress = i3;
        int length = (iArr.length * 2) + i3;
        this.currentPromotedAddress = length;
        this.currentPromotedAddress = (iArr2.length * 2) + length;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitThreeRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6, int r8, int r9, int r10) {
        /*
            r0 = this;
            r0.mapAddressIfNeeded(r1)
            r1 = 36
            if (r2 == r1) goto L2f
            switch(r2) {
                case 45: goto L2a;
                case 46: goto L2a;
                case 47: goto L2a;
                case 48: goto L2a;
                case 49: goto L2a;
                default: goto La;
            }
        La:
            switch(r2) {
                case 68: goto L2a;
                case 69: goto L2a;
                case 70: goto L2a;
                case 71: goto L2a;
                case 72: goto L2a;
                case 73: goto L2a;
                case 74: goto L2a;
                case 75: goto L2a;
                case 76: goto L2a;
                case 77: goto L2a;
                case 78: goto L2a;
                case 79: goto L2a;
                case 80: goto L2a;
                case 81: goto L2a;
                default: goto Ld;
            }
        Ld:
            switch(r2) {
                case 110: goto L2f;
                case 111: goto L2f;
                case 112: goto L2f;
                case 113: goto L2f;
                case 114: goto L2f;
                default: goto L10;
            }
        L10:
            switch(r2) {
                case 144: goto L2a;
                case 145: goto L2a;
                case 146: goto L2a;
                case 147: goto L2a;
                case 148: goto L2a;
                case 149: goto L2a;
                case 150: goto L2a;
                case 151: goto L2a;
                case 152: goto L2a;
                case 153: goto L2a;
                case 154: goto L2a;
                case 155: goto L2a;
                case 156: goto L2a;
                case 157: goto L2a;
                case 158: goto L2a;
                case 159: goto L2a;
                case 160: goto L2a;
                case 161: goto L2a;
                case 162: goto L2a;
                case 163: goto L2a;
                case 164: goto L2a;
                case 165: goto L2a;
                case 166: goto L2a;
                case 167: goto L2a;
                case 168: goto L2a;
                case 169: goto L2a;
                case 170: goto L2a;
                case 171: goto L2a;
                case 172: goto L2a;
                case 173: goto L2a;
                case 174: goto L2a;
                case 175: goto L2a;
                default: goto L13;
            }
        L13:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L2a:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 2
            goto L33
        L2f:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 3
        L33:
            r0.currentPromotedAddress = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionPromoter.visitThreeRegisterInsn(int, int, int, int, int, long, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[FALL_THROUGH] */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitTwoRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6, int r8, int r9) {
        /*
            r0 = this;
            r0.mapAddressIfNeeded(r1)
            r1 = 32
            if (r2 == r1) goto L46
            r1 = 33
            if (r2 == r1) goto L41
            r1 = 35
            if (r2 == r1) goto L46
            r1 = 36
            if (r2 == r1) goto L3c
            switch(r2) {
                case 1: goto L41;
                case 2: goto L46;
                case 3: goto L3c;
                case 4: goto L41;
                case 5: goto L46;
                case 6: goto L3c;
                case 7: goto L41;
                case 8: goto L46;
                case 9: goto L3c;
                default: goto L16;
            }
        L16:
            switch(r2) {
                case 50: goto L46;
                case 51: goto L46;
                case 52: goto L46;
                case 53: goto L46;
                case 54: goto L46;
                case 55: goto L46;
                default: goto L19;
            }
        L19:
            switch(r2) {
                case 82: goto L46;
                case 83: goto L46;
                case 84: goto L46;
                case 85: goto L46;
                case 86: goto L46;
                case 87: goto L46;
                case 88: goto L46;
                case 89: goto L46;
                case 90: goto L46;
                case 91: goto L46;
                case 92: goto L46;
                case 93: goto L46;
                case 94: goto L46;
                case 95: goto L46;
                default: goto L1c;
            }
        L1c:
            switch(r2) {
                case 110: goto L3c;
                case 111: goto L3c;
                case 112: goto L3c;
                case 113: goto L3c;
                case 114: goto L3c;
                default: goto L1f;
            }
        L1f:
            switch(r2) {
                case 123: goto L41;
                case 124: goto L41;
                case 125: goto L41;
                case 126: goto L41;
                case 127: goto L41;
                case 128: goto L41;
                case 129: goto L41;
                case 130: goto L41;
                case 131: goto L41;
                case 132: goto L41;
                case 133: goto L41;
                case 134: goto L41;
                case 135: goto L41;
                case 136: goto L41;
                case 137: goto L41;
                case 138: goto L41;
                case 139: goto L41;
                case 140: goto L41;
                case 141: goto L41;
                case 142: goto L41;
                case 143: goto L41;
                default: goto L22;
            }
        L22:
            switch(r2) {
                case 176: goto L41;
                case 177: goto L41;
                case 178: goto L41;
                case 179: goto L41;
                case 180: goto L41;
                case 181: goto L41;
                case 182: goto L41;
                case 183: goto L41;
                case 184: goto L41;
                case 185: goto L41;
                case 186: goto L41;
                case 187: goto L41;
                case 188: goto L41;
                case 189: goto L41;
                case 190: goto L41;
                case 191: goto L41;
                case 192: goto L41;
                case 193: goto L41;
                case 194: goto L41;
                case 195: goto L41;
                case 196: goto L41;
                case 197: goto L41;
                case 198: goto L41;
                case 199: goto L41;
                case 200: goto L41;
                case 201: goto L41;
                case 202: goto L41;
                case 203: goto L41;
                case 204: goto L41;
                case 205: goto L41;
                case 206: goto L41;
                case 207: goto L41;
                case 208: goto L46;
                case 209: goto L46;
                case 210: goto L46;
                case 211: goto L46;
                case 212: goto L46;
                case 213: goto L46;
                case 214: goto L46;
                case 215: goto L46;
                case 216: goto L46;
                case 217: goto L46;
                case 218: goto L46;
                case 219: goto L46;
                case 220: goto L46;
                case 221: goto L46;
                case 222: goto L46;
                case 223: goto L46;
                case 224: goto L46;
                case 225: goto L46;
                case 226: goto L46;
                default: goto L25;
            }
        L25:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L3c:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 3
            goto L4a
        L41:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 1
            goto L4a
        L46:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 2
        L4a:
            r0.currentPromotedAddress = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionPromoter.visitTwoRegisterInsn(int, int, int, int, int, long, int, int):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
    @Override // com.tencent.tinker.android.dx.instruction.InstructionVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void visitZeroRegisterInsn(int r1, int r2, int r3, int r4, int r5, long r6) {
        /*
            r0 = this;
            r0.mapAddressIfNeeded(r1)
            r1 = -1
            if (r2 == r1) goto L4e
            if (r2 == 0) goto L4e
            r1 = 14
            if (r2 == r1) goto L4e
            r1 = 36
            if (r2 == r1) goto L49
            switch(r2) {
                case 40: goto L37;
                case 41: goto L2d;
                case 42: goto L49;
                default: goto L13;
            }
        L13:
            switch(r2) {
                case 110: goto L49;
                case 111: goto L49;
                case 112: goto L49;
                case 113: goto L49;
                case 114: goto L49;
                default: goto L16;
            }
        L16:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r3 = "unexpected opcode: "
            java.lang.StringBuilder r3 = e.a.c.a.a.o(r3)
            java.lang.String r2 = com.tencent.tinker.android.dx.util.Hex.u2or4(r2)
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            r1.<init>(r2)
            throw r1
        L2d:
            int r1 = r0.currentPromotedAddress
            int r1 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTarget(r5, r1)
            short r2 = (short) r1
            if (r1 == r2) goto L44
            goto L49
        L37:
            int r1 = r0.currentPromotedAddress
            int r1 = com.tencent.tinker.android.dx.instruction.InstructionCodec.getTarget(r5, r1)
            byte r2 = (byte) r1
            if (r1 == r2) goto L4e
            short r2 = (short) r1
            if (r1 == r2) goto L44
            goto L49
        L44:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 2
            goto L52
        L49:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 3
            goto L52
        L4e:
            int r1 = r0.currentPromotedAddress
            int r1 = r1 + 1
        L52:
            r0.currentPromotedAddress = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.tinker.android.dx.instruction.InstructionPromoter.visitZeroRegisterInsn(int, int, int, int, int, long):void");
    }
}
