package com.google.android.exoplayer2.ui;

/* loaded from: classes.dex */
public final class DownloadNotificationHelper {
    public static final int NULL_STRING_ID = 0;
    public final d.g.e.h notificationBuilder;

    public DownloadNotificationHelper(android.content.Context context, java.lang.String str) {
        this.notificationBuilder = new d.g.e.h(context.getApplicationContext(), str);
    }

    private android.app.Notification buildEndStateNotification(android.content.Context context, int i, android.app.PendingIntent pendingIntent, java.lang.String str, int i2) {
        return buildNotification(context, i, pendingIntent, str, i2, 0, 0, false, false, true);
    }

    private android.app.Notification buildNotification(android.content.Context context, int i, android.app.PendingIntent pendingIntent, java.lang.String str, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
        d.g.e.h hVar = this.notificationBuilder;
        hVar.x.icon = i;
        d.g.e.g gVar = null;
        hVar.d(i2 == 0 ? null : context.getResources().getString(i2));
        d.g.e.h hVar2 = this.notificationBuilder;
        hVar2.f1933g = pendingIntent;
        if (str != null) {
            gVar = new d.g.e.g();
            gVar.f1928c = d.g.e.h.b(str);
        }
        if (hVar2.k != gVar) {
            hVar2.k = gVar;
            if (gVar != null && gVar.a != hVar2) {
                gVar.a = hVar2;
                hVar2.g(gVar);
            }
        }
        d.g.e.h hVar3 = this.notificationBuilder;
        hVar3.l = i3;
        hVar3.m = i4;
        hVar3.n = z;
        hVar3.e(2, z2);
        d.g.e.h hVar4 = this.notificationBuilder;
        hVar4.j = z3;
        return hVar4.a();
    }

    public android.app.Notification buildDownloadCompletedNotification(android.content.Context context, int i, android.app.PendingIntent pendingIntent, java.lang.String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, com.google.android.exoplayer2.core.R.string.exo_download_completed);
    }

    public android.app.Notification buildDownloadFailedNotification(android.content.Context context, int i, android.app.PendingIntent pendingIntent, java.lang.String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, com.google.android.exoplayer2.core.R.string.exo_download_failed);
    }

    @java.lang.Deprecated
    public android.app.Notification buildProgressNotification(android.content.Context context, int i, android.app.PendingIntent pendingIntent, java.lang.String str, java.util.List<com.google.android.exoplayer2.offline.Download> list) {
        return buildProgressNotification(context, i, pendingIntent, str, list, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification buildProgressNotification(android.content.Context r22, int r23, android.app.PendingIntent r24, java.lang.String r25, java.util.List<com.google.android.exoplayer2.offline.Download> r26, int r27) {
        /*
            r21 = this;
            r0 = 1
            r1 = 0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 1
        La:
            int r10 = r26.size()
            if (r3 >= r10) goto L4a
            r10 = r26
            java.lang.Object r11 = r10.get(r3)
            com.google.android.exoplayer2.offline.Download r11 = (com.google.android.exoplayer2.offline.Download) r11
            int r12 = r11.state
            if (r12 == 0) goto L46
            r13 = 2
            if (r12 == r13) goto L28
            r13 = 5
            if (r12 == r13) goto L26
            r13 = 7
            if (r12 == r13) goto L28
            goto L47
        L26:
            r7 = 1
            goto L47
        L28:
            float r4 = r11.getPercentDownloaded()
            r12 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r12 == 0) goto L34
            float r2 = r2 + r4
            r9 = 0
        L34:
            long r11 = r11.getBytesDownloaded()
            r13 = 0
            int r4 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r4 <= 0) goto L40
            r4 = 1
            goto L41
        L40:
            r4 = 0
        L41:
            r6 = r6 | r4
            int r8 = r8 + 1
            r4 = 1
            goto L47
        L46:
            r5 = 1
        L47:
            int r3 = r3 + 1
            goto La
        L4a:
            if (r4 == 0) goto L51
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_downloading
        L4e:
            r15 = r3
            r3 = 1
            goto L6f
        L51:
            if (r5 == 0) goto L68
            if (r27 == 0) goto L68
            r3 = r27 & 2
            if (r3 == 0) goto L5e
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused_for_wifi
        L5b:
            r15 = r3
            r3 = 0
            goto L6f
        L5e:
            r3 = r27 & 1
            if (r3 == 0) goto L65
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused_for_network
            goto L5b
        L65:
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused
            goto L5b
        L68:
            if (r7 == 0) goto L6d
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_removing
            goto L4e
        L6d:
            r3 = 1
            r15 = 0
        L6f:
            if (r3 == 0) goto L8c
            r3 = 100
            if (r4 == 0) goto L85
            float r4 = (float) r8
            float r2 = r2 / r4
            int r2 = (int) r2
            if (r9 == 0) goto L7d
            if (r6 == 0) goto L7d
            goto L7e
        L7d:
            r0 = 0
        L7e:
            r18 = r0
            r17 = r2
            r16 = 100
            goto L92
        L85:
            r16 = 100
            r17 = 0
            r18 = 1
            goto L92
        L8c:
            r16 = 0
            r17 = 0
            r18 = 0
        L92:
            r19 = 1
            r20 = 0
            r10 = r21
            r11 = r22
            r12 = r23
            r13 = r24
            r14 = r25
            android.app.Notification r0 = r10.buildNotification(r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DownloadNotificationHelper.buildProgressNotification(android.content.Context, int, android.app.PendingIntent, java.lang.String, java.util.List, int):android.app.Notification");
    }
}
