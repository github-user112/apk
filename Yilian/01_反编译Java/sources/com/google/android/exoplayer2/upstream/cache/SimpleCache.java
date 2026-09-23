package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public final class SimpleCache implements com.google.android.exoplayer2.upstream.cache.Cache {
    public static final int SUBDIRECTORY_COUNT = 10;
    public static final java.lang.String TAG = "SimpleCache";
    public static final java.lang.String UID_FILE_SUFFIX = ".uid";
    public static final java.util.HashSet<java.io.File> lockedCacheDirs = new java.util.HashSet<>();
    public final java.io.File cacheDir;
    public final com.google.android.exoplayer2.upstream.cache.CachedContentIndex contentIndex;
    public final com.google.android.exoplayer2.upstream.cache.CacheEvictor evictor;
    public final com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex fileIndex;
    public com.google.android.exoplayer2.upstream.cache.Cache.CacheException initializationException;
    public final java.util.HashMap<java.lang.String, java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener>> listeners;
    public final java.util.Random random;
    public boolean released;
    public long totalSpace;
    public final boolean touchCacheSpans;
    public long uid;

    @java.lang.Deprecated
    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor) {
        this(file, cacheEvictor, (byte[]) null, false);
    }

    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor, com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
        this(file, cacheEvictor, databaseProvider, null, false, false);
    }

    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor, com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, byte[] bArr, boolean z, boolean z2) {
        this(file, cacheEvictor, new com.google.android.exoplayer2.upstream.cache.CachedContentIndex(databaseProvider, file, bArr, z, z2), (databaseProvider == null || z2) ? null : new com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex(databaseProvider));
    }

    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor, com.google.android.exoplayer2.upstream.cache.CachedContentIndex cachedContentIndex, com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex cacheFileMetadataIndex) {
        if (!lockFolder(file)) {
            java.lang.String strValueOf = java.lang.String.valueOf(file);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 46);
            sb.append("Another SimpleCache instance uses the folder: ");
            sb.append(strValueOf);
            throw new java.lang.IllegalStateException(sb.toString());
        }
        this.cacheDir = file;
        this.evictor = cacheEvictor;
        this.contentIndex = cachedContentIndex;
        this.fileIndex = cacheFileMetadataIndex;
        this.listeners = new java.util.HashMap<>();
        this.random = new java.util.Random();
        this.touchCacheSpans = cacheEvictor.requiresCacheSpanTouches();
        this.uid = -1L;
        final android.os.ConditionVariable conditionVariable = new android.os.ConditionVariable();
        new java.lang.Thread("ExoPlayer:SimpleCacheInit") { // from class: com.google.android.exoplayer2.upstream.cache.SimpleCache.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (com.google.android.exoplayer2.upstream.cache.SimpleCache.this) {
                    conditionVariable.open();
                    com.google.android.exoplayer2.upstream.cache.SimpleCache.this.initialize();
                    com.google.android.exoplayer2.upstream.cache.SimpleCache.this.evictor.onCacheInitialized();
                }
            }
        }.start();
        conditionVariable.block();
    }

    @java.lang.Deprecated
    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor, byte[] bArr) {
        this(file, cacheEvictor, bArr, bArr != null);
    }

    @java.lang.Deprecated
    public SimpleCache(java.io.File file, com.google.android.exoplayer2.upstream.cache.CacheEvictor cacheEvictor, byte[] bArr, boolean z) {
        this(file, cacheEvictor, null, bArr, z, true);
    }

    private void addSpan(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan) {
        this.contentIndex.getOrAdd(simpleCacheSpan.key).addSpan(simpleCacheSpan);
        this.totalSpace += simpleCacheSpan.length;
        notifySpanAdded(simpleCacheSpan);
    }

    public static void createCacheDirectories(java.io.File file) throws com.google.android.exoplayer2.upstream.cache.Cache.CacheException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(file);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 34);
        sb.append("Failed to create cache directory: ");
        sb.append(strValueOf);
        java.lang.String string = sb.toString();
        com.google.android.exoplayer2.util.Log.e(TAG, string);
        throw new com.google.android.exoplayer2.upstream.cache.Cache.CacheException(string);
    }

    public static long createUid(java.io.File file) throws java.io.IOException {
        long jNextLong = new java.security.SecureRandom().nextLong();
        long jAbs = jNextLong == Long.MIN_VALUE ? 0L : java.lang.Math.abs(jNextLong);
        java.lang.String strValueOf = java.lang.String.valueOf(java.lang.Long.toString(jAbs, 16));
        java.io.File file2 = new java.io.File(file, UID_FILE_SUFFIX.length() != 0 ? strValueOf.concat(UID_FILE_SUFFIX) : new java.lang.String(strValueOf));
        if (file2.createNewFile()) {
            return jAbs;
        }
        java.lang.String strValueOf2 = java.lang.String.valueOf(file2);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf2.length() + 27);
        sb.append("Failed to create UID file: ");
        sb.append(strValueOf2);
        throw new java.io.IOException(sb.toString());
    }

    public static void delete(java.io.File file, com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
        if (file.exists()) {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                file.delete();
                return;
            }
            if (databaseProvider != null) {
                long jLoadUid = loadUid(fileArrListFiles);
                if (jLoadUid != -1) {
                    try {
                        com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.delete(databaseProvider, jLoadUid);
                    } catch (com.google.android.exoplayer2.database.DatabaseIOException unused) {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder(52);
                        sb.append("Failed to delete file metadata: ");
                        sb.append(jLoadUid);
                        com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                    }
                    try {
                        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.delete(databaseProvider, jLoadUid);
                    } catch (com.google.android.exoplayer2.database.DatabaseIOException unused2) {
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder(52);
                        sb2.append("Failed to delete file metadata: ");
                        sb2.append(jLoadUid);
                        com.google.android.exoplayer2.util.Log.w(TAG, sb2.toString());
                    }
                }
            }
            com.google.android.exoplayer2.util.Util.recursiveDelete(file);
        }
    }

    private com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan getSpan(java.lang.String str, long j, long j2) {
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan span;
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = this.contentIndex.get(str);
        if (cachedContent == null) {
            return com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.createHole(str, j, j2);
        }
        while (true) {
            span = cachedContent.getSpan(j, j2);
            if (!span.isCached || span.file.length() == span.length) {
                break;
            }
            removeStaleSpans();
        }
        return span;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c A[Catch: IOException -> 0x00c0, TryCatch #2 {IOException -> 0x00c0, blocks: (B:20:0x0080, B:22:0x008c, B:23:0x00a8), top: B:36:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8 A[Catch: IOException -> 0x00c0, TRY_LEAVE, TryCatch #2 {IOException -> 0x00c0, blocks: (B:20:0x0080, B:22:0x008c, B:23:0x00a8), top: B:36:0x0080 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void initialize() {
        /*
            r7 = this;
            java.io.File r0 = r7.cacheDir
            boolean r0 = r0.exists()
            if (r0 != 0) goto L12
            java.io.File r0 = r7.cacheDir     // Catch: com.google.android.exoplayer2.upstream.cache.Cache.CacheException -> Le
            createCacheDirectories(r0)     // Catch: com.google.android.exoplayer2.upstream.cache.Cache.CacheException -> Le
            goto L12
        Le:
            r0 = move-exception
            r7.initializationException = r0
            return
        L12:
            java.io.File r0 = r7.cacheDir
            java.io.File[] r0 = r0.listFiles()
            java.lang.String r1 = "SimpleCache"
            if (r0 != 0) goto L44
            java.io.File r0 = r7.cacheDir
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r2 = r0.length()
            int r2 = r2 + 38
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r2)
            java.lang.String r2 = "Failed to list cache directory files: "
            r3.append(r2)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            com.google.android.exoplayer2.util.Log.e(r1, r0)
            com.google.android.exoplayer2.upstream.cache.Cache$CacheException r1 = new com.google.android.exoplayer2.upstream.cache.Cache$CacheException
            r1.<init>(r0)
        L41:
            r7.initializationException = r1
            return
        L44:
            long r2 = loadUid(r0)
            r7.uid = r2
            r4 = -1
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 != 0) goto L80
            java.io.File r2 = r7.cacheDir     // Catch: java.io.IOException -> L59
            long r2 = createUid(r2)     // Catch: java.io.IOException -> L59
            r7.uid = r2     // Catch: java.io.IOException -> L59
            goto L80
        L59:
            r0 = move-exception
            java.io.File r2 = r7.cacheDir
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r3 = r2.length()
            int r3 = r3 + 28
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            java.lang.String r3 = "Failed to create cache UID: "
            r4.append(r3)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            com.google.android.exoplayer2.util.Log.e(r1, r2, r0)
            com.google.android.exoplayer2.upstream.cache.Cache$CacheException r1 = new com.google.android.exoplayer2.upstream.cache.Cache$CacheException
            r1.<init>(r2, r0)
            goto L41
        L80:
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex r2 = r7.contentIndex     // Catch: java.io.IOException -> Lc0
            long r3 = r7.uid     // Catch: java.io.IOException -> Lc0
            r2.initialize(r3)     // Catch: java.io.IOException -> Lc0
            com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex r2 = r7.fileIndex     // Catch: java.io.IOException -> Lc0
            r3 = 1
            if (r2 == 0) goto La8
            com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex r2 = r7.fileIndex     // Catch: java.io.IOException -> Lc0
            long r4 = r7.uid     // Catch: java.io.IOException -> Lc0
            r2.initialize(r4)     // Catch: java.io.IOException -> Lc0
            com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex r2 = r7.fileIndex     // Catch: java.io.IOException -> Lc0
            java.util.Map r2 = r2.getAll()     // Catch: java.io.IOException -> Lc0
            java.io.File r4 = r7.cacheDir     // Catch: java.io.IOException -> Lc0
            r7.loadDirectory(r4, r3, r0, r2)     // Catch: java.io.IOException -> Lc0
            com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex r0 = r7.fileIndex     // Catch: java.io.IOException -> Lc0
            java.util.Set r2 = r2.keySet()     // Catch: java.io.IOException -> Lc0
            r0.removeAll(r2)     // Catch: java.io.IOException -> Lc0
            goto Lae
        La8:
            java.io.File r2 = r7.cacheDir     // Catch: java.io.IOException -> Lc0
            r4 = 0
            r7.loadDirectory(r2, r3, r0, r4)     // Catch: java.io.IOException -> Lc0
        Lae:
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex r0 = r7.contentIndex
            r0.removeEmpty()
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex r0 = r7.contentIndex     // Catch: java.io.IOException -> Lb9
            r0.store()     // Catch: java.io.IOException -> Lb9
            goto Lbf
        Lb9:
            r0 = move-exception
            java.lang.String r2 = "Storing index file failed"
            com.google.android.exoplayer2.util.Log.e(r1, r2, r0)
        Lbf:
            return
        Lc0:
            r0 = move-exception
            java.io.File r2 = r7.cacheDir
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r3 = r2.length()
            int r3 = r3 + 36
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            java.lang.String r3 = "Failed to initialize cache indices: "
            r4.append(r3)
            r4.append(r2)
            java.lang.String r2 = r4.toString()
            com.google.android.exoplayer2.util.Log.e(r1, r2, r0)
            com.google.android.exoplayer2.upstream.cache.Cache$CacheException r1 = new com.google.android.exoplayer2.upstream.cache.Cache$CacheException
            r1.<init>(r2, r0)
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.SimpleCache.initialize():void");
    }

    public static synchronized boolean isCacheFolderLocked(java.io.File file) {
        return lockedCacheDirs.contains(file.getAbsoluteFile());
    }

    private void loadDirectory(java.io.File file, boolean z, java.io.File[] fileArr, java.util.Map<java.lang.String, com.google.android.exoplayer2.upstream.cache.CacheFileMetadata> map) {
        if (fileArr == null || fileArr.length == 0) {
            if (z) {
                return;
            }
            file.delete();
            return;
        }
        for (java.io.File file2 : fileArr) {
            java.lang.String name = file2.getName();
            if (z && name.indexOf(46) == -1) {
                loadDirectory(file2, false, file2.listFiles(), map);
            } else if (!z || (!com.google.android.exoplayer2.upstream.cache.CachedContentIndex.isIndexFile(name) && !name.endsWith(UID_FILE_SUFFIX))) {
                long j = -1;
                long j2 = com.google.android.exoplayer2.C.TIME_UNSET;
                com.google.android.exoplayer2.upstream.cache.CacheFileMetadata cacheFileMetadataRemove = map != null ? map.remove(name) : null;
                if (cacheFileMetadataRemove != null) {
                    j = cacheFileMetadataRemove.length;
                    j2 = cacheFileMetadataRemove.lastTouchTimestamp;
                }
                com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpanCreateCacheEntry = com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.createCacheEntry(file2, j, j2, this.contentIndex);
                if (simpleCacheSpanCreateCacheEntry != null) {
                    addSpan(simpleCacheSpanCreateCacheEntry);
                } else {
                    file2.delete();
                }
            }
        }
    }

    public static long loadUid(java.io.File[] fileArr) {
        int length = fileArr.length;
        for (int i = 0; i < length; i++) {
            java.io.File file = fileArr[i];
            java.lang.String name = file.getName();
            if (name.endsWith(UID_FILE_SUFFIX)) {
                try {
                    return parseUid(name);
                } catch (java.lang.NumberFormatException unused) {
                    java.lang.String strValueOf = java.lang.String.valueOf(file);
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 20);
                    sb.append("Malformed UID file: ");
                    sb.append(strValueOf);
                    com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
                    file.delete();
                }
            }
        }
        return -1L;
    }

    public static synchronized boolean lockFolder(java.io.File file) {
        return lockedCacheDirs.add(file.getAbsoluteFile());
    }

    private void notifySpanAdded(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan) {
        java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanAdded(this, simpleCacheSpan);
            }
        }
        this.evictor.onSpanAdded(this, simpleCacheSpan);
    }

    private void notifySpanRemoved(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener> arrayList = this.listeners.get(cacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanRemoved(this, cacheSpan);
            }
        }
        this.evictor.onSpanRemoved(this, cacheSpan);
    }

    private void notifySpanTouched(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan, com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener> arrayList = this.listeners.get(simpleCacheSpan.key);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).onSpanTouched(this, simpleCacheSpan, cacheSpan);
            }
        }
        this.evictor.onSpanTouched(this, simpleCacheSpan, cacheSpan);
    }

    public static long parseUid(java.lang.String str) {
        return java.lang.Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    private void removeSpanInternal(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = this.contentIndex.get(cacheSpan.key);
        if (cachedContent == null || !cachedContent.removeSpan(cacheSpan)) {
            return;
        }
        this.totalSpace -= cacheSpan.length;
        if (this.fileIndex != null) {
            java.lang.String name = cacheSpan.file.getName();
            try {
                this.fileIndex.remove(name);
            } catch (java.io.IOException unused) {
                java.lang.String strValueOf = java.lang.String.valueOf(name);
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Failed to remove file index entry for: ".concat(strValueOf) : new java.lang.String("Failed to remove file index entry for: "));
            }
        }
        this.contentIndex.maybeRemove(cachedContent.key);
        notifySpanRemoved(cacheSpan);
    }

    private void removeStaleSpans() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<com.google.android.exoplayer2.upstream.cache.CachedContent> it = this.contentIndex.getAll().iterator();
        while (it.hasNext()) {
            java.util.Iterator<com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan> it2 = it.next().getSpans().iterator();
            while (it2.hasNext()) {
                com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan next = it2.next();
                if (next.file.length() != next.length) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            removeSpanInternal((com.google.android.exoplayer2.upstream.cache.CacheSpan) arrayList.get(i));
        }
    }

    private com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan touchSpan(java.lang.String str, com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan) throws android.database.SQLException {
        if (!this.touchCacheSpans) {
            return simpleCacheSpan;
        }
        java.lang.String name = ((java.io.File) com.google.android.exoplayer2.util.Assertions.checkNotNull(simpleCacheSpan.file)).getName();
        long j = simpleCacheSpan.length;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        boolean z = false;
        com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex cacheFileMetadataIndex = this.fileIndex;
        if (cacheFileMetadataIndex != null) {
            try {
                cacheFileMetadataIndex.set(name, j, jCurrentTimeMillis);
            } catch (java.io.IOException unused) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Failed to update index with new touch timestamp.");
            }
        } else {
            z = true;
        }
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan lastTouchTimestamp = this.contentIndex.get(str).setLastTouchTimestamp(simpleCacheSpan, jCurrentTimeMillis, z);
        notifySpanTouched(simpleCacheSpan, lastTouchTimestamp);
        return lastTouchTimestamp;
    }

    public static synchronized void unlockFolder(java.io.File file) {
        lockedCacheDirs.remove(file.getAbsoluteFile());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized java.util.NavigableSet<com.google.android.exoplayer2.upstream.cache.CacheSpan> addListener(java.lang.String str, com.google.android.exoplayer2.upstream.cache.Cache.Listener listener) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(listener);
        java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener> arrayList = this.listeners.get(str);
        if (arrayList == null) {
            arrayList = new java.util.ArrayList<>();
            this.listeners.put(str, arrayList);
        }
        arrayList.add(listener);
        return getCachedSpans(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void applyContentMetadataMutations(java.lang.String str, com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        checkInitialization();
        this.contentIndex.applyContentMetadataMutations(str, contentMetadataMutations);
        try {
            this.contentIndex.store();
        } catch (java.io.IOException e2) {
            throw new com.google.android.exoplayer2.upstream.cache.Cache.CacheException(e2);
        }
    }

    public synchronized void checkInitialization() {
        if (this.initializationException != null) {
            throw this.initializationException;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void commitFile(java.io.File file, long j) {
        boolean z = true;
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        if (file.exists()) {
            if (j == 0) {
                file.delete();
                return;
            }
            com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan simpleCacheSpan = (com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.createCacheEntry(file, j, this.contentIndex));
            com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = (com.google.android.exoplayer2.upstream.cache.CachedContent) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.contentIndex.get(simpleCacheSpan.key));
            com.google.android.exoplayer2.util.Assertions.checkState(cachedContent.isFullyLocked(simpleCacheSpan.position, simpleCacheSpan.length));
            long jA = e.c.a.a.r2.m.d.a(cachedContent.getMetadata());
            if (jA != -1) {
                if (simpleCacheSpan.position + simpleCacheSpan.length > jA) {
                    z = false;
                }
                com.google.android.exoplayer2.util.Assertions.checkState(z);
            }
            if (this.fileIndex == null) {
                addSpan(simpleCacheSpan);
                this.contentIndex.store();
                notifyAll();
                return;
            }
            try {
                this.fileIndex.set(file.getName(), simpleCacheSpan.length, simpleCacheSpan.lastTouchTimestamp);
                addSpan(simpleCacheSpan);
                try {
                    this.contentIndex.store();
                    notifyAll();
                    return;
                } catch (java.io.IOException e2) {
                    throw new com.google.android.exoplayer2.upstream.cache.Cache.CacheException(e2);
                }
            } catch (java.io.IOException e3) {
                throw new com.google.android.exoplayer2.upstream.cache.Cache.CacheException(e3);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCacheSpace() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        return this.totalSpace;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedBytes(java.lang.String str, long j, long j2) {
        long j3;
        long j4 = j2 == -1 ? Long.MAX_VALUE : j2 + j;
        long j5 = j4 >= 0 ? j4 : Long.MAX_VALUE;
        j3 = 0;
        while (j < j5) {
            long cachedLength = getCachedLength(str, j, j5 - j);
            if (cachedLength > 0) {
                j3 += cachedLength;
            } else {
                cachedLength = -cachedLength;
            }
            j += cachedLength;
        }
        return j3;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getCachedLength(java.lang.String str, long j, long j2) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent;
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        if (j2 == -1) {
            j2 = Long.MAX_VALUE;
        }
        cachedContent = this.contentIndex.get(str);
        return cachedContent != null ? cachedContent.getCachedBytesLength(j, j2) : -j2;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized java.util.NavigableSet<com.google.android.exoplayer2.upstream.cache.CacheSpan> getCachedSpans(java.lang.String str) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent;
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        cachedContent = this.contentIndex.get(str);
        return (cachedContent == null || cachedContent.isEmpty()) ? new java.util.TreeSet() : new java.util.TreeSet((java.util.Collection) cachedContent.getSpans());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized com.google.android.exoplayer2.upstream.cache.ContentMetadata getContentMetadata(java.lang.String str) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        return this.contentIndex.getContentMetadata(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized java.util.Set<java.lang.String> getKeys() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        return new java.util.HashSet(this.contentIndex.getKeys());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized long getUid() {
        return this.uid;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e  */
    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean isCached(java.lang.String r4, long r5, long r7) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = r3.released     // Catch: java.lang.Throwable -> L21
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L9
            r0 = 1
            goto La
        L9:
            r0 = 0
        La:
            com.google.android.exoplayer2.util.Assertions.checkState(r0)     // Catch: java.lang.Throwable -> L21
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex r0 = r3.contentIndex     // Catch: java.lang.Throwable -> L21
            com.google.android.exoplayer2.upstream.cache.CachedContent r4 = r0.get(r4)     // Catch: java.lang.Throwable -> L21
            if (r4 == 0) goto L1e
            long r4 = r4.getCachedBytesLength(r5, r7)     // Catch: java.lang.Throwable -> L21
            int r6 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r6 < 0) goto L1e
            goto L1f
        L1e:
            r1 = 0
        L1f:
            monitor-exit(r3)
            return r1
        L21:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.SimpleCache.isCached(java.lang.String, long, long):boolean");
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void release() {
        if (this.released) {
            return;
        }
        this.listeners.clear();
        removeStaleSpans();
        try {
            try {
                this.contentIndex.store();
                unlockFolder(this.cacheDir);
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Storing index file failed", e2);
                unlockFolder(this.cacheDir);
            }
            this.released = true;
        } catch (java.lang.Throwable th) {
            unlockFolder(this.cacheDir);
            this.released = true;
            throw th;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void releaseHoleSpan(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = (com.google.android.exoplayer2.upstream.cache.CachedContent) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.contentIndex.get(cacheSpan.key));
        cachedContent.unlockRange(cacheSpan.position);
        this.contentIndex.maybeRemove(cachedContent.key);
        notifyAll();
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeListener(java.lang.String str, com.google.android.exoplayer2.upstream.cache.Cache.Listener listener) {
        if (this.released) {
            return;
        }
        java.util.ArrayList<com.google.android.exoplayer2.upstream.cache.Cache.Listener> arrayList = this.listeners.get(str);
        if (arrayList != null) {
            arrayList.remove(listener);
            if (arrayList.isEmpty()) {
                this.listeners.remove(str);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeResource(java.lang.String str) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        java.util.Iterator<com.google.android.exoplayer2.upstream.cache.CacheSpan> it = getCachedSpans(str).iterator();
        while (it.hasNext()) {
            removeSpanInternal(it.next());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized void removeSpan(com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpan) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        removeSpanInternal(cacheSpan);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized java.io.File startFile(java.lang.String str, long j, long j2) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent;
        java.io.File file;
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        checkInitialization();
        cachedContent = this.contentIndex.get(str);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(cachedContent);
        com.google.android.exoplayer2.util.Assertions.checkState(cachedContent.isFullyLocked(j, j2));
        if (!this.cacheDir.exists()) {
            createCacheDirectories(this.cacheDir);
            removeStaleSpans();
        }
        this.evictor.onStartFile(this, str, j, j2);
        file = new java.io.File(this.cacheDir, java.lang.Integer.toString(this.random.nextInt(10)));
        if (!file.exists()) {
            createCacheDirectories(file);
        }
        return com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan.getCacheFile(file, cachedContent.id, j, java.lang.System.currentTimeMillis());
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized com.google.android.exoplayer2.upstream.cache.CacheSpan startReadWrite(java.lang.String str, long j, long j2) {
        com.google.android.exoplayer2.upstream.cache.CacheSpan cacheSpanStartReadWriteNonBlocking;
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        checkInitialization();
        while (true) {
            cacheSpanStartReadWriteNonBlocking = startReadWriteNonBlocking(str, j, j2);
            if (cacheSpanStartReadWriteNonBlocking == null) {
                wait();
            }
        }
        return cacheSpanStartReadWriteNonBlocking;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    public synchronized com.google.android.exoplayer2.upstream.cache.CacheSpan startReadWriteNonBlocking(java.lang.String str, long j, long j2) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        checkInitialization();
        com.google.android.exoplayer2.upstream.cache.SimpleCacheSpan span = getSpan(str, j, j2);
        if (span.isCached) {
            return touchSpan(str, span);
        }
        if (this.contentIndex.getOrAdd(str).lockRange(j, span.length)) {
            return span;
        }
        return null;
    }
}
