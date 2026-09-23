package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public abstract class DownloadService extends android.app.Service {
    public static final java.lang.String ACTION_ADD_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD";
    public static final java.lang.String ACTION_INIT = "com.google.android.exoplayer.downloadService.action.INIT";
    public static final java.lang.String ACTION_PAUSE_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS";
    public static final java.lang.String ACTION_REMOVE_ALL_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS";
    public static final java.lang.String ACTION_REMOVE_DOWNLOAD = "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD";
    public static final java.lang.String ACTION_RESTART = "com.google.android.exoplayer.downloadService.action.RESTART";
    public static final java.lang.String ACTION_RESUME_DOWNLOADS = "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS";
    public static final java.lang.String ACTION_SET_REQUIREMENTS = "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS";
    public static final java.lang.String ACTION_SET_STOP_REASON = "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON";
    public static final long DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL = 1000;
    public static final int FOREGROUND_NOTIFICATION_ID_NONE = 0;
    public static final java.lang.String KEY_CONTENT_ID = "content_id";
    public static final java.lang.String KEY_DOWNLOAD_REQUEST = "download_request";
    public static final java.lang.String KEY_FOREGROUND = "foreground";
    public static final java.lang.String KEY_REQUIREMENTS = "requirements";
    public static final java.lang.String KEY_STOP_REASON = "stop_reason";
    public static final java.lang.String TAG = "DownloadService";
    public static final java.util.HashMap<java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService>, com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper> downloadManagerHelpers = new java.util.HashMap<>();
    public final int channelDescriptionResourceId;
    public final java.lang.String channelId;
    public final int channelNameResourceId;
    public com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper downloadManagerHelper;
    public final com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater;
    public boolean isDestroyed;
    public boolean isStopped;
    public int lastStartId;
    public boolean startedInForeground;
    public boolean taskRemoved;

    public static final class DownloadManagerHelper implements com.google.android.exoplayer2.offline.DownloadManager.Listener {
        public final android.content.Context context;
        public final com.google.android.exoplayer2.offline.DownloadManager downloadManager;
        public com.google.android.exoplayer2.offline.DownloadService downloadService;
        public final boolean foregroundAllowed;
        public com.google.android.exoplayer2.scheduler.Requirements scheduledRequirements;
        public final com.google.android.exoplayer2.scheduler.Scheduler scheduler;
        public final java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> serviceClass;

        public DownloadManagerHelper(android.content.Context context, com.google.android.exoplayer2.offline.DownloadManager downloadManager, boolean z, com.google.android.exoplayer2.scheduler.Scheduler scheduler, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls) {
            this.context = context;
            this.downloadManager = downloadManager;
            this.foregroundAllowed = z;
            this.scheduler = scheduler;
            this.serviceClass = cls;
            downloadManager.addListener(this);
            updateScheduler();
        }

        @org.checkerframework.checker.nullness.qual.RequiresNonNull({"scheduler"})
        private void cancelScheduler() {
            com.google.android.exoplayer2.scheduler.Requirements requirements = new com.google.android.exoplayer2.scheduler.Requirements(0);
            if (schedulerNeedsUpdate(requirements)) {
                this.scheduler.cancel();
                this.scheduledRequirements = requirements;
            }
        }

        private void restartService() {
            java.lang.String str;
            if (this.foregroundAllowed) {
                try {
                    com.google.android.exoplayer2.util.Util.startForegroundService(this.context, com.google.android.exoplayer2.offline.DownloadService.getIntent(this.context, this.serviceClass, com.google.android.exoplayer2.offline.DownloadService.ACTION_RESTART));
                    return;
                } catch (java.lang.IllegalStateException unused) {
                    str = "Failed to restart (foreground launch restriction)";
                }
            } else {
                try {
                    this.context.startService(com.google.android.exoplayer2.offline.DownloadService.getIntent(this.context, this.serviceClass, com.google.android.exoplayer2.offline.DownloadService.ACTION_INIT));
                    return;
                } catch (java.lang.IllegalStateException unused2) {
                    str = "Failed to restart (process is idle)";
                }
            }
            com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.offline.DownloadService.TAG, str);
        }

        private boolean schedulerNeedsUpdate(com.google.android.exoplayer2.scheduler.Requirements requirements) {
            return !com.google.android.exoplayer2.util.Util.areEqual(this.scheduledRequirements, requirements);
        }

        private boolean serviceMayNeedRestart() {
            com.google.android.exoplayer2.offline.DownloadService downloadService = this.downloadService;
            return downloadService == null || downloadService.isStopped();
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.offline.DownloadService downloadService) {
            downloadService.notifyDownloads(this.downloadManager.getCurrentDownloads());
        }

        public void attachService(final com.google.android.exoplayer2.offline.DownloadService downloadService) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.downloadService == null);
            this.downloadService = downloadService;
            if (this.downloadManager.isInitialized()) {
                com.google.android.exoplayer2.util.Util.createHandlerForCurrentOrMainLooper().postAtFrontOfQueue(new java.lang.Runnable() { // from class: e.c.a.a.l2.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(downloadService);
                    }
                });
            }
        }

        public void detachService(com.google.android.exoplayer2.offline.DownloadService downloadService) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.downloadService == downloadService);
            this.downloadService = null;
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.offline.Download download, java.lang.Exception exc) {
            com.google.android.exoplayer2.offline.DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadChanged(download);
            }
            if (serviceMayNeedRestart() && com.google.android.exoplayer2.offline.DownloadService.needsStartedService(download.state)) {
                com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.offline.DownloadService.TAG, "DownloadService wasn't running. Restarting.");
                restartService();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onDownloadRemoved(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.offline.Download download) {
            com.google.android.exoplayer2.offline.DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloadRemoved();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public /* synthetic */ void onDownloadsPausedChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, boolean z) {
            e.c.a.a.l2.p.$default$onDownloadsPausedChanged(this, downloadManager, z);
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public final void onIdle(com.google.android.exoplayer2.offline.DownloadManager downloadManager) {
            com.google.android.exoplayer2.offline.DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.onIdle();
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onInitialized(com.google.android.exoplayer2.offline.DownloadManager downloadManager) {
            com.google.android.exoplayer2.offline.DownloadService downloadService = this.downloadService;
            if (downloadService != null) {
                downloadService.notifyDownloads(downloadManager.getCurrentDownloads());
            }
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onRequirementsStateChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, com.google.android.exoplayer2.scheduler.Requirements requirements, int i) {
            updateScheduler();
        }

        @Override // com.google.android.exoplayer2.offline.DownloadManager.Listener
        public void onWaitingForRequirementsChanged(com.google.android.exoplayer2.offline.DownloadManager downloadManager, boolean z) {
            if (z || downloadManager.getDownloadsPaused() || !serviceMayNeedRestart()) {
                return;
            }
            java.util.List<com.google.android.exoplayer2.offline.Download> currentDownloads = downloadManager.getCurrentDownloads();
            for (int i = 0; i < currentDownloads.size(); i++) {
                if (currentDownloads.get(i).state == 0) {
                    restartService();
                    return;
                }
            }
        }

        public boolean updateScheduler() {
            boolean zIsWaitingForRequirements = this.downloadManager.isWaitingForRequirements();
            if (this.scheduler == null) {
                return !zIsWaitingForRequirements;
            }
            if (!zIsWaitingForRequirements) {
                cancelScheduler();
                return true;
            }
            com.google.android.exoplayer2.scheduler.Requirements requirements = this.downloadManager.getRequirements();
            if (!this.scheduler.getSupportedRequirements(requirements).equals(requirements)) {
                cancelScheduler();
                return false;
            }
            if (!schedulerNeedsUpdate(requirements)) {
                return true;
            }
            if (this.scheduler.schedule(requirements, this.context.getPackageName(), com.google.android.exoplayer2.offline.DownloadService.ACTION_RESTART)) {
                this.scheduledRequirements = requirements;
                return true;
            }
            com.google.android.exoplayer2.util.Log.w(com.google.android.exoplayer2.offline.DownloadService.TAG, "Failed to schedule restart");
            cancelScheduler();
            return false;
        }
    }

    public final class ForegroundNotificationUpdater {
        public final android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        public boolean notificationDisplayed;
        public final int notificationId;
        public boolean periodicUpdatesStarted;
        public final long updateInterval;

        public ForegroundNotificationUpdater(int i, long j) {
            this.notificationId = i;
            this.updateInterval = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void update() {
            com.google.android.exoplayer2.offline.DownloadManager downloadManager = ((com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.offline.DownloadService.this.downloadManagerHelper)).downloadManager;
            android.app.Notification foregroundNotification = com.google.android.exoplayer2.offline.DownloadService.this.getForegroundNotification(downloadManager.getCurrentDownloads(), downloadManager.getNotMetRequirements());
            if (this.notificationDisplayed) {
                ((android.app.NotificationManager) com.google.android.exoplayer2.offline.DownloadService.this.getSystemService("notification")).notify(this.notificationId, foregroundNotification);
            } else {
                com.google.android.exoplayer2.offline.DownloadService.this.startForeground(this.notificationId, foregroundNotification);
                this.notificationDisplayed = true;
            }
            if (this.periodicUpdatesStarted) {
                this.handler.removeCallbacksAndMessages(null);
                this.handler.postDelayed(new java.lang.Runnable() { // from class: e.c.a.a.l2.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.update();
                    }
                }, this.updateInterval);
            }
        }

        public void invalidate() {
            if (this.notificationDisplayed) {
                update();
            }
        }

        public void showNotificationIfNotAlready() {
            if (this.notificationDisplayed) {
                return;
            }
            update();
        }

        public void startPeriodicUpdates() {
            this.periodicUpdatesStarted = true;
            update();
        }

        public void stopPeriodicUpdates() {
            this.periodicUpdatesStarted = false;
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    public DownloadService(int i) {
        this(i, 1000L);
    }

    public DownloadService(int i, long j) {
        this(i, j, null, 0, 0);
    }

    @java.lang.Deprecated
    public DownloadService(int i, long j, java.lang.String str, int i2) {
        this(i, j, str, i2, 0);
    }

    public DownloadService(int i, long j, java.lang.String str, int i2, int i3) {
        if (i == 0) {
            this.foregroundNotificationUpdater = null;
            this.channelId = null;
            this.channelNameResourceId = 0;
            this.channelDescriptionResourceId = 0;
            return;
        }
        this.foregroundNotificationUpdater = new com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater(i, j);
        this.channelId = str;
        this.channelNameResourceId = i2;
        this.channelDescriptionResourceId = i3;
    }

    public static android.content.Intent buildAddDownloadIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i, boolean z) {
        return getIntent(context, cls, ACTION_ADD_DOWNLOAD, z).putExtra(KEY_DOWNLOAD_REQUEST, downloadRequest).putExtra("stop_reason", i);
    }

    public static android.content.Intent buildAddDownloadIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, boolean z) {
        return buildAddDownloadIntent(context, cls, downloadRequest, 0, z);
    }

    public static android.content.Intent buildPauseDownloadsIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_PAUSE_DOWNLOADS, z);
    }

    public static android.content.Intent buildRemoveAllDownloadsIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_ALL_DOWNLOADS, z);
    }

    public static android.content.Intent buildRemoveDownloadIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str, boolean z) {
        return getIntent(context, cls, ACTION_REMOVE_DOWNLOAD, z).putExtra(KEY_CONTENT_ID, str);
    }

    public static android.content.Intent buildResumeDownloadsIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        return getIntent(context, cls, ACTION_RESUME_DOWNLOADS, z);
    }

    public static android.content.Intent buildSetRequirementsIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.scheduler.Requirements requirements, boolean z) {
        return getIntent(context, cls, ACTION_SET_REQUIREMENTS, z).putExtra("requirements", requirements);
    }

    public static android.content.Intent buildSetStopReasonIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str, int i, boolean z) {
        return getIntent(context, cls, ACTION_SET_STOP_REASON, z).putExtra(KEY_CONTENT_ID, str).putExtra("stop_reason", i);
    }

    public static android.content.Intent getIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str) {
        return new android.content.Intent(context, cls).setAction(str);
    }

    public static android.content.Intent getIntent(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str, boolean z) {
        return getIntent(context, cls, str).putExtra(KEY_FOREGROUND, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStopped() {
        return this.isStopped;
    }

    public static boolean needsStartedService(int i) {
        return i == 2 || i == 5 || i == 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadChanged(com.google.android.exoplayer2.offline.Download download) {
        if (this.foregroundNotificationUpdater != null) {
            if (needsStartedService(download.state)) {
                this.foregroundNotificationUpdater.startPeriodicUpdates();
            } else {
                this.foregroundNotificationUpdater.invalidate();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloadRemoved() {
        com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDownloads(java.util.List<com.google.android.exoplayer2.offline.Download> list) {
        if (this.foregroundNotificationUpdater != null) {
            for (int i = 0; i < list.size(); i++) {
                if (needsStartedService(list.get(i).state)) {
                    this.foregroundNotificationUpdater.startPeriodicUpdates();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onIdle() {
        boolean zStopSelfResult;
        com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
        if (((com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.downloadManagerHelper)).updateScheduler()) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 28 || !this.taskRemoved) {
                zStopSelfResult = this.isStopped | stopSelfResult(this.lastStartId);
            } else {
                stopSelf();
                zStopSelfResult = true;
            }
            this.isStopped = zStopSelfResult;
        }
    }

    public static void sendAddDownload(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, int i, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, i, z), z);
    }

    public static void sendAddDownload(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, boolean z) {
        startService(context, buildAddDownloadIntent(context, cls, downloadRequest, z), z);
    }

    public static void sendPauseDownloads(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        startService(context, buildPauseDownloadsIntent(context, cls, z), z);
    }

    public static void sendRemoveAllDownloads(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        startService(context, buildRemoveAllDownloadsIntent(context, cls, z), z);
    }

    public static void sendRemoveDownload(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str, boolean z) {
        startService(context, buildRemoveDownloadIntent(context, cls, str, z), z);
    }

    public static void sendResumeDownloads(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, boolean z) {
        startService(context, buildResumeDownloadsIntent(context, cls, z), z);
    }

    public static void sendSetRequirements(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, com.google.android.exoplayer2.scheduler.Requirements requirements, boolean z) {
        startService(context, buildSetRequirementsIntent(context, cls, requirements, z), z);
    }

    public static void sendSetStopReason(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls, java.lang.String str, int i, boolean z) {
        startService(context, buildSetStopReasonIntent(context, cls, str, i, z), z);
    }

    public static void start(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls) {
        context.startService(getIntent(context, cls, ACTION_INIT));
    }

    public static void startForeground(android.content.Context context, java.lang.Class<? extends com.google.android.exoplayer2.offline.DownloadService> cls) {
        com.google.android.exoplayer2.util.Util.startForegroundService(context, getIntent(context, cls, ACTION_INIT, true));
    }

    public static void startService(android.content.Context context, android.content.Intent intent, boolean z) {
        if (z) {
            com.google.android.exoplayer2.util.Util.startForegroundService(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public abstract com.google.android.exoplayer2.offline.DownloadManager getDownloadManager();

    public abstract android.app.Notification getForegroundNotification(java.util.List<com.google.android.exoplayer2.offline.Download> list, int i);

    public abstract com.google.android.exoplayer2.scheduler.Scheduler getScheduler();

    public final void invalidateForegroundNotification() {
        com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater == null || this.isDestroyed) {
            return;
        }
        foregroundNotificationUpdater.invalidate();
    }

    @Override // android.app.Service
    public final android.os.IBinder onBind(android.content.Intent intent) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        java.lang.String str = this.channelId;
        if (str != null) {
            com.google.android.exoplayer2.util.NotificationUtil.createNotificationChannel(this, str, this.channelNameResourceId, this.channelDescriptionResourceId, 2);
        }
        java.lang.Class<com.google.android.exoplayer2.offline.DownloadService> cls = com.google.android.exoplayer2.offline.DownloadService.class;
        com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper downloadManagerHelper = downloadManagerHelpers.get(com.google.android.exoplayer2.offline.DownloadService.class);
        if (downloadManagerHelper == null) {
            boolean z = this.foregroundNotificationUpdater != null;
            com.google.android.exoplayer2.scheduler.Scheduler scheduler = (z && (com.google.android.exoplayer2.util.Util.SDK_INT < 31)) ? getScheduler() : null;
            com.google.android.exoplayer2.offline.DownloadManager downloadManager = getDownloadManager();
            downloadManager.resumeDownloads();
            downloadManagerHelper = new com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper(getApplicationContext(), downloadManager, z, scheduler, cls);
            downloadManagerHelpers.put(com.google.android.exoplayer2.offline.DownloadService.class, downloadManagerHelper);
        }
        this.downloadManagerHelper = downloadManagerHelper;
        downloadManagerHelper.attachService(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.isDestroyed = true;
        ((com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.downloadManagerHelper)).detachService(this);
        com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater = this.foregroundNotificationUpdater;
        if (foregroundNotificationUpdater != null) {
            foregroundNotificationUpdater.stopPeriodicUpdates();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        java.lang.String action;
        java.lang.String stringExtra;
        com.google.android.exoplayer2.offline.DownloadManager downloadManager;
        com.google.android.exoplayer2.offline.DownloadService.ForegroundNotificationUpdater foregroundNotificationUpdater;
        java.lang.String strConcat;
        this.lastStartId = i2;
        this.taskRemoved = false;
        action = null;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra(KEY_CONTENT_ID);
            this.startedInForeground |= intent.getBooleanExtra(KEY_FOREGROUND, false) || ACTION_RESTART.equals(action);
        } else {
            stringExtra = null;
        }
        if (action == null) {
            action = ACTION_INIT;
        }
        downloadManager = ((com.google.android.exoplayer2.offline.DownloadService.DownloadManagerHelper) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.downloadManagerHelper)).downloadManager;
        switch (action) {
            case "com.google.android.exoplayer.downloadService.action.INIT":
            case "com.google.android.exoplayer.downloadService.action.RESTART":
                break;
            case "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD":
                com.google.android.exoplayer2.offline.DownloadRequest downloadRequest = (com.google.android.exoplayer2.offline.DownloadRequest) ((android.content.Intent) com.google.android.exoplayer2.util.Assertions.checkNotNull(intent)).getParcelableExtra(KEY_DOWNLOAD_REQUEST);
                if (downloadRequest != null) {
                    downloadManager.addDownload(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    strConcat = "Ignored ADD_DOWNLOAD: Missing download_request extra";
                    com.google.android.exoplayer2.util.Log.e(TAG, strConcat);
                    break;
                }
            case "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD":
                if (stringExtra != null) {
                    downloadManager.removeDownload(stringExtra);
                    break;
                } else {
                    strConcat = "Ignored REMOVE_DOWNLOAD: Missing content_id extra";
                    com.google.android.exoplayer2.util.Log.e(TAG, strConcat);
                    break;
                }
            case "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS":
                downloadManager.removeAllDownloads();
                break;
            case "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS":
                downloadManager.resumeDownloads();
                break;
            case "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS":
                downloadManager.pauseDownloads();
                break;
            case "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON":
                if (!((android.content.Intent) com.google.android.exoplayer2.util.Assertions.checkNotNull(intent)).hasExtra("stop_reason")) {
                    strConcat = "Ignored SET_STOP_REASON: Missing stop_reason extra";
                    com.google.android.exoplayer2.util.Log.e(TAG, strConcat);
                    break;
                } else {
                    downloadManager.setStopReason(stringExtra, intent.getIntExtra("stop_reason", 0));
                    break;
                }
            case "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS":
                com.google.android.exoplayer2.scheduler.Requirements requirements = (com.google.android.exoplayer2.scheduler.Requirements) ((android.content.Intent) com.google.android.exoplayer2.util.Assertions.checkNotNull(intent)).getParcelableExtra("requirements");
                if (requirements != null) {
                    downloadManager.setRequirements(requirements);
                    break;
                } else {
                    strConcat = "Ignored SET_REQUIREMENTS: Missing requirements extra";
                    com.google.android.exoplayer2.util.Log.e(TAG, strConcat);
                    break;
                }
            default:
                strConcat = action.length() != 0 ? "Ignored unrecognized action: ".concat(action) : new java.lang.String("Ignored unrecognized action: ");
                com.google.android.exoplayer2.util.Log.e(TAG, strConcat);
                break;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 26 && this.startedInForeground && (foregroundNotificationUpdater = this.foregroundNotificationUpdater) != null) {
            foregroundNotificationUpdater.showNotificationIfNotAlready();
        }
        this.isStopped = false;
        if (downloadManager.isIdle()) {
            onIdle();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(android.content.Intent intent) {
        this.taskRemoved = true;
    }
}
