package d.o;

/* loaded from: classes.dex */
public final class g implements java.io.Closeable {
    public final java.io.File a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final java.io.File f2179c;

    /* renamed from: d, reason: collision with root package name */
    public final java.io.RandomAccessFile f2180d;

    /* renamed from: e, reason: collision with root package name */
    public final java.nio.channels.FileChannel f2181e;

    /* renamed from: f, reason: collision with root package name */
    public final java.nio.channels.FileLock f2182f;

    public static class a extends java.io.File {
        public long a;

        public a(java.io.File file, java.lang.String str) {
            super(file, str);
            this.a = -1L;
        }
    }

    public g(java.io.File file, java.io.File file2) throws java.lang.Throwable {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("MultiDexExtractor(");
        sbO.append(file.getPath());
        sbO.append(", ");
        sbO.append(file2.getPath());
        sbO.append(")");
        android.util.Log.i("MultiDex", sbO.toString());
        this.a = file;
        this.f2179c = file2;
        this.b = d(file);
        java.io.File file3 = new java.io.File(file2, "MultiDex.lock");
        java.io.RandomAccessFile randomAccessFile = new java.io.RandomAccessFile(file3, "rw");
        this.f2180d = randomAccessFile;
        try {
            this.f2181e = randomAccessFile.getChannel();
            try {
                android.util.Log.i("MultiDex", "Blocking on lock " + file3.getPath());
                this.f2182f = this.f2181e.lock();
                android.util.Log.i("MultiDex", file3.getPath() + " locked");
            } catch (java.io.IOException e2) {
                e = e2;
                a(this.f2181e);
                throw e;
            } catch (java.lang.Error e3) {
                e = e3;
                a(this.f2181e);
                throw e;
            } catch (java.lang.RuntimeException e4) {
                e = e4;
                a(this.f2181e);
                throw e;
            }
        } catch (java.io.IOException | java.lang.Error | java.lang.RuntimeException e5) {
            a(this.f2180d);
            throw e5;
        }
    }

    public static void a(java.io.Closeable closeable) throws java.io.IOException {
        try {
            closeable.close();
        } catch (java.io.IOException e2) {
            android.util.Log.w("MultiDex", "Failed to close resource", e2);
        }
    }

