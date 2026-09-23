package com.google.android.exoplayer2.upstream.cache;

/* loaded from: classes.dex */
public class CachedContentIndex {
    public static final java.lang.String FILE_NAME_ATOMIC = "cached_content_index.exi";
    public static final int INCREMENTAL_METADATA_READ_LENGTH = 10485760;
    public final android.util.SparseArray<java.lang.String> idToKey;
    public final java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> keyToContent;
    public final android.util.SparseBooleanArray newIds;
    public com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage previousStorage;
    public final android.util.SparseBooleanArray removedIds;
    public com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage storage;

    public static final class DatabaseStorage implements com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage {
        public static final java.lang.String COLUMN_ID = "id";
        public static final int COLUMN_INDEX_ID = 0;
        public static final int COLUMN_INDEX_KEY = 1;
        public static final int COLUMN_INDEX_METADATA = 2;
        public static final java.lang.String COLUMN_METADATA = "metadata";
        public static final java.lang.String TABLE_PREFIX = "ExoPlayerCacheIndex";
        public static final java.lang.String TABLE_SCHEMA = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)";
        public static final int TABLE_VERSION = 1;
        public static final java.lang.String WHERE_ID_EQUALS = "id = ?";
        public final com.google.android.exoplayer2.database.DatabaseProvider databaseProvider;
        public java.lang.String hexUid;
        public final android.util.SparseArray<com.google.android.exoplayer2.upstream.cache.CachedContent> pendingUpdates = new android.util.SparseArray<>();
        public java.lang.String tableName;
        public static final java.lang.String COLUMN_KEY = "key";
        public static final java.lang.String[] COLUMNS = {"id", COLUMN_KEY, "metadata"};

        public DatabaseStorage(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
            this.databaseProvider = databaseProvider;
        }

