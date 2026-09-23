package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareElfFile implements java.io.Closeable {
    public static final int FILE_TYPE_ELF = 1;
    public static final int FILE_TYPE_ODEX = 0;
    public static final int FILE_TYPE_OTHERS = -1;
    public com.tencent.tinker.loader.shareutil.ShareElfFile.ElfHeader elfHeader;
    public final java.io.FileInputStream fis;
    public com.tencent.tinker.loader.shareutil.ShareElfFile.ProgramHeader[] programHeaders;
    public com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader[] sectionHeaders;
    public final java.util.Map<java.lang.String, com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader> sectionNameToHeaderMap = new java.util.HashMap();

    public static class ElfHeader {
        public static final int EI_CLASS = 4;
        public static final int EI_DATA = 5;
        public static final int EI_NINDENT = 16;
        public static final int EI_VERSION = 6;
        public static final int ELFCLASS32 = 1;
        public static final int ELFCLASS64 = 2;
        public static final int ELFDATA2LSB = 1;
        public static final int ELFDATA2MSB = 2;
        public static final int ET_CORE = 4;
        public static final int ET_DYN = 3;
        public static final int ET_EXEC = 2;
        public static final int ET_HIPROC = 65535;
        public static final int ET_LOPROC = 65280;
        public static final int ET_NONE = 0;
        public static final int ET_REL = 1;
        public static final int EV_CURRENT = 1;
        public final short eEhSize;
        public final long eEntry;
        public final int eFlags;
        public final byte[] eIndent;
        public final short eMachine;
        public final short ePhEntSize;
        public final short ePhNum;
        public final long ePhOff;
        public final short eShEntSize;
        public final short eShNum;
        public final long eShOff;
        public final short eShStrNdx;
        public final short eType;
        public final int eVersion;

        public ElfHeader(java.nio.channels.FileChannel fileChannel) throws java.io.IOException {
            long j;
            this.eIndent = new byte[16];
            fileChannel.position(0L);
            fileChannel.read(java.nio.ByteBuffer.wrap(this.eIndent));
            byte[] bArr = this.eIndent;
            if (bArr[0] != 127 || bArr[1] != 69 || bArr[2] != 76 || bArr[3] != 70) {
                throw new java.io.IOException(java.lang.String.format("bad elf magic: %x %x %x %x.", java.lang.Byte.valueOf(this.eIndent[0]), java.lang.Byte.valueOf(this.eIndent[1]), java.lang.Byte.valueOf(this.eIndent[2]), java.lang.Byte.valueOf(this.eIndent[3])));
            }
            byte b = bArr[4];
            java.lang.StringBuilder sbO = e.a.c.a.a.o("bad elf class: ");
            sbO.append((int) this.eIndent[4]);
            com.tencent.tinker.loader.shareutil.ShareElfFile.assertInRange(b, 1, 2, sbO.toString());
            byte b2 = this.eIndent[5];
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("bad elf data encoding: ");
            sbO2.append((int) this.eIndent[5]);
            com.tencent.tinker.loader.shareutil.ShareElfFile.assertInRange(b2, 1, 2, sbO2.toString());
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(this.eIndent[4] == 1 ? 36 : 48);
            byteBufferAllocate.order(this.eIndent[5] == 1 ? java.nio.ByteOrder.LITTLE_ENDIAN : java.nio.ByteOrder.BIG_ENDIAN);
            com.tencent.tinker.loader.shareutil.ShareElfFile.readUntilLimit(fileChannel, byteBufferAllocate, "failed to read rest part of ehdr.");
            this.eType = byteBufferAllocate.getShort();
            this.eMachine = byteBufferAllocate.getShort();
            int i = byteBufferAllocate.getInt();
            this.eVersion = i;
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("bad elf version: ");
            sbO3.append(this.eVersion);
            com.tencent.tinker.loader.shareutil.ShareElfFile.assertInRange(i, 1, 1, sbO3.toString());
            byte b3 = this.eIndent[4];
            if (b3 == 1) {
                this.eEntry = byteBufferAllocate.getInt();
                this.ePhOff = byteBufferAllocate.getInt();
                j = byteBufferAllocate.getInt();
            } else {
                if (b3 != 2) {
                    java.lang.StringBuilder sbO4 = e.a.c.a.a.o("Unexpected elf class: ");
                    sbO4.append((int) this.eIndent[4]);
                    throw new java.io.IOException(sbO4.toString());
                }
                this.eEntry = byteBufferAllocate.getLong();
                this.ePhOff = byteBufferAllocate.getLong();
                j = byteBufferAllocate.getLong();
            }
            this.eShOff = j;
            this.eFlags = byteBufferAllocate.getInt();
            this.eEhSize = byteBufferAllocate.getShort();
            this.ePhEntSize = byteBufferAllocate.getShort();
            this.ePhNum = byteBufferAllocate.getShort();
            this.eShEntSize = byteBufferAllocate.getShort();
            this.eShNum = byteBufferAllocate.getShort();
            this.eShStrNdx = byteBufferAllocate.getShort();
        }
    }

    public static class ProgramHeader {
        public static final int PF_R = 4;
        public static final int PF_W = 2;
        public static final int PF_X = 1;
        public static final int PT_DYNAMIC = 2;
        public static final int PT_HIPROC = Integer.MAX_VALUE;
        public static final int PT_INTERP = 3;
        public static final int PT_LOAD = 1;
        public static final int PT_LOPROC = 1879048192;
        public static final int PT_NOTE = 4;
        public static final int PT_NULL = 0;
        public static final int PT_PHDR = 6;
        public static final int PT_SHLIB = 5;
        public final long pAlign;
        public final long pFileSize;
        public final int pFlags;
        public final long pMemSize;
        public final long pOffset;
        public final long pPddr;
        public final int pType;
        public final long pVddr;

        public ProgramHeader(java.nio.ByteBuffer byteBuffer, int i) throws java.io.IOException {
            long j;
            if (i == 1) {
                this.pType = byteBuffer.getInt();
                this.pOffset = byteBuffer.getInt();
                this.pVddr = byteBuffer.getInt();
                this.pPddr = byteBuffer.getInt();
                this.pFileSize = byteBuffer.getInt();
                this.pMemSize = byteBuffer.getInt();
                this.pFlags = byteBuffer.getInt();
                j = byteBuffer.getInt();
            } else {
                if (i != 2) {
                    throw new java.io.IOException(e.a.c.a.a.K("Unexpected elf class: ", i));
                }
                this.pType = byteBuffer.getInt();
                this.pFlags = byteBuffer.getInt();
                this.pOffset = byteBuffer.getLong();
                this.pVddr = byteBuffer.getLong();
                this.pPddr = byteBuffer.getLong();
                this.pFileSize = byteBuffer.getLong();
                this.pMemSize = byteBuffer.getLong();
                j = byteBuffer.getLong();
            }
            this.pAlign = j;
        }
    }

    public static class SectionHeader {
        public static final int SHF_ALLOC = 2;
        public static final int SHF_EXECINSTR = 4;
        public static final int SHF_MASKPROC = -268435456;
        public static final int SHF_WRITE = 1;
        public static final int SHN_ABS = 65521;
        public static final int SHN_COMMON = 65522;
        public static final int SHN_HIPROC = 65311;
        public static final int SHN_HIRESERVE = 65535;
        public static final int SHN_LOPROC = 65280;
        public static final int SHN_LORESERVE = 65280;
        public static final int SHN_UNDEF = 0;
        public static final int SHT_DYNAMIC = 6;
        public static final int SHT_DYNSYM = 11;
        public static final int SHT_HASH = 5;
        public static final int SHT_HIPROC = Integer.MAX_VALUE;
        public static final int SHT_HIUSER = -1;
        public static final int SHT_LOPROC = 1879048192;
        public static final int SHT_LOUSER = Integer.MIN_VALUE;
        public static final int SHT_NOBITS = 8;
        public static final int SHT_NOTE = 7;
        public static final int SHT_NULL = 0;
        public static final int SHT_PROGBITS = 1;
        public static final int SHT_REL = 9;
        public static final int SHT_RELA = 4;
        public static final int SHT_SHLIB = 10;
        public static final int SHT_STRTAB = 3;
        public static final int SHT_SYMTAB = 2;
        public final long shAddr;
        public final long shAddrAlign;
        public final long shEntSize;
        public final long shFlags;
        public final int shInfo;
        public final int shLink;
        public final int shName;
        public java.lang.String shNameStr;
        public final long shOffset;
        public final long shSize;
        public final int shType;

        public SectionHeader(java.nio.ByteBuffer byteBuffer, int i) throws java.io.IOException {
            long j;
            if (i == 1) {
                this.shName = byteBuffer.getInt();
                this.shType = byteBuffer.getInt();
                this.shFlags = byteBuffer.getInt();
                this.shAddr = byteBuffer.getInt();
                this.shOffset = byteBuffer.getInt();
                this.shSize = byteBuffer.getInt();
                this.shLink = byteBuffer.getInt();
                this.shInfo = byteBuffer.getInt();
                this.shAddrAlign = byteBuffer.getInt();
                j = byteBuffer.getInt();
            } else {
                if (i != 2) {
                    throw new java.io.IOException(e.a.c.a.a.K("Unexpected elf class: ", i));
                }
                this.shName = byteBuffer.getInt();
                this.shType = byteBuffer.getInt();
                this.shFlags = byteBuffer.getLong();
                this.shAddr = byteBuffer.getLong();
                this.shOffset = byteBuffer.getLong();
                this.shSize = byteBuffer.getLong();
                this.shLink = byteBuffer.getInt();
                this.shInfo = byteBuffer.getInt();
                this.shAddrAlign = byteBuffer.getLong();
                j = byteBuffer.getLong();
            }
            this.shEntSize = j;
            this.shNameStr = null;
        }
    }

    public ShareElfFile(java.io.File file) throws java.io.IOException {
        com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader[] sectionHeaderArr;
        this.elfHeader = null;
        this.programHeaders = null;
        this.sectionHeaders = null;
        java.io.FileInputStream fileInputStream = new java.io.FileInputStream(file);
        this.fis = fileInputStream;
        java.nio.channels.FileChannel channel = fileInputStream.getChannel();
        this.elfHeader = new com.tencent.tinker.loader.shareutil.ShareElfFile.ElfHeader(channel);
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(128);
        byteBufferAllocate.limit(this.elfHeader.ePhEntSize);
        byteBufferAllocate.order(this.elfHeader.eIndent[5] == 1 ? java.nio.ByteOrder.LITTLE_ENDIAN : java.nio.ByteOrder.BIG_ENDIAN);
        channel.position(this.elfHeader.ePhOff);
        this.programHeaders = new com.tencent.tinker.loader.shareutil.ShareElfFile.ProgramHeader[this.elfHeader.ePhNum];
        for (int i = 0; i < this.programHeaders.length; i++) {
            readUntilLimit(channel, byteBufferAllocate, "failed to read phdr.");
            this.programHeaders[i] = new com.tencent.tinker.loader.shareutil.ShareElfFile.ProgramHeader(byteBufferAllocate, this.elfHeader.eIndent[4]);
        }
        channel.position(this.elfHeader.eShOff);
        byteBufferAllocate.limit(this.elfHeader.eShEntSize);
        this.sectionHeaders = new com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader[this.elfHeader.eShNum];
        int i2 = 0;
        while (true) {
            sectionHeaderArr = this.sectionHeaders;
            if (i2 >= sectionHeaderArr.length) {
                break;
            }
            readUntilLimit(channel, byteBufferAllocate, "failed to read shdr.");
            this.sectionHeaders[i2] = new com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader(byteBufferAllocate, this.elfHeader.eIndent[4]);
            i2++;
        }
        short s = this.elfHeader.eShStrNdx;
        if (s > 0) {
            java.nio.ByteBuffer section = getSection(sectionHeaderArr[s]);
            for (com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader sectionHeader : this.sectionHeaders) {
                section.position(sectionHeader.shName);
                java.lang.String cString = readCString(section);
                sectionHeader.shNameStr = cString;
                this.sectionNameToHeaderMap.put(cString, sectionHeader);
            }
        }
    }

    public static void assertInRange(int i, int i2, int i3, java.lang.String str) throws java.io.IOException {
        if (i < i2 || i > i3) {
            throw new java.io.IOException(str);
        }
    }

    public static int getFileTypeByMagic(java.io.File file) throws java.lang.Throwable {
        byte[] bArr;
        java.io.FileInputStream fileInputStream;
        java.io.FileInputStream fileInputStream2 = null;
        try {
            bArr = new byte[4];
            fileInputStream = new java.io.FileInputStream(file);
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            fileInputStream.read(bArr);
            if (bArr[0] == 100 && bArr[1] == 101 && bArr[2] == 121 && bArr[3] == 10) {
                try {
                    fileInputStream.close();
                } catch (java.lang.Throwable unused) {
                }
                return 0;
            }
            if (bArr[0] == 127 && bArr[1] == 69 && bArr[2] == 76) {
                if (bArr[3] == 70) {
                    try {
                        fileInputStream.close();
                    } catch (java.lang.Throwable unused2) {
                    }
                    return 1;
                }
            }
            try {
                fileInputStream.close();
            } catch (java.lang.Throwable unused3) {
            }
            return -1;
        } catch (java.lang.Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                } catch (java.lang.Throwable unused4) {
                }
            }
            throw th;
        }
    }

    public static java.lang.String readCString(java.nio.ByteBuffer byteBuffer) {
        byte[] bArrArray = byteBuffer.array();
        int iPosition = byteBuffer.position();
        while (byteBuffer.hasRemaining() && bArrArray[byteBuffer.position()] != 0) {
            byteBuffer.position(byteBuffer.position() + 1);
        }
        byteBuffer.position(byteBuffer.position() + 1);
        return new java.lang.String(bArrArray, iPosition, (byteBuffer.position() - iPosition) - 1, java.nio.charset.Charset.forName("ASCII"));
    }

    public static void readUntilLimit(java.nio.channels.FileChannel fileChannel, java.nio.ByteBuffer byteBuffer, java.lang.String str) throws java.io.IOException {
        byteBuffer.rewind();
        int i = fileChannel.read(byteBuffer);
        if (i == byteBuffer.limit()) {
            byteBuffer.flip();
            return;
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, " Rest bytes insufficient, expect to read ");
        sbQ.append(byteBuffer.limit());
        sbQ.append(" bytes but only ");
        sbQ.append(i);
        sbQ.append(" bytes were read.");
        throw new java.io.IOException(sbQ.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.fis.close();
        this.sectionNameToHeaderMap.clear();
        this.programHeaders = null;
        this.sectionHeaders = null;
    }

    public java.nio.channels.FileChannel getChannel() {
        return this.fis.getChannel();
    }

    public java.nio.ByteOrder getDataOrder() {
        return this.elfHeader.eIndent[5] == 1 ? java.nio.ByteOrder.LITTLE_ENDIAN : java.nio.ByteOrder.BIG_ENDIAN;
    }

    public java.nio.ByteBuffer getSection(com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader sectionHeader) throws java.io.IOException {
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate((int) sectionHeader.shSize);
        this.fis.getChannel().position(sectionHeader.shOffset);
        java.nio.channels.FileChannel channel = this.fis.getChannel();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("failed to read section: ");
        sbO.append(sectionHeader.shNameStr);
        readUntilLimit(channel, byteBufferAllocate, sbO.toString());
        return byteBufferAllocate;
    }

    public com.tencent.tinker.loader.shareutil.ShareElfFile.SectionHeader getSectionHeaderByName(java.lang.String str) {
        return this.sectionNameToHeaderMap.get(str);
    }

    public java.nio.ByteBuffer getSegment(com.tencent.tinker.loader.shareutil.ShareElfFile.ProgramHeader programHeader) throws java.io.IOException {
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate((int) programHeader.pFileSize);
        this.fis.getChannel().position(programHeader.pOffset);
        java.nio.channels.FileChannel channel = this.fis.getChannel();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("failed to read segment (type: ");
        sbO.append(programHeader.pType);
        sbO.append(").");
        readUntilLimit(channel, byteBufferAllocate, sbO.toString());
        return byteBufferAllocate;
    }

    public boolean is32BitElf() {
        return this.elfHeader.eIndent[4] == 1;
    }
}
