package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class DefaultDownloadIndex implements com.google.android.exoplayer2.offline.WritableDownloadIndex {
    public static final java.lang.String COLUMN_DATA = "data";
    public static final java.lang.String COLUMN_ID = "id";
    public static final int COLUMN_INDEX_BYTES_DOWNLOADED = 13;
    public static final int COLUMN_INDEX_CONTENT_LENGTH = 9;
    public static final int COLUMN_INDEX_CUSTOM_CACHE_KEY = 4;
    public static final int COLUMN_INDEX_DATA = 5;
    public static final int COLUMN_INDEX_FAILURE_REASON = 11;
    public static final int COLUMN_INDEX_ID = 0;
    public static final int COLUMN_INDEX_KEY_SET_ID = 14;
    public static final int COLUMN_INDEX_MIME_TYPE = 1;
    public static final int COLUMN_INDEX_PERCENT_DOWNLOADED = 12;
    public static final int COLUMN_INDEX_START_TIME_MS = 7;
    public static final int COLUMN_INDEX_STATE = 6;
    public static final int COLUMN_INDEX_STOP_REASON = 10;
    public static final int COLUMN_INDEX_STREAM_KEYS = 3;
    public static final int COLUMN_INDEX_UPDATE_TIME_MS = 8;
    public static final int COLUMN_INDEX_URI = 2;
    public static final java.lang.String COLUMN_STOP_REASON = "stop_reason";
    public static final java.lang.String TABLE_PREFIX = "ExoPlayerDownloads";
    public static final java.lang.String TABLE_SCHEMA = "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)";
    public static final int TABLE_VERSION = 3;
    public static final java.lang.String TRUE = "1";
    public static final java.lang.String WHERE_ID_EQUALS = "id = ?";
    public static final java.lang.String WHERE_STATE_IS_DOWNLOADING = "state = 2";
    public final com.google.android.exoplayer2.database.DatabaseProvider databaseProvider;
    public final java.lang.Object initializationLock;
    public boolean initialized;
    public final java.lang.String name;
    public final java.lang.String tableName;
    public static final java.lang.String WHERE_STATE_IS_TERMINAL = getStateQuery(3, 4);
    public static final java.lang.String COLUMN_MIME_TYPE = "mime_type";
    public static final java.lang.String COLUMN_URI = "uri";
    public static final java.lang.String COLUMN_STREAM_KEYS = "stream_keys";
    public static final java.lang.String COLUMN_CUSTOM_CACHE_KEY = "custom_cache_key";
    public static final java.lang.String COLUMN_STATE = "state";
    public static final java.lang.String COLUMN_START_TIME_MS = "start_time_ms";
    public static final java.lang.String COLUMN_UPDATE_TIME_MS = "update_time_ms";
    public static final java.lang.String COLUMN_CONTENT_LENGTH = "content_length";
    public static final java.lang.String COLUMN_FAILURE_REASON = "failure_reason";
    public static final java.lang.String COLUMN_PERCENT_DOWNLOADED = "percent_downloaded";
    public static final java.lang.String COLUMN_BYTES_DOWNLOADED = "bytes_downloaded";
    public static final java.lang.String COLUMN_KEY_SET_ID = "key_set_id";
    public static final java.lang.String[] COLUMNS = {"id", COLUMN_MIME_TYPE, COLUMN_URI, COLUMN_STREAM_KEYS, COLUMN_CUSTOM_CACHE_KEY, "data", COLUMN_STATE, COLUMN_START_TIME_MS, COLUMN_UPDATE_TIME_MS, COLUMN_CONTENT_LENGTH, "stop_reason", COLUMN_FAILURE_REASON, COLUMN_PERCENT_DOWNLOADED, COLUMN_BYTES_DOWNLOADED, COLUMN_KEY_SET_ID};

    public static final class DownloadCursorImpl implements com.google.android.exoplayer2.offline.DownloadCursor {
        public final android.database.Cursor cursor;

        public DownloadCursorImpl(android.database.Cursor cursor) {
            this.cursor = cursor;
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.cursor.close();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public int getCount() {
            return this.cursor.getCount();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public com.google.android.exoplayer2.offline.Download getDownload() {
            return com.google.android.exoplayer2.offline.DefaultDownloadIndex.getDownloadForCurrentRow(this.cursor);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public int getPosition() {
            return this.cursor.getPosition();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean isAfterLast() {
            return e.c.a.a.l2.o.$default$isAfterLast(this);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean isBeforeFirst() {
            return e.c.a.a.l2.o.$default$isBeforeFirst(this);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public boolean isClosed() {
            return this.cursor.isClosed();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean isFirst() {
            return e.c.a.a.l2.o.$default$isFirst(this);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean isLast() {
            return e.c.a.a.l2.o.$default$isLast(this);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean moveToFirst() {
            return moveToPosition(0);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean moveToLast() {
            return moveToPosition(getCount() - 1);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean moveToNext() {
            return moveToPosition(getPosition() + 1);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public boolean moveToPosition(int i) {
            return this.cursor.moveToPosition(i);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadCursor
        public /* synthetic */ boolean moveToPrevious() {
            return moveToPosition(getPosition() - 1);
        }
    }

    public DefaultDownloadIndex(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider) {
        this(databaseProvider, "");
    }

    public DefaultDownloadIndex(com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, java.lang.String str) {
        this.name = str;
        this.databaseProvider = databaseProvider;
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        this.tableName = strValueOf.length() != 0 ? TABLE_PREFIX.concat(strValueOf) : new java.lang.String(TABLE_PREFIX);
        this.initializationLock = new java.lang.Object();
    }

    public static java.util.List<com.google.android.exoplayer2.offline.StreamKey> decodeStreamKeys(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (android.text.TextUtils.isEmpty(str)) {
            return arrayList;
        }
        for (java.lang.String str2 : com.google.android.exoplayer2.util.Util.split(str, ",")) {
            java.lang.String[] strArrSplit = com.google.android.exoplayer2.util.Util.split(str2, "\\.");
            com.google.android.exoplayer2.util.Assertions.checkState(strArrSplit.length == 3);
            arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(java.lang.Integer.parseInt(strArrSplit[0]), java.lang.Integer.parseInt(strArrSplit[1]), java.lang.Integer.parseInt(strArrSplit[2])));
        }
        return arrayList;
    }

    public static java.lang.String encodeStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.offline.StreamKey streamKey = list.get(i);
            sb.append(streamKey.periodIndex);
            sb.append('.');
            sb.append(streamKey.groupIndex);
            sb.append('.');
            sb.append(streamKey.streamIndex);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private void ensureInitialized() {
        synchronized (this.initializationLock) {
            if (this.initialized) {
                return;
            }
            try {
                int version = com.google.android.exoplayer2.database.VersionTable.getVersion(this.databaseProvider.getReadableDatabase(), 0, this.name);
                if (version != 3) {
                    android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        com.google.android.exoplayer2.database.VersionTable.setVersion(writableDatabase, 0, this.name, 3);
                        java.util.List<com.google.android.exoplayer2.offline.Download> listLoadDownloadsFromVersion2 = version == 2 ? loadDownloadsFromVersion2(writableDatabase) : new java.util.ArrayList<>();
                        java.lang.String strValueOf = java.lang.String.valueOf(this.tableName);
                        writableDatabase.execSQL(strValueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(strValueOf) : new java.lang.String("DROP TABLE IF EXISTS "));
                        java.lang.String str = this.tableName;
                        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 415);
                        sb.append("CREATE TABLE ");
                        sb.append(str);
                        sb.append(" ");
                        sb.append(TABLE_SCHEMA);
                        writableDatabase.execSQL(sb.toString());
                        java.util.Iterator<com.google.android.exoplayer2.offline.Download> it = listLoadDownloadsFromVersion2.iterator();
                        while (it.hasNext()) {
                            putDownloadInternal(it.next(), writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (java.lang.Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                this.initialized = true;
            } catch (android.database.SQLException e2) {
                throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
            }
        }
    }

    private android.database.Cursor getCursor(java.lang.String str, java.lang.String[] strArr) throws com.google.android.exoplayer2.database.DatabaseIOException {
        try {
            return this.databaseProvider.getReadableDatabase().query(this.tableName, COLUMNS, str, strArr, null, null, "start_time_ms ASC");
        } catch (android.database.sqlite.SQLiteException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    public static com.google.android.exoplayer2.offline.Download getDownloadForCurrentRow(android.database.Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        com.google.android.exoplayer2.offline.DownloadRequest.Builder streamKeys = new com.google.android.exoplayer2.offline.DownloadRequest.Builder((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(0)), android.net.Uri.parse((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(2)))).setMimeType(cursor.getString(1)).setStreamKeys(decodeStreamKeys(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        com.google.android.exoplayer2.offline.DownloadRequest downloadRequestBuild = streamKeys.setKeySetId(blob).setCustomCacheKey(cursor.getString(4)).setData(cursor.getBlob(5)).build();
        com.google.android.exoplayer2.offline.DownloadProgress downloadProgress = new com.google.android.exoplayer2.offline.DownloadProgress();
        downloadProgress.bytesDownloaded = cursor.getLong(13);
        downloadProgress.percentDownloaded = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new com.google.android.exoplayer2.offline.Download(downloadRequestBuild, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, downloadProgress);
    }

    public static com.google.android.exoplayer2.offline.Download getDownloadForCurrentRowV2(android.database.Cursor cursor) {
        com.google.android.exoplayer2.offline.DownloadRequest downloadRequestBuild = new com.google.android.exoplayer2.offline.DownloadRequest.Builder((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(0)), android.net.Uri.parse((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(cursor.getString(2)))).setMimeType(inferMimeType(cursor.getString(1))).setStreamKeys(decodeStreamKeys(cursor.getString(3))).setCustomCacheKey(cursor.getString(4)).setData(cursor.getBlob(5)).build();
        com.google.android.exoplayer2.offline.DownloadProgress downloadProgress = new com.google.android.exoplayer2.offline.DownloadProgress();
        downloadProgress.bytesDownloaded = cursor.getLong(13);
        downloadProgress.percentDownloaded = cursor.getFloat(12);
        int i = cursor.getInt(6);
        return new com.google.android.exoplayer2.offline.Download(downloadRequestBuild, i, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i == 4 ? cursor.getInt(11) : 0, downloadProgress);
    }

    public static java.lang.String getStateQuery(int... iArr) {
        if (iArr.length == 0) {
            return "1";
        }
        java.lang.StringBuilder sbQ = e.a.c.a.a.q(COLUMN_STATE, " IN (");
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                sbQ.append(',');
            }
            sbQ.append(iArr[i]);
        }
        sbQ.append(')');
        return sbQ.toString();
    }

    public static java.lang.String inferMimeType(java.lang.String str) {
        return com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_DASH.equals(str) ? com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD : com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_HLS.equals(str) ? com.google.android.exoplayer2.util.MimeTypes.APPLICATION_M3U8 : com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_SS.equals(str) ? com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SS : com.google.android.exoplayer2.util.MimeTypes.VIDEO_UNKNOWN;
    }

    private java.util.List<com.google.android.exoplayer2.offline.Download> loadDownloadsFromVersion2(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (!com.google.android.exoplayer2.util.Util.tableExists(sQLiteDatabase, this.tableName)) {
            return arrayList;
        }
        android.database.Cursor cursorQuery = sQLiteDatabase.query(this.tableName, new java.lang.String[]{"id", "title", COLUMN_URI, COLUMN_STREAM_KEYS, COLUMN_CUSTOM_CACHE_KEY, "data", COLUMN_STATE, COLUMN_START_TIME_MS, COLUMN_UPDATE_TIME_MS, COLUMN_CONTENT_LENGTH, "stop_reason", COLUMN_FAILURE_REASON, COLUMN_PERCENT_DOWNLOADED, COLUMN_BYTES_DOWNLOADED}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                arrayList.add(getDownloadForCurrentRowV2(cursorQuery));
            } catch (java.lang.Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorQuery.close();
        return arrayList;
    }

    private void putDownloadInternal(com.google.android.exoplayer2.offline.Download download, android.database.sqlite.SQLiteDatabase sQLiteDatabase) throws android.database.SQLException {
        byte[] bArr = download.request.keySetId;
        if (bArr == null) {
            bArr = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
        }
        android.content.ContentValues contentValues = new android.content.ContentValues();
        contentValues.put("id", download.request.id);
        contentValues.put(COLUMN_MIME_TYPE, download.request.mimeType);
        contentValues.put(COLUMN_URI, download.request.uri.toString());
        contentValues.put(COLUMN_STREAM_KEYS, encodeStreamKeys(download.request.streamKeys));
        contentValues.put(COLUMN_CUSTOM_CACHE_KEY, download.request.customCacheKey);
        contentValues.put("data", download.request.data);
        contentValues.put(COLUMN_STATE, java.lang.Integer.valueOf(download.state));
        contentValues.put(COLUMN_START_TIME_MS, java.lang.Long.valueOf(download.startTimeMs));
        contentValues.put(COLUMN_UPDATE_TIME_MS, java.lang.Long.valueOf(download.updateTimeMs));
        contentValues.put(COLUMN_CONTENT_LENGTH, java.lang.Long.valueOf(download.contentLength));
        contentValues.put("stop_reason", java.lang.Integer.valueOf(download.stopReason));
        contentValues.put(COLUMN_FAILURE_REASON, java.lang.Integer.valueOf(download.failureReason));
        contentValues.put(COLUMN_PERCENT_DOWNLOADED, java.lang.Float.valueOf(download.getPercentDownloaded()));
        contentValues.put(COLUMN_BYTES_DOWNLOADED, java.lang.Long.valueOf(download.getBytesDownloaded()));
        contentValues.put(COLUMN_KEY_SET_ID, bArr);
        sQLiteDatabase.replaceOrThrow(this.tableName, null, contentValues);
    }

    @Override // com.google.android.exoplayer2.offline.DownloadIndex
    public com.google.android.exoplayer2.offline.Download getDownload(java.lang.String str) throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            android.database.Cursor cursor = getCursor("id = ?", new java.lang.String[]{str});
            try {
                if (cursor.getCount() == 0) {
                    cursor.close();
                    return null;
                }
                cursor.moveToNext();
                com.google.android.exoplayer2.offline.Download downloadForCurrentRow = getDownloadForCurrentRow(cursor);
                cursor.close();
                return downloadForCurrentRow;
            } catch (java.lang.Throwable th) {
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (java.lang.Throwable unused) {
                    }
                }
                throw th;
            }
        } catch (android.database.sqlite.SQLiteException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.DownloadIndex
    public com.google.android.exoplayer2.offline.DownloadCursor getDownloads(int... iArr) throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        return new com.google.android.exoplayer2.offline.DefaultDownloadIndex.DownloadCursorImpl(getCursor(getStateQuery(iArr), null));
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void putDownload(com.google.android.exoplayer2.offline.Download download) throws android.database.SQLException, com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            putDownloadInternal(download, this.databaseProvider.getWritableDatabase());
        } catch (android.database.sqlite.SQLiteException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void removeDownload(java.lang.String str) throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            this.databaseProvider.getWritableDatabase().delete(this.tableName, "id = ?", new java.lang.String[]{str});
        } catch (android.database.sqlite.SQLiteException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setDownloadingStatesToQueued() throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put(COLUMN_STATE, (java.lang.Integer) 0);
            this.databaseProvider.getWritableDatabase().update(this.tableName, contentValues, WHERE_STATE_IS_DOWNLOADING, null);
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStatesToRemoving() throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put(COLUMN_STATE, (java.lang.Integer) 5);
            contentValues.put(COLUMN_FAILURE_REASON, (java.lang.Integer) 0);
            this.databaseProvider.getWritableDatabase().update(this.tableName, contentValues, null, null);
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStopReason(int i) throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("stop_reason", java.lang.Integer.valueOf(i));
            this.databaseProvider.getWritableDatabase().update(this.tableName, contentValues, WHERE_STATE_IS_TERMINAL, null);
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.offline.WritableDownloadIndex
    public void setStopReason(java.lang.String str, int i) throws com.google.android.exoplayer2.database.DatabaseIOException {
        ensureInitialized();
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            contentValues.put("stop_reason", java.lang.Integer.valueOf(i));
            android.database.sqlite.SQLiteDatabase writableDatabase = this.databaseProvider.getWritableDatabase();
            java.lang.String str2 = this.tableName;
            java.lang.String str3 = WHERE_STATE_IS_TERMINAL;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str3).length() + 11);
            sb.append(str3);
            sb.append(" AND ");
            sb.append("id = ?");
            writableDatabase.update(str2, contentValues, sb.toString(), new java.lang.String[]{str});
        } catch (android.database.SQLException e2) {
            throw new com.google.android.exoplayer2.database.DatabaseIOException(e2);
        }
    }
}
