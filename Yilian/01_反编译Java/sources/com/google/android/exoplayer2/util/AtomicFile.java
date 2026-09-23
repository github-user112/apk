package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class AtomicFile {
    public static final java.lang.String TAG = "AtomicFile";
    public final java.io.File backupName;
    public final java.io.File baseName;

    public static final class AtomicFileOutputStream extends java.io.OutputStream {
        public boolean closed = false;
        public final java.io.FileOutputStream fileOutputStream;

        public AtomicFileOutputStream(java.io.File file) {
            this.fileOutputStream = new java.io.FileOutputStream(file);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            flush();
            try {
                this.fileOutputStream.getFD().sync();
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.util.AtomicFile.TAG, "Failed to sync file descriptor:", e2);
            }
            this.fileOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            this.fileOutputStream.flush();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws java.io.IOException {
            this.fileOutputStream.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws java.io.IOException {
            this.fileOutputStream.write(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws java.io.IOException {
            this.fileOutputStream.write(bArr, i, i2);
        }
    }

    public AtomicFile(java.io.File file) {
        this.baseName = file;
        this.backupName = new java.io.File(java.lang.String.valueOf(file.getPath()).concat(".bak"));
    }

    private void restoreBackup() {
        if (this.backupName.exists()) {
            this.baseName.delete();
            this.backupName.renameTo(this.baseName);
        }
    }

    public void delete() {
        this.baseName.delete();
        this.backupName.delete();
    }

    public void endWrite(java.io.OutputStream outputStream) throws java.io.IOException {
        outputStream.close();
        this.backupName.delete();
    }

    public boolean exists() {
        return this.baseName.exists() || this.backupName.exists();
    }

    public java.io.InputStream openRead() {
        restoreBackup();
        return new java.io.FileInputStream(this.baseName);
    }

    public java.io.OutputStream startWrite() throws java.io.IOException {
        if (this.baseName.exists()) {
            if (this.backupName.exists()) {
                this.baseName.delete();
            } else if (!this.baseName.renameTo(this.backupName)) {
                java.lang.String strValueOf = java.lang.String.valueOf(this.baseName);
                java.lang.String strValueOf2 = java.lang.String.valueOf(this.backupName);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf2.length() + strValueOf.length() + 37);
                sb.append("Couldn't rename file ");
                sb.append(strValueOf);
                sb.append(" to backup file ");
                sb.append(strValueOf2);
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            }
        }
        try {
            return new com.google.android.exoplayer2.util.AtomicFile.AtomicFileOutputStream(this.baseName);
        } catch (java.io.FileNotFoundException e2) {
            java.io.File parentFile = this.baseName.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                java.lang.String strValueOf3 = java.lang.String.valueOf(this.baseName);
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(strValueOf3.length() + 16);
                sb2.append("Couldn't create ");
                sb2.append(strValueOf3);
                throw new java.io.IOException(sb2.toString(), e2);
            }
            try {
                return new com.google.android.exoplayer2.util.AtomicFile.AtomicFileOutputStream(this.baseName);
            } catch (java.io.FileNotFoundException e3) {
                java.lang.String strValueOf4 = java.lang.String.valueOf(this.baseName);
                java.lang.StringBuilder sb3 = new java.lang.StringBuilder(strValueOf4.length() + 16);
                sb3.append("Couldn't create ");
                sb3.append(strValueOf4);
                throw new java.io.IOException(sb3.toString(), e3);
            }
        }
    }
}
