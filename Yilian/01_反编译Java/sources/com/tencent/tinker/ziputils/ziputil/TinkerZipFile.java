package com.tencent.tinker.ziputils.ziputil;

/* loaded from: classes.dex */
public class TinkerZipFile implements java.io.Closeable, com.tencent.tinker.ziputils.ziputil.ZipConstants {
    public static final int GPBF_DATA_DESCRIPTOR_FLAG = 8;
    public static final int GPBF_ENCRYPTED_FLAG = 1;
    public static final int GPBF_UNSUPPORTED_MASK = 1;
    public static final int GPBF_UTF8_FLAG = 2048;
    public static final int OPEN_DELETE = 4;
    public static final int OPEN_READ = 1;
    public java.lang.String comment;
    public final java.util.LinkedHashMap<java.lang.String, com.tencent.tinker.ziputils.ziputil.TinkerZipEntry> entries;
    public java.io.File fileToDeleteOnClose;
    public final java.lang.String filename;
    public java.io.RandomAccessFile raf;

    public static class EocdRecord {
        public final long centralDirOffset;
        public final int commentLength;
        public final long numEntries;

        public EocdRecord(long j, long j2, int i) {
            this.numEntries = j;
            this.centralDirOffset = j2;
            this.commentLength = i;
        }
    }

    public static class RAFStream extends java.io.InputStream {
        public long endOffset;
        public long offset;
        public final java.io.RandomAccessFile sharedRaf;

        public RAFStream(java.io.RandomAccessFile randomAccessFile, long j) {
            this(randomAccessFile, j, randomAccessFile.length());
        }

        public RAFStream(java.io.RandomAccessFile randomAccessFile, long j, long j2) {
            this.sharedRaf = randomAccessFile;
            this.offset = j;
            this.endOffset = j2;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.offset < this.endOffset ? 1 : 0;
        }

        @Override // java.io.InputStream
        public int read() {
            return com.tencent.tinker.ziputils.ziputil.Streams.readSingleByte(this);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            synchronized (this.sharedRaf) {
                long j = this.endOffset - this.offset;
                if (i2 > j) {
                    i2 = (int) j;
                }
                this.sharedRaf.seek(this.offset);
                int i3 = this.sharedRaf.read(bArr, i, i2);
                if (i3 <= 0) {
                    return -1;
                }
                this.offset += i3;
                return i3;
            }
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            long j2 = this.endOffset;
            long j3 = this.offset;
            if (j > j2 - j3) {
                j = j2 - j3;
            }
            this.offset += j;
            return j;
        }
    }

    public TinkerZipFile(java.io.File file) {
        this(file, 1);
    }

