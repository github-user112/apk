package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class AlignedZipOutputStream extends java.util.zip.DeflaterOutputStream {
    public static final long CENSIG = 33639248;
    public static final int DEFLATED = 8;
    public static final long ENDSIG = 101010256;
    public static final int EXTHDR = 16;
    public static final long EXTSIG = 134695760;
    public static final int GPBF_DATA_DESCRIPTOR_FLAG = 8;
    public static final int GPBF_UTF8_FLAG = 2048;
    public static final int LOCHDR = 30;
    public static final long LOCSIG = 67324752;
    public static final int MOD_DATE_CONST = 33;
    public static final int STORED = 0;
    public static final int TIME_CONST = 0;
    public static final int ZIPLocalHeaderVersionNeeded = 20;
    public final int alignBytes;
    public java.io.ByteArrayOutputStream cDir;
    public boolean closed;
    public byte[] commentBytes;
    public int compressionLevel;
    public final java.util.zip.CRC32 crc;
    public long crcDataSize;
    public java.util.zip.ZipEntry currentEntry;
    public int defaultCompressionMethod;
    public final java.util.HashSet<java.lang.String> entries;
    public boolean finished;
    public byte[] nameBytes;
    public int nameLength;
    public int offset;
    public int padding;
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final byte[] ONE_ELEM_BYTE_ARRAY = {0};

    public AlignedZipOutputStream(java.io.OutputStream outputStream) {
        this(outputStream, 4);
    }

    public AlignedZipOutputStream(java.io.OutputStream outputStream, int i) {
        super(outputStream, new java.util.zip.Deflater(-1, true));
        this.commentBytes = EMPTY_BYTE_ARRAY;
        this.entries = new java.util.HashSet<>();
        this.defaultCompressionMethod = 8;
        this.compressionLevel = -1;
        this.cDir = new java.io.ByteArrayOutputStream();
        this.crc = new java.util.zip.CRC32();
        this.crcDataSize = 0L;
        this.offset = 0;
        this.finished = false;
        this.closed = false;
        this.padding = 0;
        this.alignBytes = i;
    }

    private void checkOffsetAndCount(int i, int i2, int i3) {
        if ((i2 | i3) < 0 || i2 > i || i - i2 < i3) {
            throw new java.lang.ArrayIndexOutOfBoundsException("length=" + i + "; regionStart=" + i2 + "; regionLength=" + i3);
        }
    }

    private void checkOpen() throws java.io.IOException {
        if (this.closed) {
            throw new java.io.IOException("Stream is closed");
        }
    }

    private int getPaddingByteCount(java.util.zip.ZipEntry zipEntry, int i) {
        int i2;
        if (zipEntry.getMethod() != 0 || (i2 = this.alignBytes) == 0) {
            return 0;
        }
        return (i2 - (i % i2)) % i2;
    }

    private void makePaddingToStream(java.io.OutputStream outputStream, int i) throws java.io.IOException {
        if (i <= 0) {
            return;
        }
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            outputStream.write(0);
            i = i2;
        }
    }

    private long writeLong(java.io.OutputStream outputStream, long j) throws java.io.IOException {
        outputStream.write((int) (255 & j));
        outputStream.write(((int) (j >> 8)) & 255);
        outputStream.write(((int) (j >> 16)) & 255);
        outputStream.write(((int) (j >> 24)) & 255);
        return j;
    }

    private int writeShort(java.io.OutputStream outputStream, int i) throws java.io.IOException {
        if (i <= 65535) {
            outputStream.write(i & 255);
            outputStream.write((i >> 8) & 255);
            return i;
        }
        throw new java.lang.IllegalArgumentException("value " + i + " is too large for type 'short'.");
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (this.closed) {
            return;
        }
        finish();
        ((java.util.zip.DeflaterOutputStream) this).def.end();
        ((java.util.zip.DeflaterOutputStream) this).out.close();
        ((java.util.zip.DeflaterOutputStream) this).out = null;
        this.closed = true;
    }

    public void closeEntry() throws java.io.IOException {
        int iWriteLong;
        java.io.ByteArrayOutputStream byteArrayOutputStream;
        long totalIn;
        checkOpen();
        java.util.zip.ZipEntry zipEntry = this.currentEntry;
        if (zipEntry == null) {
            return;
        }
        if (zipEntry.getMethod() == 8) {
            super.finish();
        }
        if (this.currentEntry.getMethod() == 0) {
            if (this.crc.getValue() != this.currentEntry.getCrc()) {
                throw new java.util.zip.ZipException("CRC mismatch");
            }
            if (this.currentEntry.getSize() != this.crcDataSize) {
                throw new java.util.zip.ZipException("Size mismatch");
            }
        }
        int i = 30;
        if (this.currentEntry.getMethod() != 0) {
            i = 46;
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, 134695760L);
            this.currentEntry.setCrc(this.crc.getValue());
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, this.currentEntry.getCrc());
            this.currentEntry.setCompressedSize(((java.util.zip.DeflaterOutputStream) this).def.getTotalOut());
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, this.currentEntry.getCompressedSize());
            this.currentEntry.setSize(((java.util.zip.DeflaterOutputStream) this).def.getTotalIn());
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, this.currentEntry.getSize());
        }
        int i2 = this.currentEntry.getMethod() == 0 ? 0 : 8;
        writeLong(this.cDir, 33639248L);
        writeShort(this.cDir, 20);
        writeShort(this.cDir, 20);
        writeShort(this.cDir, i2 | 2048);
        writeShort(this.cDir, this.currentEntry.getMethod());
        writeShort(this.cDir, 0);
        writeShort(this.cDir, 33);
        writeLong(this.cDir, this.crc.getValue());
        if (this.currentEntry.getMethod() == 8) {
            iWriteLong = (int) (i + writeLong(this.cDir, ((java.util.zip.DeflaterOutputStream) this).def.getTotalOut()));
            byteArrayOutputStream = this.cDir;
            totalIn = ((java.util.zip.DeflaterOutputStream) this).def.getTotalIn();
        } else {
            iWriteLong = (int) (i + writeLong(this.cDir, this.crcDataSize));
            byteArrayOutputStream = this.cDir;
            totalIn = this.crcDataSize;
        }
        writeLong(byteArrayOutputStream, totalIn);
        int iWriteShort = iWriteLong + writeShort(this.cDir, this.nameLength);
        if (this.currentEntry.getExtra() != null) {
            iWriteShort += writeShort(this.cDir, this.currentEntry.getExtra().length);
        } else {
            writeShort(this.cDir, 0);
        }
        java.lang.String comment = this.currentEntry.getComment();
        byte[] bytes = EMPTY_BYTE_ARRAY;
        if (comment != null) {
            bytes = comment.getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME));
        }
        writeShort(this.cDir, bytes.length);
        writeShort(this.cDir, 0);
        writeShort(this.cDir, 0);
        writeLong(this.cDir, 0L);
        writeLong(this.cDir, this.offset);
        this.cDir.write(this.nameBytes);
        this.nameBytes = null;
        if (this.currentEntry.getExtra() != null) {
            this.cDir.write(this.currentEntry.getExtra());
        }
        this.offset = iWriteShort + this.padding + this.offset;
        this.padding = 0;
        if (bytes.length > 0) {
            this.cDir.write(bytes);
        }
        this.currentEntry = null;
        this.crc.reset();
        this.crcDataSize = 0L;
        ((java.util.zip.DeflaterOutputStream) this).def.reset();
    }

    @Override // java.util.zip.DeflaterOutputStream
    public void finish() throws java.io.IOException {
        checkOpen();
        if (this.finished) {
            return;
        }
        if (this.entries.isEmpty()) {
            throw new java.util.zip.ZipException("No entries");
        }
        if (this.currentEntry != null) {
            closeEntry();
        }
        int size = this.cDir.size();
        writeLong(this.cDir, 101010256L);
        writeShort(this.cDir, 0);
        writeShort(this.cDir, 0);
        writeShort(this.cDir, this.entries.size());
        writeShort(this.cDir, this.entries.size());
        writeLong(this.cDir, size);
        writeLong(this.cDir, this.offset + this.padding);
        writeShort(this.cDir, this.commentBytes.length);
        byte[] bArr = this.commentBytes;
        if (bArr.length > 0) {
            this.cDir.write(bArr);
        }
        this.cDir.writeTo(((java.util.zip.DeflaterOutputStream) this).out);
        this.cDir = null;
        this.finished = true;
    }

    public void putNextEntry(java.util.zip.ZipEntry zipEntry) throws java.io.IOException {
        long size;
        java.io.OutputStream outputStream;
        java.io.OutputStream outputStream2;
        int length;
        if (this.currentEntry != null) {
            closeEntry();
        }
        int method = zipEntry.getMethod();
        if (method == -1) {
            method = this.defaultCompressionMethod;
        }
        if (method == 0) {
            long compressedSize = zipEntry.getCompressedSize();
            long size2 = zipEntry.getSize();
            if (compressedSize == -1) {
                zipEntry.setCompressedSize(size2);
            } else if (size2 == -1) {
                zipEntry.setSize(zipEntry.getCompressedSize());
            }
            if (zipEntry.getCrc() == -1) {
                throw new java.util.zip.ZipException("STORED entry missing CRC");
            }
            if (zipEntry.getSize() == -1) {
                throw new java.util.zip.ZipException("STORED entry missing size");
            }
            if (zipEntry.getSize() != zipEntry.getCompressedSize()) {
                throw new java.util.zip.ZipException("STORED entry size/compressed size mismatch");
            }
        }
        checkOpen();
        if (this.entries.contains(zipEntry.getName())) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Entry already exists: ");
            sbO.append(zipEntry.getName());
            throw new java.util.zip.ZipException(sbO.toString());
        }
        if (this.entries.size() == 65535) {
            throw new java.util.zip.ZipException("Too many entries for the zip file format's 16-bit entry count");
        }
        byte[] bytes = zipEntry.getName().getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME));
        this.nameBytes = bytes;
        int length2 = bytes.length;
        this.nameLength = length2;
        if (length2 > 65535) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.i(e.a.c.a.a.o("Name too long: "), this.nameLength, " UTF-8 bytes"));
        }
        ((java.util.zip.DeflaterOutputStream) this).def.setLevel(this.compressionLevel);
        zipEntry.setMethod(method);
        this.currentEntry = zipEntry;
        this.entries.add(zipEntry.getName());
        int i = method == 0 ? 0 : 8;
        writeLong(((java.util.zip.DeflaterOutputStream) this).out, 67324752L);
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, 20);
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, i | 2048);
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, method);
        if (this.currentEntry.getTime() == -1) {
            this.currentEntry.setTime(java.lang.System.currentTimeMillis());
        }
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, 0);
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, 33);
        if (method == 0) {
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, this.currentEntry.getCrc());
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, this.currentEntry.getSize());
            outputStream = ((java.util.zip.DeflaterOutputStream) this).out;
            size = this.currentEntry.getSize();
        } else {
            size = 0;
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, 0L);
            writeLong(((java.util.zip.DeflaterOutputStream) this).out, 0L);
            outputStream = ((java.util.zip.DeflaterOutputStream) this).out;
        }
        writeLong(outputStream, size);
        writeShort(((java.util.zip.DeflaterOutputStream) this).out, this.nameLength);
        this.padding = getPaddingByteCount(this.currentEntry, this.offset + 30 + this.nameLength + (this.currentEntry.getExtra() != null ? this.currentEntry.getExtra().length : 0));
        if (this.currentEntry.getExtra() != null) {
            outputStream2 = ((java.util.zip.DeflaterOutputStream) this).out;
            length = this.currentEntry.getExtra().length + this.padding;
        } else {
            outputStream2 = ((java.util.zip.DeflaterOutputStream) this).out;
            length = this.padding;
        }
        writeShort(outputStream2, length);
        ((java.util.zip.DeflaterOutputStream) this).out.write(this.nameBytes);
        if (this.currentEntry.getExtra() != null) {
            ((java.util.zip.DeflaterOutputStream) this).out.write(this.currentEntry.getExtra());
        }
        makePaddingToStream(((java.util.zip.DeflaterOutputStream) this).out, this.padding);
    }

    public void setComment(java.lang.String str) {
        if (str == null) {
            this.commentBytes = null;
            return;
        }
        byte[] bytes = str.getBytes(java.nio.charset.Charset.forName(com.google.android.exoplayer2.C.UTF8_NAME));
        if (bytes.length > 65535) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.i(e.a.c.a.a.o("Comment too long: "), bytes.length, " bytes"));
        }
        this.commentBytes = bytes;
    }

    public void setLevel(int i) {
        if (i < -1 || i > 9) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Bad level: ", i));
        }
        this.compressionLevel = i;
    }

    public void setMethod(int i) {
        if (i != 0 && i != 8) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Bad method: ", i));
        }
        this.defaultCompressionMethod = i;
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws java.io.IOException {
        byte[] bArr = ONE_ELEM_BYTE_ARRAY;
        bArr[0] = (byte) (i & 255);
        write(bArr, 0, 1);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws java.io.IOException {
        checkOffsetAndCount(bArr.length, i, i2);
        java.util.zip.ZipEntry zipEntry = this.currentEntry;
        if (zipEntry == null) {
            throw new java.util.zip.ZipException("No active entry");
        }
        if (zipEntry.getMethod() == 0) {
            ((java.util.zip.DeflaterOutputStream) this).out.write(bArr, i, i2);
        } else {
            super.write(bArr, i, i2);
        }
        this.crc.update(bArr, i, i2);
        this.crcDataSize += i2;
    }
}