    public static void b(java.util.zip.ZipFile zipFile, java.util.zip.ZipEntry zipEntry, java.io.File file, java.lang.String str) throws java.io.IOException {
        java.io.InputStream inputStream = zipFile.getInputStream(zipEntry);
        java.io.File fileCreateTempFile = java.io.File.createTempFile(e.a.c.a.a.e("tmp-", str), ".zip", file.getParentFile());
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Extracting ");
        sbO.append(fileCreateTempFile.getPath());
        android.util.Log.i("MultiDex", sbO.toString());
        try {
            java.util.zip.ZipOutputStream zipOutputStream = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(new java.io.FileOutputStream(fileCreateTempFile)));
            try {
                java.util.zip.ZipEntry zipEntry2 = new java.util.zip.ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        break;
                    } else {
                        zipOutputStream.write(bArr, 0, i);
                    }
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!fileCreateTempFile.setReadOnly()) {
                    throw new java.io.IOException("Failed to mark readonly \"" + fileCreateTempFile.getAbsolutePath() + "\" (tmp of \"" + file.getAbsolutePath() + "\")");
                }
                android.util.Log.i("MultiDex", "Renaming to " + file.getPath());
                if (fileCreateTempFile.renameTo(file)) {
                    return;
                }
                throw new java.io.IOException("Failed to rename \"" + fileCreateTempFile.getAbsolutePath() + "\" to \"" + file.getAbsolutePath() + "\"");
            } catch (java.lang.Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            a(inputStream);
            fileCreateTempFile.delete();
        }
    }

    public static long c(java.io.File file) {
        long jLastModified = file.lastModified();
        return jLastModified == -1 ? jLastModified - 1 : jLastModified;
    }

    public static long d(java.io.File file) throws java.io.IOException {
        java.io.RandomAccessFile randomAccessFile = new java.io.RandomAccessFile(file, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser.StreamIndexParser.KEY_FRAGMENT_REPEAT_COUNT);
        try {
            d.o.h hVarA = d.o.e.a.a(randomAccessFile);
            java.util.zip.CRC32 crc32 = new java.util.zip.CRC32();
            long j = hVarA.b;
            randomAccessFile.seek(hVarA.a);
            int iMin = (int) java.lang.Math.min(android.support.v4.media.session.PlaybackStateCompat.ACTION_PREPARE, j);
            byte[] bArr = new byte[16384];
            while (true) {
                int i = randomAccessFile.read(bArr, 0, iMin);
                if (i == -1) {
                    break;
                }
                crc32.update(bArr, 0, i);
                j -= i;
                if (j == 0) {
                    break;
                }
                iMin = (int) java.lang.Math.min(android.support.v4.media.session.PlaybackStateCompat.ACTION_PREPARE, j);
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (java.lang.Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    public static void h(android.content.Context context, java.lang.String str, long j, long j2, java.util.List<d.o.g.a> list) {
        android.content.SharedPreferences.Editor editorEdit = context.getSharedPreferences("multidex.version", 4).edit();
        editorEdit.putLong(str + "timestamp", j);
        editorEdit.putLong(e.a.c.a.a.j(new java.lang.StringBuilder(), str, "crc"), j2);
        editorEdit.putInt(str + "dex.number", list.size() + 1);
        int i = 2;
        for (d.o.g.a aVar : list) {
            editorEdit.putLong(str + "dex.crc." + i, aVar.a);
            editorEdit.putLong(str + "dex.time." + i, aVar.lastModified());
            i++;
        }
        editorEdit.commit();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f2182f.release();
        this.f2181e.close();
        this.f2180d.close();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<? extends java.io.File> e(android.content.Context r13, java.lang.String r14, boolean r15) throws java.io.IOException {
        /*
            r12 = this;
            java.lang.String r0 = "MultiDexExtractor.load("
            java.lang.StringBuilder r0 = e.a.c.a.a.o(r0)
            java.io.File r1 = r12.a
            java.lang.String r1 = r1.getPath()
            r0.append(r1)
            java.lang.String r1 = ", "
            r0.append(r1)
            r0.append(r15)
            r0.append(r1)
            r0.append(r14)
            java.lang.String r1 = ")"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "MultiDex"
            android.util.Log.i(r1, r0)
            java.nio.channels.FileLock r0 = r12.f2182f
            boolean r0 = r0.isValid()
            if (r0 == 0) goto Lc1
            if (r15 != 0) goto L8a
            java.io.File r0 = r12.a
            long r2 = r12.b
            r4 = 4
            java.lang.String r5 = "multidex.version"
            android.content.SharedPreferences r4 = r13.getSharedPreferences(r5, r4)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r14)
            java.lang.String r6 = "timestamp"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            r6 = -1
            long r8 = r4.getLong(r5, r6)
            long r10 = c(r0)
            int r0 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r0 != 0) goto L7b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r14)
            java.lang.String r5 = "crc"
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            long r4 = r4.getLong(r0, r6)
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 == 0) goto L79
            goto L7b
        L79:
            r0 = 0
            goto L7c
        L7b:
            r0 = 1
        L7c:
            if (r0 != 0) goto L8a
            java.util.List r13 = r12.f(r13, r14)     // Catch: java.io.IOException -> L83
            goto La7
        L83:
            r15 = move-exception
            java.lang.String r0 = "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"
            android.util.Log.w(r1, r0, r15)
            goto L94
        L8a:
            if (r15 == 0) goto L8f
            java.lang.String r15 = "Forced extraction must be performed."
            goto L91
        L8f:
            java.lang.String r15 = "Detected that extraction must be performed."
        L91:
            android.util.Log.i(r1, r15)
        L94:
            java.util.List r15 = r12.g()
            java.io.File r0 = r12.a
            long r4 = c(r0)
            long r6 = r12.b
            r2 = r13
            r3 = r14
            r8 = r15
            h(r2, r3, r4, r6, r8)
            r13 = r15
        La7:
            java.lang.String r14 = "load found "
            java.lang.StringBuilder r14 = e.a.c.a.a.o(r14)
            int r15 = r13.size()
            r14.append(r15)
            java.lang.String r15 = " secondary dex files"
            r14.append(r15)
            java.lang.String r14 = r14.toString()
            android.util.Log.i(r1, r14)
            return r13
        Lc1:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "MultiDexExtractor was closed"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: d.o.g.e(android.content.Context, java.lang.String, boolean):java.util.List");
    }

    public final java.util.List<d.o.g.a> f(android.content.Context context, java.lang.String str) throws java.io.IOException {
        android.util.Log.i("MultiDex", "loading existing secondary dex files");
        java.lang.String str2 = this.a.getName() + ".classes";
        android.content.SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", 4);
        int i = sharedPreferences.getInt(str + "dex.number", 1);
        java.util.ArrayList arrayList = new java.util.ArrayList(i + (-1));
        int i2 = 2;
        while (i2 <= i) {
            d.o.g.a aVar = new d.o.g.a(this.f2179c, str2 + i2 + ".zip");
            if (!aVar.isFile()) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Missing extracted secondary dex file '");
                sbO.append(aVar.getPath());
                sbO.append("'");
                throw new java.io.IOException(sbO.toString());
            }
            aVar.a = d(aVar);
            long j = sharedPreferences.getLong(str + "dex.crc." + i2, -1L);
            long j2 = sharedPreferences.getLong(str + "dex.time." + i2, -1L);
            long jLastModified = aVar.lastModified();
            if (j2 == jLastModified) {
                java.lang.String str3 = str2;
                android.content.SharedPreferences sharedPreferences2 = sharedPreferences;
                if (j == aVar.a) {
                    arrayList.add(aVar);
                    i2++;
                    sharedPreferences = sharedPreferences2;
                    str2 = str3;
                }
            }
            throw new java.io.IOException("Invalid extracted dex: " + aVar + " (key \"" + str + "\"), expected modification time: " + j2 + ", modification time: " + jLastModified + ", expected crc: " + j + ", file crc: " + aVar.a);
        }
        return arrayList;
    }

    public final java.util.List<d.o.g.a> g() throws java.io.IOException {
        java.lang.String str = this.a.getName() + ".classes";
        java.io.File[] fileArrListFiles = this.f2179c.listFiles(new d.o.f(this));
        if (fileArrListFiles == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to list secondary dex dir content (");
            sbO.append(this.f2179c.getPath());
            sbO.append(").");
            android.util.Log.w("MultiDex", sbO.toString());
        } else {
            for (java.io.File file : fileArrListFiles) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Trying to delete old file ");
                sbO2.append(file.getPath());
                sbO2.append(" of size ");
                sbO2.append(file.length());
                android.util.Log.i("MultiDex", sbO2.toString());
                if (file.delete()) {
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Deleted old file ");
                    sbO3.append(file.getPath());
                    android.util.Log.i("MultiDex", sbO3.toString());
                } else {
                    java.lang.StringBuilder sbO4 = e.a.c.a.a.o("Failed to delete old file ");
                    sbO4.append(file.getPath());
                    android.util.Log.w("MultiDex", sbO4.toString());
                }
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.zip.ZipFile zipFile = new java.util.zip.ZipFile(this.a);
        int i = 2;
        java.lang.String str2 = "classes2.dex";
        while (true) {
            try {
                java.util.zip.ZipEntry entry = zipFile.getEntry(str2);
                if (entry == null) {
                    return arrayList;
                }
                d.o.g.a aVar = new d.o.g.a(this.f2179c, str + i + ".zip");
                arrayList.add(aVar);
                android.util.Log.i("MultiDex", "Extraction is needed for file " + aVar);
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    b(zipFile, entry, aVar, str);
                    try {
                        aVar.a = d(aVar);
                        z = true;
                    } catch (java.io.IOException e2) {
                        android.util.Log.w("MultiDex", "Failed to read crc from " + aVar.getAbsolutePath(), e2);
                        z = false;
                    }
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("Extraction ");
                    sb.append(z ? "succeeded" : "failed");
                    sb.append(" '");
                    sb.append(aVar.getAbsolutePath());
                    sb.append("': length ");
                    sb.append(aVar.length());
                    sb.append(" - crc: ");
                    sb.append(aVar.a);
                    android.util.Log.i("MultiDex", sb.toString());
                    if (!z) {
                        aVar.delete();
                        if (aVar.exists()) {
                            android.util.Log.w("MultiDex", "Failed to delete corrupted secondary dex '" + aVar.getPath() + "'");
                        }
                    }
                }
                if (!z) {
                    throw new java.io.IOException("Could not create zip file " + aVar.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                str2 = "classes" + i + com.tencent.tinker.loader.shareutil.ShareConstants.DEX_SUFFIX;
            } finally {
                try {
                    zipFile.close();
                } catch (java.io.IOException e3) {
                    android.util.Log.w("MultiDex", "Failed to close resource", e3);
                }
            }
        }
    }
}
