package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public final class ShareOatUtil {
    public static final java.lang.String TAG = "Tinker.OatUtil";

    /* renamed from: com.tencent.tinker.loader.shareutil.ShareOatUtil$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;

        static {
            int[] iArr = new int[com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.values().length];
            $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet = iArr;
            try {
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kArm;
                iArr[1] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet2 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kThumb2;
                iArr2[3] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet3 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kArm64;
                iArr3[2] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet4 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kX86;
                iArr4[4] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet5 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kX86_64;
                iArr5[5] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet6 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kMips;
                iArr6[6] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet7 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kMips64;
                iArr7[7] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$com$tencent$tinker$loader$shareutil$ShareOatUtil$InstructionSet;
                com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet instructionSet8 = com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.kNone;
                iArr8[0] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
        }
    }

    public enum InstructionSet {
        kNone,
        kArm,
        kArm64,
        kThumb2,
        kX86,
        kX86_64,
        kMips,
        kMips64
    }

    public ShareOatUtil() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static java.lang.String getOatFileInstructionSet(java.io.File file) throws java.lang.Throwable {
        java.lang.String str;
        com.tencent.tinker.loader.shareutil.ShareElfFile shareElfFile = null;
        try {
            com.tencent.tinker.loader.shareutil.ShareElfFile shareElfFile2 = new com.tencent.tinker.loader.shareutil.ShareElfFile(file);
            try {
                com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader sectionHeaderByName = shareElfFile2.getSectionHeaderByName(".rodata");
                if (sectionHeaderByName == null) {
                    throw new java.io.IOException("Unable to find .rodata section.");
                }
                java.nio.channels.FileChannel channel = shareElfFile2.getChannel();
                channel.position(sectionHeaderByName.shOffset);
                byte[] bArr = new byte[8];
                com.tencent.tinker.loader.shareutil.ShareElfFile.readUntilLimit(channel, java.nio.ByteBuffer.wrap(bArr), "Failed to read oat magic and version.");
                if (bArr[0] != 111 || bArr[1] != 97 || bArr[2] != 116 || bArr[3] != 10) {
                    throw new java.io.IOException(java.lang.String.format("Bad oat magic: %x %x %x %x", java.lang.Byte.valueOf(bArr[0]), java.lang.Byte.valueOf(bArr[1]), java.lang.Byte.valueOf(bArr[2]), java.lang.Byte.valueOf(bArr[3])));
                }
                java.lang.String str2 = new java.lang.String(bArr, 4, 3, java.nio.charset.Charset.forName("ASCII"));
                try {
                    java.lang.Integer.parseInt(str2);
                    java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(128);
                    byteBufferAllocate.order(shareElfFile2.getDataOrder());
                    channel.position(sectionHeaderByName.shOffset + 12);
                    byteBufferAllocate.limit(4);
                    com.tencent.tinker.loader.shareutil.ShareElfFile.readUntilLimit(channel, byteBufferAllocate, "Failed to read isa num.");
                    int i = byteBufferAllocate.getInt();
                    if (i < 0 || i >= com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.values().length) {
                        throw new java.io.IOException("Bad isa num: " + i);
                    }
                    switch (com.tencent.tinker.loader.shareutil.ShareOatUtil.InstructionSet.values()[i]) {
                        case kNone:
                            str = "none";
                            break;
                        case kArm:
                        case kThumb2:
                            str = "arm";
                            break;
                        case kArm64:
                            str = "arm64";
                            break;
                        case kX86:
                            str = "x86";
                            break;
                        case kX86_64:
                            str = "x86_64";
                            break;
                        case kMips:
                            str = "mips";
                            break;
                        case kMips64:
                            str = "mips64";
                            break;
                        default:
                            throw new java.io.IOException("Should not reach here.");
                    }
                    try {
                        shareElfFile2.close();
                    } catch (java.lang.Exception unused) {
                    }
                    return str;
                } catch (java.lang.NumberFormatException unused2) {
                    throw new java.io.IOException("Bad oat version: " + str2);
                }
            } catch (java.lang.Throwable th) {
                th = th;
                shareElfFile = shareElfFile2;
                if (shareElfFile != null) {
                    try {
                        shareElfFile.close();
                    } catch (java.lang.Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }
}