    public TinkerZipFile(java.io.File file, int i) throws java.io.IOException {
        this.entries = new java.util.LinkedHashMap<>();
        this.filename = file.getPath();
        if (i != 1 && i != 5) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Bad mode: ", i));
        }
        if ((i & 4) != 0) {
            this.fileToDeleteOnClose = file;
            file.deleteOnExit();
        } else {
            this.fileToDeleteOnClose = null;
        }
        this.raf = new java.io.RandomAccessFile(this.filename, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT);
        readCentralDir();
    }

    public TinkerZipFile(java.lang.String str) {
        this(new java.io.File(str), 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkNotClosed() {
        if (this.raf == null) {
            throw new java.lang.IllegalStateException("Zip file closed");
        }
    }

    public static boolean equals(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        int length;
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || (length = charSequence.length()) != charSequence2.length()) {
            return false;
        }
        if ((charSequence instanceof java.lang.String) && (charSequence2 instanceof java.lang.String)) {
            return charSequence.equals(charSequence2);
        }
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isEmpty(java.lang.CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static com.tencent.tinker.ziputils.ziputil.TinkerZipFile.EocdRecord parseEocdRecord(java.io.RandomAccessFile randomAccessFile, long j, boolean z) throws java.io.IOException {
        long j2;
        long j3;
        randomAccessFile.seek(j);
        byte[] bArr = new byte[18];
        randomAccessFile.readFully(bArr);
        com.tencent.tinker.ziputils.ziputil.BufferIterator it = com.tencent.tinker.ziputils.ziputil.HeapBufferIterator.iterator(bArr, 0, 18, java.nio.ByteOrder.LITTLE_ENDIAN);
        if (z) {
            it.skip(16);
            j2 = -1;
            j3 = -1;
        } else {
            int i = it.readShort() & 65535;
            int i2 = it.readShort() & 65535;
            long j4 = it.readShort() & 65535;
            int i3 = it.readShort() & 65535;
            it.skip(4);
            long j5 = it.readInt() & 4294967295L;
            if (j4 != i3 || i != 0 || i2 != 0) {
                throw new java.util.zip.ZipException("Spanned archives not supported");
            }
            j2 = j4;
            j3 = j5;
        }
        return new com.tencent.tinker.ziputils.ziputil.TinkerZipFile.EocdRecord(j2, j3, it.readShort() & 65535);
    }

    private void readCentralDir() throws java.io.IOException {
        long length = this.raf.length() - 22;
        if (length < 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("File too short to be a zip file: ");
            sbO.append(this.raf.length());
            throw new java.util.zip.ZipException(sbO.toString());
        }
        this.raf.seek(0L);
        if (java.lang.Integer.reverseBytes(this.raf.readInt()) != 67324752) {
            throw new java.util.zip.ZipException("Not a zip archive");
        }
        long j = length - android.support.v4.media.session.PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
        long j2 = j >= 0 ? j : 0L;
        do {
            this.raf.seek(length);
            if (java.lang.Integer.reverseBytes(this.raf.readInt()) == 101010256) {
                byte[] bArr = new byte[18];
                this.raf.readFully(bArr);
                com.tencent.tinker.ziputils.ziputil.BufferIterator it = com.tencent.tinker.ziputils.ziputil.HeapBufferIterator.iterator(bArr, 0, 18, java.nio.ByteOrder.LITTLE_ENDIAN);
                int i = it.readShort() & 65535;
                int i2 = it.readShort() & 65535;
                int i3 = it.readShort() & 65535;
                int i4 = it.readShort() & 65535;
                it.skip(4);
                long j3 = it.readInt() & 4294967295L;
                int i5 = it.readShort() & 65535;
                if (i3 != i4 || i != 0 || i2 != 0) {
                    throw new java.util.zip.ZipException("Spanned archives not supported");
                }
                if (i5 > 0) {
                    byte[] bArr2 = new byte[i5];
                    this.raf.readFully(bArr2);
                    this.comment = new java.lang.String(bArr2, 0, i5, com.tencent.tinker.ziputils.ziputil.StandardCharsets.UTF_8);
                }
                java.io.BufferedInputStream bufferedInputStream = new java.io.BufferedInputStream(new com.tencent.tinker.ziputils.ziputil.TinkerZipFile.RAFStream(this.raf, j3), 4096);
                byte[] bArr3 = new byte[46];
                for (int i6 = 0; i6 < i3; i6++) {
                    com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry = new com.tencent.tinker.ziputils.ziputil.TinkerZipEntry(bArr3, bufferedInputStream, com.tencent.tinker.ziputils.ziputil.StandardCharsets.UTF_8, false);
                    if (tinkerZipEntry.localHeaderRelOffset >= j3) {
                        throw new java.util.zip.ZipException("Local file header offset is after central directory");
                    }
                    java.lang.String name = tinkerZipEntry.getName();
                    if (this.entries.put(name, tinkerZipEntry) != null) {
                        throw new java.util.zip.ZipException(e.a.c.a.a.e("Duplicate entry name: ", name));
                    }
                }
                return;
            }
            length--;
        } while (length >= j2);
        throw new java.util.zip.ZipException("End Of Central Directory signature not found");
    }

    public static void throwZipException(java.lang.String str, long j, java.lang.String str2, long j2, java.lang.String str3, int i) throws java.util.zip.ZipException {
        java.lang.String hexString = java.lang.Integer.toHexString(i);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("file name:");
        sb.append(str);
        sb.append(", file size");
        sb.append(j);
        sb.append(", entry name:");
        sb.append(str2);
        sb.append(", entry localHeaderRelOffset:");
        sb.append(j2);
        sb.append(", ");
        sb.append(str3);
        throw new java.util.zip.ZipException(e.a.c.a.a.j(sb, " signature not found; was ", hexString));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        java.io.RandomAccessFile randomAccessFile = this.raf;
        if (randomAccessFile != null) {
            synchronized (randomAccessFile) {
                this.raf = null;
                randomAccessFile.close();
            }
            java.io.File file = this.fileToDeleteOnClose;
            if (file != null) {
                file.delete();
                this.fileToDeleteOnClose = null;
            }
        }
    }

    public java.util.Enumeration<? extends com.tencent.tinker.ziputils.ziputil.TinkerZipEntry> entries() {
        checkNotClosed();
        final java.util.Iterator<com.tencent.tinker.ziputils.ziputil.TinkerZipEntry> it = this.entries.values().iterator();
        return new java.util.Enumeration<com.tencent.tinker.ziputils.ziputil.TinkerZipEntry>() { // from class: com.tencent.tinker.ziputils.ziputil.TinkerZipFile.1
            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                com.tencent.tinker.ziputils.ziputil.TinkerZipFile.this.checkNotClosed();
                return it.hasNext();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Enumeration
            public com.tencent.tinker.ziputils.ziputil.TinkerZipEntry nextElement() {
                com.tencent.tinker.ziputils.ziputil.TinkerZipFile.this.checkNotClosed();
                return (com.tencent.tinker.ziputils.ziputil.TinkerZipEntry) it.next();
            }
        };
    }

    public java.lang.String getComment() {
        checkNotClosed();
        return this.comment;
    }

    public com.tencent.tinker.ziputils.ziputil.TinkerZipEntry getEntry(java.lang.String str) {
        checkNotClosed();
        if (str == null) {
            throw new java.lang.NullPointerException("entryName == null");
        }
        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry = this.entries.get(str);
        if (tinkerZipEntry != null) {
            return tinkerZipEntry;
        }
        return this.entries.get(str + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
    }

    public java.io.InputStream getInputStream(com.tencent.tinker.ziputils.ziputil.TinkerZipEntry tinkerZipEntry) {
        com.tencent.tinker.ziputils.ziputil.TinkerZipFile.RAFStream rAFStream;
        long j;
        long j2;
        com.tencent.tinker.ziputils.ziputil.TinkerZipEntry entry = getEntry(tinkerZipEntry.getName());
        if (entry == null) {
            return null;
        }
        java.io.RandomAccessFile randomAccessFile = this.raf;
        synchronized (randomAccessFile) {
            rAFStream = new com.tencent.tinker.ziputils.ziputil.TinkerZipFile.RAFStream(randomAccessFile, entry.localHeaderRelOffset);
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(rAFStream);
            int iReverseBytes = java.lang.Integer.reverseBytes(dataInputStream.readInt());
            if (iReverseBytes != 67324752) {
                throwZipException(this.filename, randomAccessFile.length(), entry.getName(), entry.localHeaderRelOffset, "Local File Header", iReverseBytes);
            }
            dataInputStream.skipBytes(2);
            int iReverseBytes2 = java.lang.Short.reverseBytes(dataInputStream.readShort()) & 65535;
            if ((iReverseBytes2 & 1) != 0) {
                throw new java.util.zip.ZipException("Invalid General Purpose Bit Flag: " + iReverseBytes2);
            }
            dataInputStream.skipBytes(18);
            int iReverseBytes3 = java.lang.Short.reverseBytes(dataInputStream.readShort()) & 65535;
            int iReverseBytes4 = 65535 & java.lang.Short.reverseBytes(dataInputStream.readShort());
            dataInputStream.close();
            rAFStream.skip(iReverseBytes3 + iReverseBytes4);
            if (entry.compressionMethod == 0) {
                j = rAFStream.offset;
                j2 = entry.size;
            } else {
                j = rAFStream.offset;
                j2 = entry.compressedSize;
            }
            rAFStream.endOffset = j + j2;
        }
        return rAFStream;
    }

    public java.lang.String getName() {
        return this.filename;
    }

    public int size() {
        checkNotClosed();
        return this.entries.size();
    }
}
