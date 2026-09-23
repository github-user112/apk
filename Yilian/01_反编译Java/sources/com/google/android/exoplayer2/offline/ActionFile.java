package com.google.android.exoplayer2.offline;

@java.lang.Deprecated
/* loaded from: classes.dex */
public final class ActionFile {
    public static final java.lang.String DOWNLOAD_TYPE_DASH = "dash";
    public static final java.lang.String DOWNLOAD_TYPE_HLS = "hls";
    public static final java.lang.String DOWNLOAD_TYPE_PROGRESSIVE = "progressive";
    public static final java.lang.String DOWNLOAD_TYPE_SS = "ss";
    public static final int VERSION = 0;
    public final com.google.android.exoplayer2.util.AtomicFile atomicFile;

    public ActionFile(java.io.File file) {
        this.atomicFile = new com.google.android.exoplayer2.util.AtomicFile(file);
    }

    public static java.lang.String generateDownloadId(android.net.Uri uri, java.lang.String str) {
        return str != null ? str : uri.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String inferMimeType(java.lang.String r4) {
        /*
            int r0 = r4.hashCode()
            r1 = 3680(0xe60, float:5.157E-42)
            r2 = 2
            r3 = 1
            if (r0 == r1) goto L38
            r1 = 103407(0x193ef, float:1.44904E-40)
            if (r0 == r1) goto L2e
            r1 = 3075986(0x2eef92, float:4.310374E-39)
            if (r0 == r1) goto L24
            r1 = 1131547531(0x43720b8b, float:242.04509)
            if (r0 == r1) goto L1a
            goto L42
        L1a:
            java.lang.String r0 = "progressive"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L42
            r4 = 3
            goto L43
        L24:
            java.lang.String r0 = "dash"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L42
            r4 = 0
            goto L43
        L2e:
            java.lang.String r0 = "hls"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L42
            r4 = 1
            goto L43
        L38:
            java.lang.String r0 = "ss"
            boolean r4 = r4.equals(r0)
            if (r4 == 0) goto L42
            r4 = 2
            goto L43
        L42:
            r4 = -1
        L43:
            if (r4 == 0) goto L52
            if (r4 == r3) goto L4f
            if (r4 == r2) goto L4c
            java.lang.String r4 = "video/x-unknown"
            return r4
        L4c:
            java.lang.String r4 = "application/vnd.ms-sstr+xml"
            return r4
        L4f:
            java.lang.String r4 = "application/x-mpegURL"
            return r4
        L52:
            java.lang.String r4 = "application/dash+xml"
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.ActionFile.inferMimeType(java.lang.String):java.lang.String");
    }

    public static com.google.android.exoplayer2.offline.DownloadRequest readDownloadRequest(java.io.DataInputStream dataInputStream) throws java.io.IOException {
        byte[] bArr;
        java.lang.String utf = dataInputStream.readUTF();
        int i = dataInputStream.readInt();
        android.net.Uri uri = android.net.Uri.parse(dataInputStream.readUTF());
        boolean z = dataInputStream.readBoolean();
        int i2 = dataInputStream.readInt();
        java.lang.String utf2 = null;
        if (i2 != 0) {
            bArr = new byte[i2];
            dataInputStream.readFully(bArr);
        } else {
            bArr = null;
        }
        boolean z2 = true;
        boolean z3 = i == 0 && DOWNLOAD_TYPE_PROGRESSIVE.equals(utf);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (!z3) {
            int i3 = dataInputStream.readInt();
            for (int i4 = 0; i4 < i3; i4++) {
                arrayList.add(readKey(utf, i, dataInputStream));
            }
        }
        if (i >= 2 || (!DOWNLOAD_TYPE_DASH.equals(utf) && !DOWNLOAD_TYPE_HLS.equals(utf) && !DOWNLOAD_TYPE_SS.equals(utf))) {
            z2 = false;
        }
        if (!z2 && dataInputStream.readBoolean()) {
            utf2 = dataInputStream.readUTF();
        }
        java.lang.String strGenerateDownloadId = i < 3 ? generateDownloadId(uri, utf2) : dataInputStream.readUTF();
        if (z) {
            throw new com.google.android.exoplayer2.offline.DownloadRequest.UnsupportedRequestException();
        }
        return new com.google.android.exoplayer2.offline.DownloadRequest.Builder(strGenerateDownloadId, uri).setMimeType(inferMimeType(utf)).setStreamKeys(arrayList).setCustomCacheKey(utf2).setData(bArr).build();
    }

    public static com.google.android.exoplayer2.offline.StreamKey readKey(java.lang.String str, int i, java.io.DataInputStream dataInputStream) {
        return new com.google.android.exoplayer2.offline.StreamKey(((DOWNLOAD_TYPE_HLS.equals(str) || DOWNLOAD_TYPE_SS.equals(str)) && i == 0) ? 0 : dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readInt());
    }

    public void delete() {
        this.atomicFile.delete();
    }

    public boolean exists() {
        return this.atomicFile.exists();
    }

    public com.google.android.exoplayer2.offline.DownloadRequest[] load() throws java.io.IOException {
        if (!exists()) {
            return new com.google.android.exoplayer2.offline.DownloadRequest[0];
        }
        try {
            java.io.InputStream inputStreamOpenRead = this.atomicFile.openRead();
            java.io.DataInputStream dataInputStream = new java.io.DataInputStream(inputStreamOpenRead);
            int i = dataInputStream.readInt();
            if (i > 0) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(44);
                sb.append("Unsupported action file version: ");
                sb.append(i);
                throw new java.io.IOException(sb.toString());
            }
            int i2 = dataInputStream.readInt();
            java.util.ArrayList arrayList = new java.util.ArrayList();
            for (int i3 = 0; i3 < i2; i3++) {
                try {
                    arrayList.add(readDownloadRequest(dataInputStream));
                } catch (com.google.android.exoplayer2.offline.DownloadRequest.UnsupportedRequestException unused) {
                }
            }
            com.google.android.exoplayer2.offline.DownloadRequest[] downloadRequestArr = (com.google.android.exoplayer2.offline.DownloadRequest[]) arrayList.toArray(new com.google.android.exoplayer2.offline.DownloadRequest[0]);
            com.google.android.exoplayer2.util.Util.closeQuietly(inputStreamOpenRead);
            return downloadRequestArr;
        } catch (java.lang.Throwable th) {
            com.google.android.exoplayer2.util.Util.closeQuietly(null);
            throw th;
        }
    }
}
