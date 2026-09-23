package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public final class ActionFileUpgradeUtil {

    public interface DownloadIdProvider {
        java.lang.String getId(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest);
    }

    public static void mergeRequest(com.google.android.exoplayer2.offline.DownloadRequest downloadRequest, com.google.android.exoplayer2.offline.DefaultDownloadIndex defaultDownloadIndex, boolean z, long j) throws android.database.SQLException, com.google.android.exoplayer2.database.DatabaseIOException {
        com.google.android.exoplayer2.offline.Download download;
        com.google.android.exoplayer2.offline.Download download2 = defaultDownloadIndex.getDownload(downloadRequest.id);
        if (download2 != null) {
            download = com.google.android.exoplayer2.offline.DownloadManager.mergeRequest(download2, downloadRequest, download2.stopReason, j);
        } else {
            download = new com.google.android.exoplayer2.offline.Download(downloadRequest, z ? 3 : 0, j, j, -1L, 0, 0);
        }
        defaultDownloadIndex.putDownload(download);
    }

    public static void upgradeAndDelete(java.io.File file, com.google.android.exoplayer2.offline.ActionFileUpgradeUtil.DownloadIdProvider downloadIdProvider, com.google.android.exoplayer2.offline.DefaultDownloadIndex defaultDownloadIndex, boolean z, boolean z2) {
        com.google.android.exoplayer2.offline.ActionFile actionFile = new com.google.android.exoplayer2.offline.ActionFile(file);
        if (actionFile.exists()) {
            try {
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                for (com.google.android.exoplayer2.offline.DownloadRequest downloadRequestCopyWithId : actionFile.load()) {
                    if (downloadIdProvider != null) {
                        downloadRequestCopyWithId = downloadRequestCopyWithId.copyWithId(downloadIdProvider.getId(downloadRequestCopyWithId));
                    }
                    mergeRequest(downloadRequestCopyWithId, defaultDownloadIndex, z2, jCurrentTimeMillis);
                }
                actionFile.delete();
            } catch (java.lang.Throwable th) {
                if (z) {
                    actionFile.delete();
                }
                throw th;
            }
        }
    }
}
