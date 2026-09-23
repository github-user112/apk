package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class DownloadManager {
    public static final int DEFAULT_MAX_PARALLEL_DOWNLOADS = 3;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    public static final com.google.android.exoplayer2.scheduler.Requirements DEFAULT_REQUIREMENTS = new com.google.android.exoplayer2.scheduler.Requirements(1);
    public static final int MSG_ADD_DOWNLOAD = 6;
    public static final int MSG_CONTENT_LENGTH_CHANGED = 10;
    public static final int MSG_DOWNLOAD_UPDATE = 2;
    public static final int MSG_INITIALIZE = 0;
    public static final int MSG_INITIALIZED = 0;
    public static final int MSG_PROCESSED = 1;
    public static final int MSG_RELEASE = 12;
    public static final int MSG_REMOVE_ALL_DOWNLOADS = 8;
    public static final int MSG_REMOVE_DOWNLOAD = 7;
    public static final int MSG_SET_DOWNLOADS_PAUSED = 1;
    public static final int MSG_SET_MAX_PARALLEL_DOWNLOADS = 4;
    public static final int MSG_SET_MIN_RETRY_COUNT = 5;
    public static final int MSG_SET_NOT_MET_REQUIREMENTS = 2;
    public static final int MSG_SET_STOP_REASON = 3;
    public static final int MSG_TASK_STOPPED = 9;
    public static final int MSG_UPDATE_PROGRESS = 11;
    public static final java.lang.String TAG = "DownloadManager";
    public int activeTaskCount;
    public final android.os.Handler applicationHandler;
    public final android.content.Context context;
    public final com.google.android.exoplayer2.offline.WritableDownloadIndex downloadIndex;
    public java.util.List<com.google.android.exoplayer2.offline.Download> downloads;
    public boolean downloadsPaused;
    public boolean initialized;
    public final com.google.android.exoplayer2.offline.DownloadManager.InternalHandler internalHandler;
    public final java.util.concurrent.CopyOnWriteArraySet<com.google.android.exoplayer2.offline.DownloadManager.Listener> listeners;
    public int maxParallelDownloads;
    public int minRetryCount;
    public int notMetRequirements;
    public int pendingMessages;
    public final com.google.android.exoplayer2.scheduler.RequirementsWatcher.Listener requirementsListener;
    public com.google.android.exoplayer2.scheduler.RequirementsWatcher requirementsWatcher;
    public boolean waitingForRequirements;

    public static final class DownloadUpdate {
        public final com.google.android.exoplayer2.offline.Download download;
        public final java.util.List<com.google.android.exoplayer2.offline.Download> downloads;
        public final java.lang.Exception finalException;
        public final boolean isRemove;

        public DownloadUpdate(com.google.android.exoplayer2.offline.Download download, boolean z, java.util.List<com.google.android.exoplayer2.offline.Download> list, java.lang.Exception exc) {
            this.download = download;
            this.isRemove = z;
            this.downloads = list;
            this.finalException = exc;
        }
    }

    public static final class InternalHandler extends android.os.Handler {
        public static final int UPDATE_PROGRESS_INTERVAL_MS = 5000;
        public int activeDownloadTaskCount;
        public final java.util.HashMap<java.lang.String, com.google.android.exoplayer2.offline.DownloadManager.Task> activeTasks;
        public final com.google.android.exoplayer2.offline.WritableDownloadIndex downloadIndex;
        public final com.google.android.exoplayer2.offline.DownloaderFactory downloaderFactory;
        public final java.util.ArrayList<com.google.android.exoplayer2.offline.Download> downloads;
        public boolean downloadsPaused;
        public final android.os.Handler mainHandler;
        public int maxParallelDownloads;
        public int minRetryCount;
        public int notMetRequirements;
        public boolean released;
        public final android.os.HandlerThread thread;

        public InternalHandler(android.os.HandlerThread handlerThread, com.google.android.exoplayer2.offline.WritableDownloadIndex writableDownloadIndex, com.google.android.exoplayer2.offline.DownloaderFactory downloaderFactory, android.os.Handler handler, int i, int i2, boolean z) {
            super(handlerThread.getLooper());
            this.thread = handlerThread;
            this.downloadIndex = writableDownloadIndex;
            this.downloaderFactory = downloaderFactory;
            this.mainHandler = handler;
            this.maxParallelDownloads = i;
            this.minRetryCount = i2;
            this.downloadsPaused = z;
            this.downloads = new java.util.ArrayList<>();
            this.activeTasks = new java.util.HashMap<>();
        }

        private void addDownload(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i) {
            com.google.android.exoplayer2.offline.Download download = getDownload(downloadRequest.id, true);
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            if (download != null) {
                putDownload(com.google.android.exoplayer2.offline.DownloadManager.mergeRequest(download, downloadRequest, i, jCurrentTimeMillis));
            } else {
                putDownload(new com.google.android.exoplayer2.offline.Download(downloadRequest, i != 0 ? 1 : 0, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i, 0));
            }
            syncTasks();
        }

        private boolean canDownloadsRun() {
            return !this.downloadsPaused && this.notMetRequirements == 0;
        }

        public static int compareStartTimes(com.google.android.exoplayer2.offline.Download download, com.google.android.exoplayer2.offline.Download download2) {
            return com.google.android.exoplayer2.util.Util.compareLong(download.startTimeMs, download2.startTimeMs);
        }

        public static com.google.android.exoplayer2.offline.Download copyDownloadWithState(com.google.android.exoplayer2.offline.Download download, int i, int i2) {
            return new com.google.android.exoplayer2.offline.Download(download.request, i, download.startTimeMs, java.lang.System.currentTimeMillis(), download.contentLength, i2, 0, download.progress);
        }

        private com.google.android.exoplayer2.offline.Download getDownload(java.lang.String str, boolean z) {
            int downloadIndex = getDownloadIndex(str);
            if (downloadIndex != -1) {
                return this.downloads.get(downloadIndex);
            }
            if (!z) {
                return null;
            }
            try {
                return this.downloadIndex.getDownload(str);
            } catch (java.io.IOException e2) {
                java.lang.String strValueOf = java.lang.String.valueOf(str);
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, strValueOf.length() != 0 ? "Failed to load download: ".concat(strValueOf) : new java.lang.String("Failed to load download: "), e2);
                return null;
            }
        }

        private int getDownloadIndex(java.lang.String str) {
            for (int i = 0; i < this.downloads.size(); i++) {
                if (this.downloads.get(i).request.id.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        private void initialize(int i) throws java.io.IOException {
            this.notMetRequirements = i;
            com.google.android.exoplayer2.offline.DownloadCursor downloads = null;
            try {
                try {
                    this.downloadIndex.setDownloadingStatesToQueued();
                    downloads = this.downloadIndex.getDownloads(0, 1, 2, 5, 7);
                    while (downloads.moveToNext()) {
                        this.downloads.add(downloads.getDownload());
                    }
                } catch (java.io.IOException e2) {
                    com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to load index.", e2);
                    this.downloads.clear();
                }
                com.google.android.exoplayer2.util.Util.closeQuietly(downloads);
                this.mainHandler.obtainMessage(0, new java.util.ArrayList(this.downloads)).sendToTarget();
                syncTasks();
            } catch (java.lang.Throwable th) {
                com.google.android.exoplayer2.util.Util.closeQuietly(downloads);
                throw th;
            }
        }

        private void onContentLengthChanged(com.google.android.exoplayer2.offline.DownloadManager.Task task, long j) {
            com.google.android.exoplayer2.offline.Download download = (com.google.android.exoplayer2.offline.Download) com.google.android.exoplayer2.util.Assertions.checkNotNull(getDownload(task.request.id, false));
            if (j == download.contentLength || j == -1) {
                return;
            }
            putDownload(new com.google.android.exoplayer2.offline.Download(download.request, download.state, download.startTimeMs, java.lang.System.currentTimeMillis(), j, download.stopReason, download.failureReason, download.progress));
        }

        private void onDownloadTaskStopped(com.google.android.exoplayer2.offline.Download download, java.lang.Exception exc) {
            com.google.android.exoplayer2.offline.Download download2 = new com.google.android.exoplayer2.offline.Download(download.request, exc == null ? 3 : 4, download.startTimeMs, java.lang.System.currentTimeMillis(), download.contentLength, download.stopReason, exc == null ? 0 : 1, download.progress);
            this.downloads.remove(getDownloadIndex(download2.request.id));
            try {
                this.downloadIndex.putDownload(download2);
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to update index.", e2);
            }
            this.mainHandler.obtainMessage(2, new com.google.android.exoplayer2.offline.DownloadManager.DownloadUpdate(download2, false, new java.util.ArrayList(this.downloads), exc)).sendToTarget();
        }

        private void onRemoveTaskStopped(com.google.android.exoplayer2.offline.Download download) {
            if (download.state == 7) {
                putDownloadWithState(download, download.stopReason == 0 ? 0 : 1, download.stopReason);
                syncTasks();
            } else {
                this.downloads.remove(getDownloadIndex(download.request.id));
                try {
                    this.downloadIndex.removeDownload(download.request.id);
                } catch (java.io.IOException unused) {
                    com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to remove from database");
                }
                this.mainHandler.obtainMessage(2, new com.google.android.exoplayer2.offline.DownloadManager.DownloadUpdate(download, true, new java.util.ArrayList(this.downloads), null)).sendToTarget();
            }
        }

        private void onTaskStopped(com.google.android.exoplayer2.offline.DownloadManager.Task task) {
            java.lang.String str = task.request.id;
            this.activeTasks.remove(str);
            boolean z = task.isRemove;
            if (!z) {
                int i = this.activeDownloadTaskCount - 1;
                this.activeDownloadTaskCount = i;
                if (i == 0) {
                    removeMessages(11);
                }
            }
            if (task.isCanceled) {
                syncTasks();
                return;
            }
            java.lang.Exception exc = task.finalException;
            if (exc != null) {
                java.lang.String strValueOf = java.lang.String.valueOf(task.request);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 20);
                sb.append("Task failed: ");
                sb.append(strValueOf);
                sb.append(", ");
                sb.append(z);
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, sb.toString(), exc);
            }
            com.google.android.exoplayer2.offline.Download download = (com.google.android.exoplayer2.offline.Download) com.google.android.exoplayer2.util.Assertions.checkNotNull(getDownload(str, false));
            int i2 = download.state;
            if (i2 == 2) {
                com.google.android.exoplayer2.util.Assertions.checkState(!z);
                onDownloadTaskStopped(download, exc);
            } else {
                if (i2 != 5 && i2 != 7) {
                    throw new java.lang.IllegalStateException();
                }
                com.google.android.exoplayer2.util.Assertions.checkState(z);
                onRemoveTaskStopped(download);
            }
            syncTasks();
        }

        /* JADX WARN: Can't wrap try/catch for region: R(10:0|2|(1:7)(1:6)|8|(1:10)(8:12|(1:15)|16|(0)|25|19|23|24)|11|25|19|23|24) */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        
            com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to update index.", r0);
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.google.android.exoplayer2.offline.Download putDownload(com.google.android.exoplayer2.offline.Download r9) {
            /*
                r8 = this;
                int r0 = r9.state
                r1 = 1
                r2 = 0
                r3 = 3
                if (r0 == r3) goto Lc
                r3 = 4
                if (r0 == r3) goto Lc
                r0 = 1
                goto Ld
            Lc:
                r0 = 0
            Ld:
                com.google.android.exoplayer2.util.Assertions.checkState(r0)
                com.google.android.exoplayer2.offline.DownloadRequest r0 = r9.request
                java.lang.String r0 = r0.id
                int r0 = r8.getDownloadIndex(r0)
                r3 = -1
                if (r0 != r3) goto L28
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> r0 = r8.downloads
                r0.add(r9)
            L20:
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> r0 = r8.downloads
                e.c.a.a.l2.l r1 = e.c.a.a.l2.l.a
                java.util.Collections.sort(r0, r1)
                goto L42
            L28:
                long r3 = r9.startTimeMs
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> r5 = r8.downloads
                java.lang.Object r5 = r5.get(r0)
                com.google.android.exoplayer2.offline.Download r5 = (com.google.android.exoplayer2.offline.Download) r5
                long r5 = r5.startTimeMs
                int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r7 == 0) goto L39
                goto L3a
            L39:
                r1 = 0
            L3a:
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> r3 = r8.downloads
                r3.set(r0, r9)
                if (r1 == 0) goto L42
                goto L20
            L42:
                com.google.android.exoplayer2.offline.WritableDownloadIndex r0 = r8.downloadIndex     // Catch: java.io.IOException -> L48
                r0.putDownload(r9)     // Catch: java.io.IOException -> L48
                goto L50
            L48:
                r0 = move-exception
                java.lang.String r1 = "DownloadManager"
                java.lang.String r3 = "Failed to update index."
                com.google.android.exoplayer2.util.Log.e(r1, r3, r0)
            L50:
                com.google.android.exoplayer2.offline.DownloadManager$DownloadUpdate r0 = new com.google.android.exoplayer2.offline.DownloadManager$DownloadUpdate
                java.util.ArrayList r1 = new java.util.ArrayList
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> r3 = r8.downloads
                r1.<init>(r3)
                r3 = 0
                r0.<init>(r9, r2, r1, r3)
                android.os.Handler r1 = r8.mainHandler
                r2 = 2
                android.os.Message r0 = r1.obtainMessage(r2, r0)
                r0.sendToTarget()
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.DownloadManager.InternalHandler.putDownload(com.google.android.exoplayer2.offline.Download):com.google.android.exoplayer2.offline.Download");
        }

        private com.google.android.exoplayer2.offline.Download putDownloadWithState(com.google.android.exoplayer2.offline.Download download, int i, int i2) {
            com.google.android.exoplayer2.util.Assertions.checkState((i == 3 || i == 4) ? false : true);
            return putDownload(copyDownloadWithState(download, i, i2));
        }

        private void release() {
            java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Task> it = this.activeTasks.values().iterator();
            while (it.hasNext()) {
                it.next().cancel(true);
            }
            try {
                this.downloadIndex.setDownloadingStatesToQueued();
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to update index.", e2);
            }
            this.downloads.clear();
            this.thread.quit();
            synchronized (this) {
                this.released = true;
                notifyAll();
            }
        }

        private void removeAllDownloads() {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            try {
                com.google.android.exoplayer2.offline.DownloadCursor downloads = this.downloadIndex.getDownloads(3, 4);
                while (downloads.moveToNext()) {
                    try {
                        arrayList.add(downloads.getDownload());
                    } catch (java.lang.Throwable th) {
                        if (downloads != null) {
                            try {
                                downloads.close();
                            } catch (java.lang.Throwable unused) {
                            }
                        }
                        throw th;
                    }
                }
                downloads.close();
            } catch (java.io.IOException unused2) {
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to load downloads.");
            }
            for (int i = 0; i < this.downloads.size(); i++) {
                java.util.ArrayList<com.google.android.exoplayer2.offline.Download> arrayList2 = this.downloads;
                arrayList2.set(i, copyDownloadWithState(arrayList2.get(i), 5, 0));
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.downloads.add(copyDownloadWithState((com.google.android.exoplayer2.offline.Download) arrayList.get(i2), 5, 0));
            }
            java.util.Collections.sort(this.downloads, e.c.a.a.l2.l.a);
            try {
                this.downloadIndex.setStatesToRemoving();
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to update index.", e2);
            }
            java.util.ArrayList arrayList3 = new java.util.ArrayList(this.downloads);
            for (int i3 = 0; i3 < this.downloads.size(); i3++) {
                this.mainHandler.obtainMessage(2, new com.google.android.exoplayer2.offline.DownloadManager.DownloadUpdate(this.downloads.get(i3), false, arrayList3, null)).sendToTarget();
            }
            syncTasks();
        }

        private void removeDownload(java.lang.String str) {
            com.google.android.exoplayer2.offline.Download download = getDownload(str, true);
            if (download == null) {
                java.lang.String strValueOf = java.lang.String.valueOf(str);
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, strValueOf.length() != 0 ? "Failed to remove nonexistent download: ".concat(strValueOf) : new java.lang.String("Failed to remove nonexistent download: "));
            } else {
                putDownloadWithState(download, 5, 0);
                syncTasks();
            }
        }

        private void setDownloadsPaused(boolean z) {
            this.downloadsPaused = z;
            syncTasks();
        }

        private void setMaxParallelDownloads(int i) {
            this.maxParallelDownloads = i;
            syncTasks();
        }

        private void setMinRetryCount(int i) {
            this.minRetryCount = i;
        }

        private void setNotMetRequirements(int i) {
            this.notMetRequirements = i;
            syncTasks();
        }

        private void setStopReason(com.google.android.exoplayer2.offline.Download download, int i) {
            if (i == 0) {
                if (download.state == 1) {
                    putDownloadWithState(download, 0, 0);
                }
            } else if (i != download.stopReason) {
                int i2 = download.state;
                if (i2 == 0 || i2 == 2) {
                    i2 = 1;
                }
                putDownload(new com.google.android.exoplayer2.offline.Download(download.request, i2, download.startTimeMs, java.lang.System.currentTimeMillis(), download.contentLength, i, 0, download.progress));
            }
        }

        private void setStopReason(java.lang.String str, int i) {
            if (str == null) {
                for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                    setStopReason(this.downloads.get(i2), i);
                }
                try {
                    this.downloadIndex.setStopReason(i);
                } catch (java.io.IOException e2) {
                    com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to set manual stop reason", e2);
                }
            } else {
                com.google.android.exoplayer2.offline.Download download = getDownload(str, false);
                if (download != null) {
                    setStopReason(download, i);
                } else {
                    try {
                        this.downloadIndex.setStopReason(str, i);
                    } catch (java.io.IOException e3) {
                        com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, str.length() != 0 ? "Failed to set manual stop reason: ".concat(str) : new java.lang.String("Failed to set manual stop reason: "), e3);
                    }
                }
            }
            syncTasks();
        }

        private void syncDownloadingDownload(com.google.android.exoplayer2.offline.DownloadManager.Task task, com.google.android.exoplayer2.offline.Download download, int i) {
            com.google.android.exoplayer2.util.Assertions.checkState(!task.isRemove);
            if (!canDownloadsRun() || i >= this.maxParallelDownloads) {
                putDownloadWithState(download, 0, 0);
                task.cancel(false);
            }
        }

        private com.google.android.exoplayer2.offline.DownloadManager.Task syncQueuedDownload(com.google.android.exoplayer2.offline.DownloadManager.Task task, com.google.android.exoplayer2.offline.Download download) {
            if (task != null) {
                com.google.android.exoplayer2.util.Assertions.checkState(!task.isRemove);
                task.cancel(false);
                return task;
            }
            if (!canDownloadsRun() || this.activeDownloadTaskCount >= this.maxParallelDownloads) {
                return null;
            }
            com.google.android.exoplayer2.offline.Download downloadPutDownloadWithState = putDownloadWithState(download, 2, 0);
            com.google.android.exoplayer2.offline.DownloadManager.Task task2 = new com.google.android.exoplayer2.offline.DownloadManager.Task(downloadPutDownloadWithState.request, this.downloaderFactory.createDownloader(downloadPutDownloadWithState.request), downloadPutDownloadWithState.progress, false, this.minRetryCount, this);
            this.activeTasks.put(downloadPutDownloadWithState.request.id, task2);
            int i = this.activeDownloadTaskCount;
            this.activeDownloadTaskCount = i + 1;
            if (i == 0) {
                sendEmptyMessageDelayed(11, 5000L);
            }
            task2.start();
            return task2;
        }

        private void syncRemovingDownload(com.google.android.exoplayer2.offline.DownloadManager.Task task, com.google.android.exoplayer2.offline.Download download) {
            if (task != null) {
                if (task.isRemove) {
                    return;
                }
                task.cancel(false);
            } else {
                com.google.android.exoplayer2.offline.DownloadManager.Task task2 = new com.google.android.exoplayer2.offline.DownloadManager.Task(download.request, this.downloaderFactory.createDownloader(download.request), download.progress, true, this.minRetryCount, this);
                this.activeTasks.put(download.request.id, task2);
                task2.start();
            }
        }

        private void syncStoppedDownload(com.google.android.exoplayer2.offline.DownloadManager.Task task) {
            if (task != null) {
                com.google.android.exoplayer2.util.Assertions.checkState(!task.isRemove);
                task.cancel(false);
            }
        }

        private void syncTasks() {
            int i = 0;
            for (int i2 = 0; i2 < this.downloads.size(); i2++) {
                com.google.android.exoplayer2.offline.Download download = this.downloads.get(i2);
                com.google.android.exoplayer2.offline.DownloadManager.Task taskSyncQueuedDownload = this.activeTasks.get(download.request.id);
                int i3 = download.state;
                if (i3 == 0) {
                    taskSyncQueuedDownload = syncQueuedDownload(taskSyncQueuedDownload, download);
                } else if (i3 == 1) {
                    syncStoppedDownload(taskSyncQueuedDownload);
                } else if (i3 == 2) {
                    com.google.android.exoplayer2.util.Assertions.checkNotNull(taskSyncQueuedDownload);
                    syncDownloadingDownload(taskSyncQueuedDownload, download, i);
                } else {
                    if (i3 != 5 && i3 != 7) {
                        throw new java.lang.IllegalStateException();
                    }
                    syncRemovingDownload(taskSyncQueuedDownload, download);
                }
                if (taskSyncQueuedDownload != null && !taskSyncQueuedDownload.isRemove) {
                    i++;
                }
            }
        }

        private void updateProgress() {
            for (int i = 0; i < this.downloads.size(); i++) {
                com.google.android.exoplayer2.offline.Download download = this.downloads.get(i);
                if (download.state == 2) {
                    try {
                        this.downloadIndex.putDownload(download);
                    } catch (java.io.IOException e2) {
                        com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.offline.DownloadManager.TAG, "Failed to update index.", e2);
                    }
                }
            }
            sendEmptyMessageDelayed(11, 5000L);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) throws java.io.IOException {
            int i = 0;
            switch (message.what) {
                case 0:
                    initialize(message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 1:
                    setDownloadsPaused(message.arg1 != 0);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 2:
                    setNotMetRequirements(message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 3:
                    setStopReason((java.lang.String) message.obj, message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 4:
                    setMaxParallelDownloads(message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 5:
                    setMinRetryCount(message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 6:
                    addDownload((com.google.android.exoplayer2.offline.DownloadRequest) message.obj, message.arg1);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 7:
                    removeDownload((java.lang.String) message.obj);
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 8:
                    removeAllDownloads();
                    i = 1;
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 9:
                    onTaskStopped((com.google.android.exoplayer2.offline.DownloadManager.Task) message.obj);
                    this.mainHandler.obtainMessage(1, i, this.activeTasks.size()).sendToTarget();
                    return;
                case 10:
                    onContentLengthChanged((com.google.android.exoplayer2.offline.DownloadManager.Task) message.obj, com.google.android.exoplayer2.util.Util.toLong(message.arg1, message.arg2));
                    return;
                case 11:
                    updateProgress();
                    return;
                case 12:
                    release();
                    return;
                default:
                    throw new java.lang.IllegalStateException();
            }
        }
    }

    public interface Listener {
        void onDownloadChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.offline.Download download, java.lang.Exception exc);

        void onDownloadRemoved(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.offline.Download download);

        void onDownloadsPausedChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, boolean z);

        void onIdle(com.google.android.exoplayer2.offline.DownloadManager downloadManager);

        void onInitialized(com.google.android.exoplayer2.offline.DownloadManager downloadManager);

        void onRequirementsStateChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.scheduler.Requirements requirements, int i);

        void onWaitingForRequirementsChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, boolean z);
    }

    public static class Task extends java.lang.Thread implements com.google.android.exoplayer2.offline.Downloader.ProgressListener {
        public long contentLength;
        public final com.google.android.exoplayer2.offline.DownloadProgress downloadProgress;
        public final com.google.android.exoplayer2.offline.Downloader downloader;
        public java.lang.Exception finalException;
        public volatile com.google.android.exoplayer2.offline.DownloadManager.InternalHandler internalHandler;
        public volatile boolean isCanceled;
        public final boolean isRemove;
        public final int minRetryCount;
        public final com.google.android.exoplayer2.offline.DownloadRequest request;

        public Task(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, com.google.android.exoplayer2.offline.Downloader downloader, com.google.android.exoplayer2.offline.DownloadProgress downloadProgress, boolean z, int i, com.google.android.exoplayer2.offline.DownloadManager.InternalHandler internalHandler) {
            this.request = downloadRequest;
            this.downloader = downloader;
            this.downloadProgress = downloadProgress;
            this.isRemove = z;
            this.minRetryCount = i;
            this.internalHandler = internalHandler;
            this.contentLength = -1L;
        }

        public static int getRetryDelayMillis(int i) {
            return java.lang.Math.min((i - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            if (z) {
                this.internalHandler = null;
            }
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override // com.google.android.exoplayer2.offline.Downloader.ProgressListener
        public void onProgress(long j, long j2, float f2) {
            this.downloadProgress.bytesDownloaded = j2;
            this.downloadProgress.percentDownloaded = f2;
            if (j != this.contentLength) {
                this.contentLength = j;
                com.google.android.exoplayer2.offline.DownloadManager.InternalHandler internalHandler = this.internalHandler;
                if (internalHandler != null) {
                    internalHandler.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws java.lang.InterruptedException, java.io.IOException {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                } else {
                    long j = -1;
                    int i = 0;
                    while (!this.isCanceled) {
                        try {
                            this.downloader.download(this);
                            break;
                        } catch (java.io.IOException e2) {
                            if (!this.isCanceled) {
                                long j2 = this.downloadProgress.bytesDownloaded;
                                if (j2 != j) {
                                    j = j2;
                                    i = 0;
                                }
                                i++;
                                if (i > this.minRetryCount) {
                                    throw e2;
                                }
                                java.lang.Thread.sleep(getRetryDelayMillis(i));
                            }
                        }
                    }
                }
            } catch (java.lang.InterruptedException unused) {
                java.lang.Thread.currentThread().interrupt();
            } catch (java.lang.Exception e3) {
                this.finalException = e3;
            }
            com.google.android.exoplayer2.offline.DownloadManager.InternalHandler internalHandler = this.internalHandler;
            if (internalHandler != null) {
                internalHandler.obtainMessage(9, this).sendToTarget();
            }
        }
    }

    @java.lang.Deprecated
    public DownloadManager(android.content.Context context, com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        this(context, databaseProvider, cache, factory, e.c.a.a.l2.n.a);
    }

    public DownloadManager(android.content.Context context, com.google.android.exoplayer2.database.DatabaseProvider databaseProvider, com.google.android.exoplayer2.upstream.cache.Cache cache, com.google.android.exoplayer2.upstream.DataSource.Factory factory, java.util.concurrent.Executor executor) {
        this(context, new com.google.android.exoplayer2.offline.DefaultDownloadIndex(databaseProvider), new com.google.android.exoplayer2.offline.DefaultDownloaderFactory(new com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory().setCache(cache).setUpstreamDataSourceFactory(factory), executor));
    }

    public DownloadManager(android.content.Context context, com.google.android.exoplayer2.offline.WritableDownloadIndex writableDownloadIndex, com.google.android.exoplayer2.offline.DownloaderFactory downloaderFactory) {
        this.context = context.getApplicationContext();
        this.downloadIndex = writableDownloadIndex;
        this.maxParallelDownloads = 3;
        this.minRetryCount = 5;
        this.downloadsPaused = true;
        this.downloads = java.util.Collections.emptyList();
        this.listeners = new java.util.concurrent.CopyOnWriteArraySet<>();
        android.os.Handler handlerCreateHandlerForCurrentOrMainLooper = com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper(new android.os.Handler.Callback() { // from class: e.c.a.a.l2.i
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.a.handleMainMessage(message);
            }
        });
        this.applicationHandler = handlerCreateHandlerForCurrentOrMainLooper;
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        this.internalHandler = new com.google.android.exoplayer2.offline.DownloadManager.InternalHandler(handlerThread, writableDownloadIndex, downloaderFactory, handlerCreateHandlerForCurrentOrMainLooper, this.maxParallelDownloads, this.minRetryCount, this.downloadsPaused);
        com.google.android.exoplayer2.scheduler.RequirementsWatcher.Listener listener = new com.google.android.exoplayer2.scheduler.RequirementsWatcher.Listener() { // from class: e.c.a.a.l2.h
            @Override // com.google.android.exoplayer2.scheduler.RequirementsWatcher.Listener
            public final void onRequirementsStateChanged(com.google.android.exoplayer2.scheduler.RequirementsWatcher requirementsWatcher, int i) {
                this.a.onRequirementsStateChanged(requirementsWatcher, i);
            }
        };
        this.requirementsListener = listener;
        com.google.android.exoplayer2.scheduler.RequirementsWatcher requirementsWatcher = new com.google.android.exoplayer2.scheduler.RequirementsWatcher(context, listener, DEFAULT_REQUIREMENTS);
        this.requirementsWatcher = requirementsWatcher;
        int iStart = requirementsWatcher.start();
        this.notMetRequirements = iStart;
        this.pendingMessages = 1;
        this.internalHandler.obtainMessage(0, iStart, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMainMessage(android.os.Message message) {
        int i = message.what;
        if (i == 0) {
            onInitialized((java.util.List) message.obj);
        } else if (i == 1) {
            onMessageProcessed(message.arg1, message.arg2);
        } else {
            if (i != 2) {
                throw new java.lang.IllegalStateException();
            }
            onDownloadUpdate((com.google.android.exoplayer2.offline.DownloadManager.DownloadUpdate) message.obj);
        }
        return true;
    }

    public static com.google.android.exoplayer2.offline.Download mergeRequest(com.google.android.exoplayer2.offline.Download download, com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i, long j) {
        int i2 = download.state;
        return new com.google.android.exoplayer2.offline.Download(download.request.copyWithMergedRequest(downloadRequest), (i2 == 5 || i2 == 7) ? 7 : i != 0 ? 1 : 0, (i2 == 5 || download.isTerminalState()) ? j : download.startTimeMs, j, -1L, i, 0);
    }

    private void notifyWaitingForRequirementsChanged() {
        java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onWaitingForRequirementsChanged(this, this.waitingForRequirements);
        }
    }

    private void onDownloadUpdate(com.google.android.exoplayer2.offline.DownloadManager.DownloadUpdate downloadUpdate) {
        this.downloads = java.util.Collections.unmodifiableList(downloadUpdate.downloads);
        com.google.android.exoplayer2.offline.Download download = downloadUpdate.download;
        boolean zUpdateWaitingForRequirements = updateWaitingForRequirements();
        if (downloadUpdate.isRemove) {
            java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onDownloadRemoved(this, download);
            }
        } else {
            java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().onDownloadChanged(this, download, downloadUpdate.finalException);
            }
        }
        if (zUpdateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void onInitialized(java.util.List<com.google.android.exoplayer2.offline.Download> list) {
        this.initialized = true;
        this.downloads = java.util.Collections.unmodifiableList(list);
        boolean zUpdateWaitingForRequirements = updateWaitingForRequirements();
        java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onInitialized(this);
        }
        if (zUpdateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void onMessageProcessed(int i, int i2) {
        this.pendingMessages -= i;
        this.activeTaskCount = i2;
        if (isIdle()) {
            java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().onIdle(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRequirementsStateChanged(com.google.android.exoplayer2.scheduler.RequirementsWatcher requirementsWatcher, int i) {
        com.google.android.exoplayer2.scheduler.Requirements requirements = requirementsWatcher.getRequirements();
        if (this.notMetRequirements != i) {
            this.notMetRequirements = i;
            this.pendingMessages++;
            this.internalHandler.obtainMessage(2, i, 0).sendToTarget();
        }
        boolean zUpdateWaitingForRequirements = updateWaitingForRequirements();
        java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onRequirementsStateChanged(this, requirements, i);
        }
        if (zUpdateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private void setDownloadsPaused(boolean z) {
        if (this.downloadsPaused == z) {
            return;
        }
        this.downloadsPaused = z;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
        boolean zUpdateWaitingForRequirements = updateWaitingForRequirements();
        java.util.Iterator<com.google.android.exoplayer2.offline.DownloadManager.Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDownloadsPausedChanged(this, z);
        }
        if (zUpdateWaitingForRequirements) {
            notifyWaitingForRequirementsChanged();
        }
    }

    private boolean updateWaitingForRequirements() {
        boolean z;
        if (this.downloadsPaused || this.notMetRequirements == 0) {
            z = false;
        } else {
            for (int i = 0; i < this.downloads.size(); i++) {
                if (this.downloads.get(i).state == 0) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        boolean z2 = this.waitingForRequirements != z;
        this.waitingForRequirements = z;
        return z2;
    }

    public void addDownload(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest) {
        addDownload(downloadRequest, 0);
    }

    public void addDownload(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(6, i, 0, downloadRequest).sendToTarget();
    }

    public void addListener(com.google.android.exoplayer2.offline.DownloadManager.Listener listener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(listener);
        this.listeners.add(listener);
    }

    public android.os.Looper getApplicationLooper() {
        return this.applicationHandler.getLooper();
    }

    public java.util.List<com.google.android.exoplayer2.offline.Download> getCurrentDownloads() {
        return this.downloads;
    }

    public com.google.android.exoplayer2.offline.DownloadIndex getDownloadIndex() {
        return this.downloadIndex;
    }

    public boolean getDownloadsPaused() {
        return this.downloadsPaused;
    }

    public int getMaxParallelDownloads() {
        return this.maxParallelDownloads;
    }

    public int getMinRetryCount() {
        return this.minRetryCount;
    }

    public int getNotMetRequirements() {
        return this.notMetRequirements;
    }

    public com.google.android.exoplayer2.scheduler.Requirements getRequirements() {
        return this.requirementsWatcher.getRequirements();
    }

    public boolean isIdle() {
        return this.activeTaskCount == 0 && this.pendingMessages == 0;
    }

    public boolean isInitialized() {
        return this.initialized;
    }

    public boolean isWaitingForRequirements() {
        return this.waitingForRequirements;
    }

    public void pauseDownloads() {
        setDownloadsPaused(true);
    }

    public void release() {
        synchronized (this.internalHandler) {
            if (this.internalHandler.released) {
                return;
            }
            this.internalHandler.sendEmptyMessage(12);
            boolean z = false;
            while (!this.internalHandler.released) {
                try {
                    this.internalHandler.wait();
                } catch (java.lang.InterruptedException unused) {
                    z = true;
                }
            }
            if (z) {
                java.lang.Thread.currentThread().interrupt();
            }
            this.applicationHandler.removeCallbacksAndMessages(null);
            this.downloads = java.util.Collections.emptyList();
            this.pendingMessages = 0;
            this.activeTaskCount = 0;
            this.initialized = false;
            this.notMetRequirements = 0;
            this.waitingForRequirements = false;
        }
    }

    public void removeAllDownloads() {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(8).sendToTarget();
    }

    public void removeDownload(java.lang.String str) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(7, str).sendToTarget();
    }

    public void removeListener(com.google.android.exoplayer2.offline.DownloadManager.Listener listener) {
        this.listeners.remove(listener);
    }

    public void resumeDownloads() {
        setDownloadsPaused(false);
    }

    public void setMaxParallelDownloads(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0);
        if (this.maxParallelDownloads == i) {
            return;
        }
        this.maxParallelDownloads = i;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(4, i, 0).sendToTarget();
    }

    public void setMinRetryCount(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        if (this.minRetryCount == i) {
            return;
        }
        this.minRetryCount = i;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(5, i, 0).sendToTarget();
    }

    public void setRequirements(com.google.android.exoplayer2.scheduler.Requirements requirements) {
        if (requirements.equals(this.requirementsWatcher.getRequirements())) {
            return;
        }
        this.requirementsWatcher.stop();
        com.google.android.exoplayer2.scheduler.RequirementsWatcher requirementsWatcher = new com.google.android.exoplayer2.scheduler.RequirementsWatcher(this.context, this.requirementsListener, requirements);
        this.requirementsWatcher = requirementsWatcher;
        onRequirementsStateChanged(this.requirementsWatcher, requirementsWatcher.start());
    }

    public void setStopReason(java.lang.String str, int i) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(3, i, 0, str).sendToTarget();
    }
}