        private void addOrUpdateRow(android.database.sqlite.SQLiteDatabase sQLiteDatabase, com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent) throws java.io.IOException, android.database.SQLException {
            java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex.writeContentMetadata(cachedContent.getMetadata(), new java.io.DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("id", java.lang.Integer.valueOf(cachedContent.id));
            contentValues.put(COLUMN_KEY, cachedContent.key);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName), null, contentValues);
        }

        public static void delete(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, long j) throws com.google.android.exoplayer2.database.DatabaseIOException {
            delete(databaseProvider, java.lang.Long.toHexString(j));
        }

        public static void delete(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, java.lang.String str) throws com.google.android.exoplayer2.database.DatabaseIOException {
            try {
                java.lang.String tableName = getTableName(str);
                android.database.sqlite.SQLiteDatabase writableDatabase = databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    com.google.android.exoplayer2.database.VersionTable.removeVersion(writableDatabase, 1, str);
                    dropTable(writableDatabase, tableName);
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (android.database.SQLException e2) {
                throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
            }
        }

        private void deleteRow(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i) {
            sQLiteDatabase.delete((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName), "id = ?", new java.lang.String[]{java.lang.Integer.toString(i)});
        }

        public static void dropTable(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str) throws android.database.SQLException {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            sQLiteDatabase.execSQL(strValueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(strValueOf) : new java.lang.String("DROP TABLE IF EXISTS "));
        }

        private android.database.Cursor getCursor() {
            return this.databaseProvider.getReadableDatabase().query((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName), COLUMNS, null, null, null, null, null);
        }

        public static java.lang.String getTableName(java.lang.String str) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            return strValueOf.length() != 0 ? TABLE_PREFIX.concat(strValueOf) : new java.lang.String(TABLE_PREFIX);
        }

        private void initializeTable(android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException, com.google.android.exoplayer2.database.DatabaseIOException {
            com.google.android.exoplayer2.database.VersionTable.setVersion(sQLiteDatabase, 1, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.hexUid), 1);
            dropTable(sQLiteDatabase, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.tableName));
            java.lang.String str = this.tableName;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 88);
            sb.append("CREATE TABLE ");
            sb.append(str);
            sb.append(" ");
            sb.append(TABLE_SCHEMA);
            sQLiteDatabase.execSQL(sb.toString());
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void delete() throws com.google.android.exoplayer2.database.DatabaseIOException {
            delete(this.databaseProvider, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.hexUid));
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public boolean exists() {
            return com.google.android.exoplayer2.database.VersionTable.getVersion(this.databaseProvider.getReadableDatabase(), 1, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.hexUid)) != -1;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void initialize(long j) {
            java.lang.String hexString = java.lang.Long.toHexString(j);
            this.hexUid = hexString;
            this.tableName = getTableName(hexString);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void load(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map, android.util.SparseArray<java.lang.String> sparseArray) throws com.google.android.exoplayer2.database.DatabaseIOException {
            com.google.android.exoplayer2.util.Assertions.checkState(this.pendingUpdates.size() == 0);
            try {
                if (com.google.android.exoplayer2.database.VersionTable.getVersion(this.databaseProvider.getReadableDatabase(), 1, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.hexUid)) != 1) {
                    android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        initializeTable(writableDatabase);
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (java.lang.Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                android.database.Cursor cursor = getCursor();
                while (cursor.moveToNext()) {
                    try {
                        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = new com.google.android.exoplayer2.upstream.cache.CachedContent(cursor.getInt(0), (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(1)), com.google.android.exoplayer2.upstream.cache.CachedContentIndex.readContentMetadata(new java.io.DataInputStream(new java.io.ByteArrayInputStream(cursor.getBlob(2)))));
                        map.put(cachedContent.key, cachedContent);
                        sparseArray.put(cachedContent.id, cachedContent.key);
                    } catch (java.lang.Throwable th2) {
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (java.lang.Throwable unused) {
                            }
                        }
                        throw th2;
                    }
                }
                cursor.close();
            } catch (android.database.sqlite.SQLiteException e2) {
                map.clear();
                sparseArray.clear();
                throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void onRemove(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent, boolean z) {
            if (z) {
                this.pendingUpdates.delete(cachedContent.id);
            } else {
                this.pendingUpdates.put(cachedContent.id, null);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void onUpdate(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent) {
            this.pendingUpdates.put(cachedContent.id, cachedContent);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void storeFully(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map) throws com.google.android.exoplayer2.database.DatabaseIOException {
            try {
                android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    initializeTable(writableDatabase);
                    java.util.Iterator<com.google.android.exoplayer2.upstream.cache.CachedContent> it = map.values().iterator();
                    while (it.hasNext()) {
                        addOrUpdateRow(writableDatabase, it.next());
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.pendingUpdates.clear();
                } finally {
                    writableDatabase.endTransaction();
                }
            } catch (android.database.SQLException e2) {
                throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void storeIncremental(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map) throws com.google.android.exoplayer2.database.DatabaseIOException {
            if (this.pendingUpdates.size() == 0) {
                return;
            }
            try {
                android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.pendingUpdates.size(); i++) {
                    try {
                        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContentValueAt = this.pendingUpdates.valueAt(i);
                        if (cachedContentValueAt == null) {
                            deleteRow(writableDatabase, this.pendingUpdates.keyAt(i));
                        } else {
                            addOrUpdateRow(writableDatabase, cachedContentValueAt);
                        }
                    } finally {
                        writableDatabase.endTransaction();
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.pendingUpdates.clear();
            } catch (android.database.SQLException e2) {
                throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
            }
        }
    }

    public static class LegacyStorage implements com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage {
        public static final int FLAG_ENCRYPTED_INDEX = 1;
        public static final int VERSION = 2;
        public static final int VERSION_METADATA_INTRODUCED = 2;
        public final com.google.android.exoplayer2.util.AtomicFile atomicFile;
        public com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream bufferedOutputStream;
        public boolean changed;
        public final javax.crypto.Cipher cipher;
        public final boolean encrypt;
        public final java.security.SecureRandom random;
        public final javax.crypto.spec.SecretKeySpec secretKeySpec;

        public LegacyStorage(java.io.File file, byte[] bArr, boolean z) {
            javax.crypto.Cipher cipher;
            javax.crypto.spec.SecretKeySpec secretKeySpec;
            com.google.android.exoplayer2.util.Assertions.checkState((bArr == null && z) ? false : true);
            if (bArr != null) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(bArr.length == 16);
                try {
                    cipher = com.google.android.exoplayer2.upstream.cache.CachedContentIndex.getCipher();
                    secretKeySpec = new javax.crypto.spec.SecretKeySpec(bArr, "AES");
                } catch (java.security.NoSuchAlgorithmException | javax.crypto.NoSuchPaddingException e2) {
                    throw new java.lang.IllegalStateException(e2);
                }
            } else {
                com.google.android.exoplayer2.util.Assertions.checkArgument(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.encrypt = z;
            this.cipher = cipher;
            this.secretKeySpec = secretKeySpec;
            this.random = z ? new java.security.SecureRandom() : null;
            this.atomicFile = new com.google.android.exoplayer2.util.AtomicFile(file);
        }

        private int hashCachedContent(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent, int i) {
            int iHashCode = cachedContent.key.hashCode() + (cachedContent.id * 31);
            if (i >= 2) {
                return (iHashCode * 31) + cachedContent.getMetadata().hashCode();
            }
            long jA = e.c.a.a.r2.m.d.a(cachedContent.getMetadata());
            return (iHashCode * 31) + ((int) (jA ^ (jA >>> 32)));
        }

        private com.google.android.exoplayer2.upstream.cache.CachedContent readCachedContent(int i, java.io.DataInputStream dataInputStream) throws java.io.IOException {
            com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata contentMetadata;
            int i2 = dataInputStream.readInt();
            java.lang.String utf = dataInputStream.readUTF();
            if (i < 2) {
                long j = dataInputStream.readLong();
                com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations = new com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations();
                com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations.setContentLength(contentMetadataMutations, j);
                contentMetadata = com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata.EMPTY.copyWithMutationsApplied(contentMetadataMutations);
            } else {
                contentMetadata = com.google.android.exoplayer2.upstream.cache.CachedContentIndex.readContentMetadata(dataInputStream);
            }
            return new com.google.android.exoplayer2.upstream.cache.CachedContent(i2, utf, contentMetadata);
        }

        private boolean readFile(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map, android.util.SparseArray<java.lang.String> sparseArray) throws java.lang.Throwable {
            java.io.BufferedInputStream bufferedInputStream;
            java.io.DataInputStream dataInputStream;
            if (!this.atomicFile.exists()) {
                return true;
            }
            java.io.DataInputStream dataInputStream2 = null;
            try {
                bufferedInputStream = new java.io.BufferedInputStream(this.atomicFile.openRead());
                dataInputStream = new java.io.DataInputStream(bufferedInputStream);
            } catch (java.io.IOException unused) {
            } catch (java.lang.Throwable th) {
                th = th;
            }
            try {
                int i = dataInputStream.readInt();
                if (i >= 0 && i <= 2) {
                    if ((dataInputStream.readInt() & 1) != 0) {
                        if (this.cipher == null) {
                            com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream);
                            return false;
                        }
                        byte[] bArr = new byte[16];
                        dataInputStream.readFully(bArr);
                        try {
                            this.cipher.init(2, (java.security.Key) com.google.android.exoplayer2.util.Util.castNonNull(this.secretKeySpec), new javax.crypto.spec.IvParameterSpec(bArr));
                            dataInputStream = new java.io.DataInputStream(new javax.crypto.CipherInputStream(bufferedInputStream, this.cipher));
                        } catch (java.security.InvalidAlgorithmParameterException e2) {
                            e = e2;
                            throw new java.lang.IllegalStateException(e);
                        } catch (java.security.InvalidKeyException e3) {
                            e = e3;
                            throw new java.lang.IllegalStateException(e);
                        }
                    } else if (this.encrypt) {
                        this.changed = true;
                    }
                    int i2 = dataInputStream.readInt();
                    int iHashCachedContent = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = readCachedContent(i, dataInputStream);
                        map.put(cachedContent.key, cachedContent);
                        sparseArray.put(cachedContent.id, cachedContent.key);
                        iHashCachedContent += hashCachedContent(cachedContent, i);
                    }
                    int i4 = dataInputStream.readInt();
                    boolean z = dataInputStream.read() == -1;
                    if (i4 == iHashCachedContent && z) {
                        com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream);
                        return true;
                    }
                    com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream);
                    return false;
                }
                com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream);
                return false;
            } catch (java.io.IOException unused2) {
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream2);
                }
                return false;
            } catch (java.lang.Throwable th2) {
                th = th2;
                dataInputStream2 = dataInputStream;
                if (dataInputStream2 != null) {
                    com.google.android.exoplayer2.util.Util.closeQuietly(dataInputStream2);
                }
                throw th;
            }
        }

        private void writeCachedContent(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent, java.io.DataOutputStream dataOutputStream) throws java.io.IOException {
            dataOutputStream.writeInt(cachedContent.id);
            dataOutputStream.writeUTF(cachedContent.key);
            com.google.android.exoplayer2.upstream.cache.CachedContentIndex.writeContentMetadata(cachedContent.getMetadata(), dataOutputStream);
        }

        private void writeFile(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map) throws java.lang.Throwable {
            java.io.DataOutputStream dataOutputStream = null;
            try {
                java.io.OutputStream outputStreamStartWrite = this.atomicFile.startWrite();
                if (this.bufferedOutputStream == null) {
                    this.bufferedOutputStream = new com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream(outputStreamStartWrite);
                } else {
                    this.bufferedOutputStream.reset(outputStreamStartWrite);
                }
                com.google.android.exoplayer2.upstream.cache.ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
                java.io.DataOutputStream dataOutputStream2 = new java.io.DataOutputStream(reusableBufferedOutputStream);
                try {
                    dataOutputStream2.writeInt(2);
                    int iHashCachedContent = 0;
                    dataOutputStream2.writeInt(this.encrypt ? 1 : 0);
                    if (this.encrypt) {
                        byte[] bArr = new byte[16];
                        ((java.security.SecureRandom) com.google.android.exoplayer2.util.Util.castNonNull(this.random)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((javax.crypto.Cipher) com.google.android.exoplayer2.util.Util.castNonNull(this.cipher)).init(1, (java.security.Key) com.google.android.exoplayer2.util.Util.castNonNull(this.secretKeySpec), new javax.crypto.spec.IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream2 = new java.io.DataOutputStream(new javax.crypto.CipherOutputStream(reusableBufferedOutputStream, this.cipher));
                        } catch (java.security.InvalidAlgorithmParameterException e2) {
                            e = e2;
                            throw new java.lang.IllegalStateException(e);
                        } catch (java.security.InvalidKeyException e3) {
                            e = e3;
                            throw new java.lang.IllegalStateException(e);
                        }
                    }
                    dataOutputStream2.writeInt(map.size());
                    for (com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent : map.values()) {
                        writeCachedContent(cachedContent, dataOutputStream2);
                        iHashCachedContent += hashCachedContent(cachedContent, 2);
                    }
                    dataOutputStream2.writeInt(iHashCachedContent);
                    this.atomicFile.endWrite(dataOutputStream2);
                    com.google.android.exoplayer2.util.Util.closeQuietly(null);
                } catch (java.lang.Throwable th) {
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    com.google.android.exoplayer2.util.Util.closeQuietly(dataOutputStream);
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void delete() {
            this.atomicFile.delete();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public boolean exists() {
            return this.atomicFile.exists();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void initialize(long j) {
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void load(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map, android.util.SparseArray<java.lang.String> sparseArray) {
            com.google.android.exoplayer2.util.Assertions.checkState(!this.changed);
            if (readFile(map, sparseArray)) {
                return;
            }
            map.clear();
            sparseArray.clear();
            this.atomicFile.delete();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void onRemove(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent, boolean z) {
            this.changed = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void onUpdate(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent) {
            this.changed = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void storeFully(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map) throws java.lang.Throwable {
            writeFile(map);
            this.changed = false;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage
        public void storeIncremental(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map) throws java.lang.Throwable {
            if (this.changed) {
                storeFully(map);
            }
        }
    }

    public interface Storage {
        void delete();

        boolean exists();

        void initialize(long j);

        void load(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map, android.util.SparseArray<java.lang.String> sparseArray);

        void onRemove(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent, boolean z);

        void onUpdate(com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent);

        void storeFully(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map);

        void storeIncremental(java.util.HashMap<java.lang.String, com.google.android.exoplayer2.upstream.cache.CachedContent> map);
    }

    public CachedContentIndex(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
        this(databaseProvider, null, null, false, false);
    }

    public CachedContentIndex(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, java.io.File file, byte[] bArr, boolean z, boolean z2) {
        com.google.android.exoplayer2.util.Assertions.checkState((databaseProvider == null && file == null) ? false : true);
        this.keyToContent = new java.util.HashMap<>();
        this.idToKey = new android.util.SparseArray<>();
        this.removedIds = new android.util.SparseBooleanArray();
        this.newIds = new android.util.SparseBooleanArray();
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.DatabaseStorage databaseStorage = databaseProvider != null ? new com.google.android.exoplayer2.upstream.cache.CachedContentIndex.DatabaseStorage(databaseProvider) : null;
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.LegacyStorage legacyStorage = file != null ? new com.google.android.exoplayer2.upstream.cache.CachedContentIndex.LegacyStorage(new java.io.File(file, FILE_NAME_ATOMIC), bArr, z) : null;
        if (databaseStorage == null || (legacyStorage != null && z2)) {
            this.storage = (com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage) com.google.android.exoplayer2.util.Util.castNonNull(legacyStorage);
            this.previousStorage = databaseStorage;
        } else {
            this.storage = databaseStorage;
            this.previousStorage = legacyStorage;
        }
    }

    private com.google.android.exoplayer2.upstream.cache.CachedContent addNew(java.lang.String str) {
        int newId = getNewId(this.idToKey);
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = new com.google.android.exoplayer2.upstream.cache.CachedContent(newId, str);
        this.keyToContent.put(str, cachedContent);
        this.idToKey.put(newId, str);
        this.newIds.put(newId, true);
        this.storage.onUpdate(cachedContent);
        return cachedContent;
    }

    public static void delete(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, long j) throws com.google.android.exoplayer2.database.DatabaseIOException {
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.DatabaseStorage.delete(databaseProvider, j);
    }

    @android.annotation.SuppressLint({"GetInstance"})
    public static javax.crypto.Cipher getCipher() {
        if (com.google.android.exoplayer2.util.Util.SDK_INT == 18) {
            try {
                return javax.crypto.Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (java.lang.Throwable unused) {
            }
        }
        return javax.crypto.Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int getNewId(android.util.SparseArray<java.lang.String> sparseArray) {
        int size = sparseArray.size();
        int i = 0;
        int iKeyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (iKeyAt >= 0) {
            return iKeyAt;
        }
        while (i < size && i == sparseArray.keyAt(i)) {
            i++;
        }
        return i;
    }

    public static boolean isIndexFile(java.lang.String str) {
        return str.startsWith(FILE_NAME_ATOMIC);
    }

    public static com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata readContentMetadata(java.io.DataInputStream dataInputStream) throws java.io.IOException {
        int i = dataInputStream.readInt();
        java.util.HashMap map = new java.util.HashMap();
        for (int i2 = 0; i2 < i; i2++) {
            java.lang.String utf = dataInputStream.readUTF();
            int i3 = dataInputStream.readInt();
            if (i3 < 0) {
                throw new java.io.IOException(e.a.c.a.a.F(31, "Invalid value size: ", i3));
            }
            int iMin = java.lang.Math.min(i3, INCREMENTAL_METADATA_READ_LENGTH);
            byte[] bArrCopyOf = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
            int i4 = 0;
            while (i4 != i3) {
                int i5 = i4 + iMin;
                bArrCopyOf = java.util.Arrays.copyOf(bArrCopyOf, i5);
                dataInputStream.readFully(bArrCopyOf, i4, iMin);
                iMin = java.lang.Math.min(i3 - i5, INCREMENTAL_METADATA_READ_LENGTH);
                i4 = i5;
            }
            map.put(utf, bArrCopyOf);
        }
        return new com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata(map);
    }

    public static void writeContentMetadata(com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata defaultContentMetadata, java.io.DataOutputStream dataOutputStream) throws java.io.IOException {
        java.util.Set<java.util.Map.Entry<java.lang.String, byte[]>> setEntrySet = defaultContentMetadata.entrySet();
        dataOutputStream.writeInt(setEntrySet.size());
        for (java.util.Map.Entry<java.lang.String, byte[]> entry : setEntrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public void applyContentMetadataMutations(java.lang.String str, com.google.android.exoplayer2.upstream.cache.ContentMetadataMutations contentMetadataMutations) {
        com.google.android.exoplayer2.upstream.cache.CachedContent orAdd = getOrAdd(str);
        if (orAdd.applyMetadataMutations(contentMetadataMutations)) {
            this.storage.onUpdate(orAdd);
        }
    }

    public int assignIdForKey(java.lang.String str) {
        return getOrAdd(str).id;
    }

    public com.google.android.exoplayer2.upstream.cache.CachedContent get(java.lang.String str) {
        return this.keyToContent.get(str);
    }

    public java.util.Collection<com.google.android.exoplayer2.upstream.cache.CachedContent> getAll() {
        return java.util.Collections.unmodifiableCollection(this.keyToContent.values());
    }

    public com.google.android.exoplayer2.upstream.cache.ContentMetadata getContentMetadata(java.lang.String str) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = get(str);
        return cachedContent != null ? cachedContent.getMetadata() : com.google.android.exoplayer2.upstream.cache.DefaultContentMetadata.EMPTY;
    }

    public java.lang.String getKeyForId(int i) {
        return this.idToKey.get(i);
    }

    public java.util.Set<java.lang.String> getKeys() {
        return this.keyToContent.keySet();
    }

    public com.google.android.exoplayer2.upstream.cache.CachedContent getOrAdd(java.lang.String str) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = this.keyToContent.get(str);
        return cachedContent == null ? addNew(str) : cachedContent;
    }

    public void initialize(long j) {
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage storage;
        this.storage.initialize(j);
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage storage2 = this.previousStorage;
        if (storage2 != null) {
            storage2.initialize(j);
        }
        if (this.storage.exists() || (storage = this.previousStorage) == null || !storage.exists()) {
            this.storage.load(this.keyToContent, this.idToKey);
        } else {
            this.previousStorage.load(this.keyToContent, this.idToKey);
            this.storage.storeFully(this.keyToContent);
        }
        com.google.android.exoplayer2.upstream.cache.CachedContentIndex.Storage storage3 = this.previousStorage;
        if (storage3 != null) {
            storage3.delete();
            this.previousStorage = null;
        }
    }

    public void maybeRemove(java.lang.String str) {
        com.google.android.exoplayer2.upstream.cache.CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent != null && cachedContent.isEmpty() && cachedContent.isFullyUnlocked()) {
            this.keyToContent.remove(str);
            int i = cachedContent.id;
            boolean z = this.newIds.get(i);
            this.storage.onRemove(cachedContent, z);
            android.util.SparseArray<java.lang.String> sparseArray = this.idToKey;
            if (z) {
                sparseArray.remove(i);
                this.newIds.delete(i);
            } else {
                sparseArray.put(i, null);
                this.removedIds.put(i, true);
            }
        }
    }

    public void removeEmpty() {
        java.util.Iterator it = e.c.b.b.u.j(this.keyToContent.keySet()).iterator();
        while (it.hasNext()) {
            maybeRemove((java.lang.String) it.next());
        }
    }

    public void store() {
        this.storage.storeIncremental(this.keyToContent);
        int size = this.removedIds.size();
        for (int i = 0; i < size; i++) {
            this.idToKey.remove(this.removedIds.keyAt(i));
        }
        this.removedIds.clear();
        this.newIds.clear();
    }
}
