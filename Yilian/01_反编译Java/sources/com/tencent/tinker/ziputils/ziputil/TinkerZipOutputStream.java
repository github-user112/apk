package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class TinkerZipOutputStream extends java.io.FilterOutputStream implements com.tencent.tinker.ziputils.ziputil.ZipConstants {
    public static final int DEFLATED = 8;
    public static final int MOD_DATE_CONST = 18698;
    public static final int STORED = 0;
    public static final int TIME_CONST = 40691;
    public static final int ZIP_VERSION_2_0 = 20;
    public final int alignBytes;
    public boolean archiveNeedsZip64EocdRecord;
    public java.io.ByteArrayOutputStream cDir;
    public byte[] commentBytes;
    public com.tencent.tinker.ziputils.ziputil.TinkerZipEntry currentEntry;
    public boolean currentEntryNeedsZip64;
    public int defaultCompressionMethod;
    public final java.util.HashSet<java.lang.String> entries;
    public byte[] entryCommentBytes;
    public final boolean forceZip64;
    public byte[] nameBytes;
    public long offset;
    public int padding;
    public static final byte[] BYTE = new byte[0];
    public static final byte[] ZIP64_PLACEHOLDER_BYTES = {-1, -1, -1, -1};

    public TinkerZipOutputStream(java.io.OutputStream outputStream) {
        this(outputStream, false);
    }

    public TinkerZipOutputStream(java.io.OutputStream outputStream, boolean z) {
        this(outputStream, z, 4);
    }

    public TinkerZipOutputStream(java.io.OutputStream outputStream, boolean z, int i) {
        super(outputStream);
        this.entries = new java.util.HashSet<>();
        this.commentBytes = BYTE;
        this.defaultCompressionMethod = 8;
        this.cDir = new java.io.ByteArrayOutputStream();
        this.offset = 0L;
        this.padding = 0;
        this.forceZip64 = z;
        this.alignBytes = i;
    }

    private void checkOpen() throws java.io.IOException {
        if (this.cDir == null) {
            throw new java.io.IOException("Stream is closed");
        }
    }

    private void checkSizeIsWithinShort(java.lang.String str, byte[] bArr) {
        if (bArr.length > 65535) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.i(e.a.c.a.a.q(str, " too long in UTF-8:"), bArr.length, " bytes"));
        }
    }

    private int getPaddingByteCount(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry, long j) {
        int i;
        if (tinkerZipEntry.getMethod() != 0 || (i = this.alignBytes) == 0) {
            return 0;
        }
        return (int) ((i - (j % i)) % i);
    }

    private void makePaddingToStream(java.io.OutputStream outputStream, long j) throws java.io.IOException {
        if (j <= 0) {
            return;
        }
        while (true) {
            long j2 = j - 1;
            if (j <= 0) {
                return;
            }
            outputStream.write(0);
            j = j2;
        }
    }

    public static int writeIntAsUint16(java.io.OutputStream outputStream, int i) throws java.io.IOException {
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        return i;
    }

    public static long writeLongAsUint32(java.io.OutputStream outputStream, long j) throws java.io.IOException {
        outputStream.write((int) (255 & j));
        outputStream.write(((int) (j >> 8)) & 255);
        outputStream.write(((int) (j >> 16)) & 255);
        outputStream.write(((int) (j >> 24)) & 255);
        return j;
    }

    public static long writeLongAsUint64(java.io.OutputStream outputStream, long j) throws java.io.IOException {
        int i = (int) j;
        outputStream.write(i & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
        int i2 = (int) (j >> 32);
        outputStream.write(i2 & 255);
        outputStream.write((i2 >> 8) & 255);
        outputStream.write((i2 >> 16) & 255);
        outputStream.write((i2 >> 24) & 255);
        return j;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (((java.io.FilterOutputStream) this).out != null) {
            finish();
            ((java.io.FilterOutputStream) this).out.close();
            ((java.io.FilterOutputStream) this).out = null;
        }
    }

    public void closeEntry() throws java.io.IOException {
        checkOpen();
        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry = this.currentEntry;
        if (tinkerZipEntry == null) {
            return;
        }
        long j = 30;
        if (tinkerZipEntry.getMethod() != 0) {
            j = 46;
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, 134695760L);
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, this.currentEntry.crc);
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, this.currentEntry.compressedSize);
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, this.currentEntry.size);
        }
        int i = this.currentEntry.getMethod() == 0 ? 0 : 8;
        writeLongAsUint32(this.cDir, 33639248L);
        writeIntAsUint16(this.cDir, 20);
        writeIntAsUint16(this.cDir, 20);
        writeIntAsUint16(this.cDir, i | 2048);
        writeIntAsUint16(this.cDir, this.currentEntry.getMethod());
        writeIntAsUint16(this.cDir, this.currentEntry.time);
        writeIntAsUint16(this.cDir, this.currentEntry.modDate);
        writeLongAsUint32(this.cDir, this.currentEntry.crc);
        long compressedSize = (this.currentEntry.getMethod() == 8 ? this.currentEntry.getCompressedSize() : this.currentEntry.getSize()) + j;
        writeLongAsUint32(this.cDir, this.currentEntry.getCompressedSize());
        writeLongAsUint32(this.cDir, this.currentEntry.getSize());
        long jWriteIntAsUint16 = compressedSize + writeIntAsUint16(this.cDir, this.nameBytes.length);
        if (this.currentEntry.extra != null) {
            jWriteIntAsUint16 += writeIntAsUint16(this.cDir, r0.length);
        } else {
            writeIntAsUint16(this.cDir, 0);
        }
        writeIntAsUint16(this.cDir, this.entryCommentBytes.length);
        writeIntAsUint16(this.cDir, 0);
        writeIntAsUint16(this.cDir, 0);
        writeLongAsUint32(this.cDir, 0L);
        writeLongAsUint32(this.cDir, this.currentEntry.localHeaderRelOffset);
        this.cDir.write(this.nameBytes);
        this.nameBytes = null;
        byte[] bArr = this.currentEntry.extra;
        if (bArr != null) {
            this.cDir.write(bArr);
        }
        this.offset = jWriteIntAsUint16 + this.padding + this.offset;
        this.padding = 0;
        byte[] bArr2 = this.entryCommentBytes;
        if (bArr2.length > 0) {
            this.cDir.write(bArr2);
            this.entryCommentBytes = BYTE;
        }
        this.currentEntry = null;
    }

    public void finish() throws java.io.IOException {
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        long j;
        if (((java.io.FilterOutputStream) this).out == null) {
            throw new java.io.IOException("Stream is closed");
        }
        if (this.cDir == null) {
            return;
        }
        if (this.entries.isEmpty()) {
            throw new java.util.zip.ZipException("No entries");
        }
        if (this.currentEntry != null) {
            closeEntry();
        }
        int size = this.cDir.size();
        writeLongAsUint32(this.cDir, 101010256L);
        writeIntAsUint16(this.cDir, 0);
        writeIntAsUint16(this.cDir, 0);
        if (this.archiveNeedsZip64EocdRecord) {
            writeIntAsUint16(this.cDir, 65535);
            writeIntAsUint16(this.cDir, 65535);
            j = -1;
            writeLongAsUint32(this.cDir, -1L);
            byteArrayOutputStream = this.cDir;
        } else {
            writeIntAsUint16(this.cDir, this.entries.size());
            writeIntAsUint16(this.cDir, this.entries.size());
            writeLongAsUint32(this.cDir, size);
            byteArrayOutputStream = this.cDir;
            j = this.offset + this.padding;
        }
        writeLongAsUint32(byteArrayOutputStream, j);
        writeIntAsUint16(this.cDir, this.commentBytes.length);
        byte[] bArr = this.commentBytes;
        if (bArr.length > 0) {
            this.cDir.write(bArr);
        }
        this.cDir.writeTo(((java.io.FilterOutputStream) this).out);
        this.cDir = null;
    }

    public void putNextEntry(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry) throws java.io.IOException {
        long j;
        java.io.OutputStream outputStream;
        if (this.currentEntry != null) {
            closeEntry();
        }
        int method = tinkerZipEntry.getMethod();
        if (method == -1) {
            method = this.defaultCompressionMethod;
        }
        if (method == 0) {
            long compressedSize = tinkerZipEntry.getCompressedSize();
            long size = tinkerZipEntry.getSize();
            if (compressedSize == -1) {
                tinkerZipEntry.setCompressedSize(size);
            } else if (size == -1) {
                tinkerZipEntry.setSize(tinkerZipEntry.getCompressedSize());
            }
            if (tinkerZipEntry.getCrc() == -1) {
                throw new java.util.zip.ZipException("STORED entry missing CRC");
            }
            if (tinkerZipEntry.getSize() == -1) {
                throw new java.util.zip.ZipException("STORED entry missing size");
            }
            if (tinkerZipEntry.size != tinkerZipEntry.compressedSize) {
                throw new java.util.zip.ZipException("STORED entry size/compressed size mismatch");
            }
        }
        checkOpen();
        tinkerZipEntry.comment = null;
        tinkerZipEntry.extra = null;
        tinkerZipEntry.time = TIME_CONST;
        tinkerZipEntry.modDate = MOD_DATE_CONST;
        byte[] bytes = tinkerZipEntry.name.getBytes(com.tencent.tinker.ziputils.ziputil.StandardCharsets.UTF_8);
        this.nameBytes = bytes;
        checkSizeIsWithinShort("Name", bytes);
        this.entryCommentBytes = BYTE;
        java.lang.String str = tinkerZipEntry.comment;
        if (str != null) {
            byte[] bytes2 = str.getBytes(com.tencent.tinker.ziputils.ziputil.StandardCharsets.UTF_8);
            this.entryCommentBytes = bytes2;
            checkSizeIsWithinShort("Comment", bytes2);
        }
        tinkerZipEntry.setMethod(method);
        this.currentEntry = tinkerZipEntry;
        tinkerZipEntry.localHeaderRelOffset = this.offset;
        this.entries.add(tinkerZipEntry.name);
        int i = method == 0 ? 0 : 8;
        writeLongAsUint32(((java.io.FilterOutputStream) this).out, 67324752L);
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, 20);
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, i | 2048);
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, method);
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, this.currentEntry.time);
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, this.currentEntry.modDate);
        if (method == 0) {
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, this.currentEntry.crc);
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, this.currentEntry.size);
            outputStream = ((java.io.FilterOutputStream) this).out;
            j = this.currentEntry.size;
        } else {
            j = 0;
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, 0L);
            writeLongAsUint32(((java.io.FilterOutputStream) this).out, 0L);
            outputStream = ((java.io.FilterOutputStream) this).out;
        }
        writeLongAsUint32(outputStream, j);
        int length = this.nameBytes.length;
        writeIntAsUint16(((java.io.FilterOutputStream) this).out, length);
        int paddingByteCount = getPaddingByteCount(this.currentEntry, this.offset + 30 + length + (this.currentEntry.getExtra() != null ? this.currentEntry.getExtra().length : 0));
        this.padding = paddingByteCount;
        byte[] bArr = this.currentEntry.extra;
        if (bArr != null) {
            writeIntAsUint16(((java.io.FilterOutputStream) this).out, bArr.length + paddingByteCount);
        } else {
            writeIntAsUint16(((java.io.FilterOutputStream) this).out, paddingByteCount);
        }
        ((java.io.FilterOutputStream) this).out.write(this.nameBytes);
        byte[] bArr2 = this.currentEntry.extra;
        if (bArr2 != null) {
            ((java.io.FilterOutputStream) this).out.write(bArr2);
        }
        makePaddingToStream(((java.io.FilterOutputStream) this).out, this.padding);
    }

    public void setComment(java.lang.String str) {
        if (str == null) {
            this.commentBytes = BYTE;
            return;
        }
        byte[] bytes = str.getBytes(com.tencent.tinker.ziputils.ziputil.StandardCharsets.UTF_8);
        checkSizeIsWithinShort("Comment", bytes);
        this.commentBytes = bytes;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws java.io.IOException {
        com.tencent.tinker.ziputils.ziputil.Arrays.checkOffsetAndCount(bArr.length, i, i2);
        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry = this.currentEntry;
        if (tinkerZipEntry == null) {
            throw new java.util.zip.ZipException("No active entry");
        }
        tinkerZipEntry.getMethod();
        ((java.io.FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
