package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class TinkerZipEntry implements com.tencent.tinker.ziputils.ziputil.ZipConstants, java.lang.Cloneable {
    public static final int DEFLATED = 8;
    public static final int STORED = 0;
    public java.lang.String comment;
    public long compressedSize;
    public int compressionMethod;
    public long crc;
    public long dataOffset;
    public byte[] extra;
    public long localHeaderRelOffset;
    public int modDate;
    public java.lang.String name;
    public long size;
    public int time;

    public TinkerZipEntry(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry) {
        this.crc = -1L;
        this.compressedSize = -1L;
        this.size = -1L;
        this.compressionMethod = -1;
        this.time = -1;
        this.modDate = -1;
        this.localHeaderRelOffset = -1L;
        this.dataOffset = -1L;
        this.name = tinkerZipEntry.name;
        this.comment = tinkerZipEntry.comment;
        this.time = tinkerZipEntry.time;
        this.size = tinkerZipEntry.size;
        this.compressedSize = tinkerZipEntry.compressedSize;
        this.crc = tinkerZipEntry.crc;
        this.compressionMethod = tinkerZipEntry.compressionMethod;
        this.modDate = tinkerZipEntry.modDate;
        this.extra = tinkerZipEntry.extra;
        this.localHeaderRelOffset = tinkerZipEntry.localHeaderRelOffset;
        this.dataOffset = tinkerZipEntry.dataOffset;
    }

    public TinkerZipEntry(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry, java.lang.String str) {
        this.crc = -1L;
        this.compressedSize = -1L;
        this.size = -1L;
        this.compressionMethod = -1;
        this.time = -1;
        this.modDate = -1;
        this.localHeaderRelOffset = -1L;
        this.dataOffset = -1L;
        this.name = str;
        this.comment = tinkerZipEntry.comment;
        this.time = tinkerZipEntry.time;
        this.size = tinkerZipEntry.size;
        this.compressedSize = tinkerZipEntry.compressedSize;
        this.crc = tinkerZipEntry.crc;
        this.compressionMethod = tinkerZipEntry.compressionMethod;
        this.modDate = tinkerZipEntry.modDate;
        this.extra = tinkerZipEntry.extra;
        this.localHeaderRelOffset = tinkerZipEntry.localHeaderRelOffset;
        this.dataOffset = tinkerZipEntry.dataOffset;
    }

    public TinkerZipEntry(java.lang.String str) {
        this.crc = -1L;
        this.compressedSize = -1L;
        this.size = -1L;
        this.compressionMethod = -1;
        this.time = -1;
        this.modDate = -1;
        this.localHeaderRelOffset = -1L;
        this.dataOffset = -1L;
        if (str == null) {
            throw new java.lang.NullPointerException("name == null");
        }
        validateStringLength("Name", str);
        this.name = str;
    }

    public TinkerZipEntry(java.lang.String str, java.lang.String str2, long j, long j2, long j3, int i, int i2, int i3, byte[] bArr, long j4, long j5) {
        this.crc = -1L;
        this.compressedSize = -1L;
        this.size = -1L;
        this.compressionMethod = -1;
        this.time = -1;
        this.modDate = -1;
        this.localHeaderRelOffset = -1L;
        this.dataOffset = -1L;
        this.name = str;
        this.comment = str2;
        this.crc = j;
        this.compressedSize = j2;
        this.size = j3;
        this.compressionMethod = i;
        this.time = i2;
        this.modDate = i3;
        this.extra = bArr;
        this.localHeaderRelOffset = j4;
        this.dataOffset = j5;
    }

    public TinkerZipEntry(byte[] bArr, java.io.InputStream inputStream, java.nio.charset.Charset charset, boolean z) throws java.io.IOException {
        this.crc = -1L;
        this.compressedSize = -1L;
        this.size = -1L;
        this.compressionMethod = -1;
        this.time = -1;
        this.modDate = -1;
        this.localHeaderRelOffset = -1L;
        this.dataOffset = -1L;
        com.tencent.tinker.ziputils.ziputil.Streams.readFully(inputStream, bArr, 0, bArr.length);
        com.tencent.tinker.ziputils.ziputil.BufferIterator it = com.tencent.tinker.ziputils.ziputil.HeapBufferIterator.iterator(bArr, 0, bArr.length, java.nio.ByteOrder.LITTLE_ENDIAN);
        int i = it.readInt();
        if (i != 33639248) {
            com.tencent.tinker.ziputils.ziputil.TinkerZipFile.throwZipException("unknown", inputStream.available(), "unknown", 0L, "Central Directory Entry", i);
        }
        it.seek(8);
        int i2 = it.readShort() & 65535;
        if ((i2 & 1) != 0) {
            throw new java.util.zip.ZipException(e.a.c.a.a.K("Invalid General Purpose Bit Flag: ", i2));
        }
        charset = (i2 & 2048) != 0 ? java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME) : charset;
        this.compressionMethod = it.readShort() & 65535;
        this.time = it.readShort() & 65535;
        this.modDate = it.readShort() & 65535;
        this.crc = it.readInt() & 4294967295L;
        this.compressedSize = it.readInt() & 4294967295L;
        this.size = it.readInt() & 4294967295L;
        int i3 = it.readShort() & 65535;
        int i4 = it.readShort() & 65535;
        int i5 = 65535 & it.readShort();
        it.seek(42);
        this.localHeaderRelOffset = 4294967295L & it.readInt();
        byte[] bArr2 = new byte[i3];
        com.tencent.tinker.ziputils.ziputil.Streams.readFully(inputStream, bArr2, 0, i3);
        if (containsNulByte(bArr2)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Filename contains NUL byte: ");
            sbO.append(java.util.Arrays.toString(bArr2));
            throw new java.util.zip.ZipException(sbO.toString());
        }
        this.name = new java.lang.String(bArr2, 0, i3, charset);
        if (i4 > 0) {
            byte[] bArr3 = new byte[i4];
            this.extra = bArr3;
            com.tencent.tinker.ziputils.ziputil.Streams.readFully(inputStream, bArr3, 0, i4);
        }
        if (i5 > 0) {
            byte[] bArr4 = new byte[i5];
            com.tencent.tinker.ziputils.ziputil.Streams.readFully(inputStream, bArr4, 0, i5);
            this.comment = new java.lang.String(bArr4, 0, i5, charset);
        }
    }

    public static boolean containsNulByte(byte[] bArr) {
        for (byte b : bArr) {
            if (b == 0) {
                return true;
            }
        }
        return false;
    }

    public static void validateStringLength(java.lang.String str, java.lang.String str2) {
        byte[] bytes = str2.getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME));
        if (bytes.length <= 65535) {
            return;
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(str, " too long: ");
        sbQ.append(bytes.length);
        throw new java.lang.IllegalArgumentException(sbQ.toString());
    }

    public java.lang.Object clone() {
        try {
            com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry = (com.tencent.tinker.ziputils.ziputil.TinkerZipEntry) super.clone();
            tinkerZipEntry.extra = this.extra != null ? (byte[]) this.extra.clone() : null;
            return tinkerZipEntry;
        } catch (java.lang.CloneNotSupportedException e2) {
            throw new java.lang.AssertionError(e2);
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof com.tencent.tinker.ziputils.ziputil.TinkerZipEntry) {
            return this.name.equals(((com.tencent.tinker.ziputils.ziputil.TinkerZipEntry) obj).name);
        }
        return false;
    }

    public java.lang.String getComment() {
        return this.comment;
    }

    public long getCompressedSize() {
        return this.compressedSize;
    }

    public long getCrc() {
        return this.crc;
    }

    public long getDataOffset() {
        return this.dataOffset;
    }

    public byte[] getExtra() {
        return this.extra;
    }

    public int getMethod() {
        return this.compressionMethod;
    }

    public java.lang.String getName() {
        return this.name;
    }

    public long getSize() {
        return this.size;
    }

    public long getTime() {
        if (this.time == -1) {
            return -1L;
        }
        java.util.GregorianCalendar gregorianCalendar = new java.util.GregorianCalendar();
        gregorianCalendar.set(14, 0);
        int i = this.modDate;
        int i2 = ((i >> 9) & 127) + 1980;
        int i3 = ((i >> 5) & 15) - 1;
        int i4 = i & 31;
        int i5 = this.time;
        gregorianCalendar.set(i2, i3, i4, (i5 >> 11) & 31, (i5 >> 5) & 63, (i5 & 31) << 1);
        return gregorianCalendar.getTime().getTime();
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public boolean isDirectory() {
        java.lang.String str = this.name;
        return str.charAt(str.length() - 1) == '/';
    }

    public void setComment(java.lang.String str) {
        if (str == null) {
            str = null;
        } else {
            validateStringLength("Comment", str);
        }
        this.comment = str;
    }

    public void setCompressedSize(long j) {
        this.compressedSize = j;
    }

    public void setCrc(long j) {
        if (j >= 0 && j <= 4294967295L) {
            this.crc = j;
            return;
        }
        throw new java.lang.IllegalArgumentException("Bad CRC32: " + j);
    }

    public void setDataOffset(long j) {
        this.dataOffset = j;
    }

    public void setExtra(byte[] bArr) {
        if (bArr == null || bArr.length <= 65535) {
            this.extra = bArr;
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Extra data too long: ");
            sbO.append(bArr.length);
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
    }

    public void setMethod(int i) {
        if (i != 0 && i != 8) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Bad method: ", i));
        }
        this.compressionMethod = i;
    }

    public void setSize(long j) {
        if (j >= 0) {
            this.size = j;
            return;
        }
        throw new java.lang.IllegalArgumentException("Bad size: " + j);
    }

    public void setTime(long j) {
        int i;
        java.util.GregorianCalendar gregorianCalendar = new java.util.GregorianCalendar();
        gregorianCalendar.setTime(new java.util.Date(j));
        if (gregorianCalendar.get(1) < 1980) {
            this.modDate = 33;
            i = 0;
        } else {
            this.modDate = gregorianCalendar.get(5);
            this.modDate = ((gregorianCalendar.get(2) + 1) << 5) | this.modDate;
            this.modDate = ((gregorianCalendar.get(1) - 1980) << 9) | this.modDate;
            this.time = gregorianCalendar.get(13) >> 1;
            this.time = (gregorianCalendar.get(12) << 5) | this.time;
            i = (gregorianCalendar.get(11) << 11) | this.time;
        }
        this.time = i;
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer();
        java.lang.StringBuilder sbO = e.a.c.a.a.o("name:");
        sbO.append(this.name);
        stringBuffer.append(sbO.toString());
        stringBuffer.append("\ncomment:" + this.comment);
        stringBuffer.append("\ntime:" + this.time);
        stringBuffer.append("\nsize:" + this.size);
        stringBuffer.append("\ncompressedSize:" + this.compressedSize);
        stringBuffer.append("\ncrc:" + this.crc);
        stringBuffer.append("\ncompressionMethod:" + this.compressionMethod);
        stringBuffer.append("\nmodDate:" + this.modDate);
        stringBuffer.append("\nextra length:" + this.extra.length);
        stringBuffer.append("\nlocalHeaderRelOffset:" + this.localHeaderRelOffset);
        stringBuffer.append("\ndataOffset:" + this.dataOffset);
        return stringBuffer.toString();
    }
}
