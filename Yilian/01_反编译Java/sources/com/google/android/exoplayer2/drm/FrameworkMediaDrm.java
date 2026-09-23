package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public final class FrameworkMediaDrm implements com.google.android.exoplayer2.drm.ExoMediaDrm {
    public static final java.lang.String CENC_SCHEME_MIME_TYPE = "cenc";
    public static final com.google.android.exoplayer2.drm.ExoMediaDrm.Provider DEFAULT_PROVIDER = new com.google.android.exoplayer2.drm.ExoMediaDrm.Provider() { // from class: e.c.a.a.h2.n
        @Override // com.google.android.exoplayer2.drm.ExoMediaDrm.Provider
        public final com.google.android.exoplayer2.drm.ExoMediaDrm acquireExoMediaDrm(java.util.UUID uuid) {
            return com.google.android.exoplayer2.drm.FrameworkMediaDrm.d(uuid);
        }
    };
    public static final java.lang.String MOCK_LA_URL = "<LA_URL>https://x</LA_URL>";
    public static final java.lang.String MOCK_LA_URL_VALUE = "https://x";
    public static final java.lang.String TAG = "FrameworkMediaDrm";
    public static final int UTF_16_BYTES_PER_CHARACTER = 2;
    public final android.media.MediaDrm mediaDrm;
    public int referenceCount;
    public final java.util.UUID uuid;

    public static class Api31 {
        public static boolean requiresSecureDecoder(android.media.MediaDrm mediaDrm, java.lang.String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }
    }

    public FrameworkMediaDrm(java.util.UUID uuid) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(uuid);
        com.google.android.exoplayer2.util.Assertions.checkArgument(!com.google.android.exoplayer2.C.COMMON_PSSH_UUID.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.uuid = uuid;
        this.mediaDrm = new android.media.MediaDrm(adjustUuid(uuid));
        this.referenceCount = 1;
        if (com.google.android.exoplayer2.C.WIDEVINE_UUID.equals(uuid) && needsForceWidevineL3Workaround()) {
            forceWidevineL3(this.mediaDrm);
        }
    }

    public static byte[] addLaUrlAttributeIfMissing(byte[] bArr) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr);
        int littleEndianInt = parsableByteArray.readLittleEndianInt();
        short littleEndianShort = parsableByteArray.readLittleEndianShort();
        short littleEndianShort2 = parsableByteArray.readLittleEndianShort();
        if (littleEndianShort != 1 || littleEndianShort2 != 1) {
            com.google.android.exoplayer2.util.Log.i(TAG, "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        java.lang.String string = parsableByteArray.readString(parsableByteArray.readLittleEndianShort(), e.c.b.a.c.f2668d);
        if (string.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = string.indexOf("</DATA>");
        if (iIndexOf == -1) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        java.lang.String strSubstring = string.substring(0, iIndexOf);
        java.lang.String strSubstring2 = string.substring(iIndexOf);
        java.lang.String strG = e.a.c.a.a.G(e.a.c.a.a.m(strSubstring2, e.a.c.a.a.m(strSubstring, 26)), strSubstring, MOCK_LA_URL, strSubstring2);
        int i = littleEndianInt + 52;
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(i);
        byteBufferAllocate.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.putShort(littleEndianShort);
        byteBufferAllocate.putShort(littleEndianShort2);
        byteBufferAllocate.putShort((short) (strG.length() * 2));
        byteBufferAllocate.put(strG.getBytes(e.c.b.a.c.f2668d));
        return byteBufferAllocate.array();
    }

    public static byte[] adjustRequestData(java.util.UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(uuid) ? com.google.android.exoplayer2.drm.ClearKeyUtil.adjustRequestData(bArr) : bArr;
    }

    public static byte[] adjustRequestInitData(java.util.UUID uuid, byte[] bArr) {
        byte[] schemeSpecificData;
        if (com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(uuid)) {
            byte[] schemeSpecificData2 = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.parseSchemeSpecificData(bArr, uuid);
            if (schemeSpecificData2 != null) {
                bArr = schemeSpecificData2;
            }
            bArr = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.buildPsshAtom(com.google.android.exoplayer2.C.PLAYREADY_UUID, addLaUrlAttributeIfMissing(bArr));
        }
        return (((com.google.android.exoplayer2.util.Util.SDK_INT >= 23 || !com.google.android.exoplayer2.C.WIDEVINE_UUID.equals(uuid)) && !(com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(uuid) && "Amazon".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && ("AFTB".equals(com.google.android.exoplayer2.util.Util.MODEL) || "AFTS".equals(com.google.android.exoplayer2.util.Util.MODEL) || "AFTM".equals(com.google.android.exoplayer2.util.Util.MODEL) || "AFTT".equals(com.google.android.exoplayer2.util.Util.MODEL)))) || (schemeSpecificData = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.parseSchemeSpecificData(bArr, uuid)) == null) ? bArr : schemeSpecificData;
    }

    public static java.lang.String adjustRequestMimeType(java.util.UUID uuid, java.lang.String str) {
        return (com.google.android.exoplayer2.util.Util.SDK_INT < 26 && com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(uuid) && (com.google.android.exoplayer2.util.MimeTypes.VIDEO_MP4.equals(str) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_MP4.equals(str))) ? "cenc" : str;
    }

    public static java.util.UUID adjustUuid(java.util.UUID uuid) {
        return (com.google.android.exoplayer2.util.Util.SDK_INT >= 27 || !com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(uuid)) ? uuid : com.google.android.exoplayer2.C.COMMON_PSSH_UUID;
    }

    public static /* synthetic */ com.google.android.exoplayer2.drm.ExoMediaDrm d(java.util.UUID uuid) {
        try {
            return newInstance(uuid);
        } catch (com.google.android.exoplayer2.drm.UnsupportedDrmException unused) {
            java.lang.String strValueOf = java.lang.String.valueOf(uuid);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 53);
            sb.append("Failed to instantiate a FrameworkMediaDrm for uuid: ");
            sb.append(strValueOf);
            sb.append(".");
            com.google.android.exoplayer2.util.Log.e(TAG, sb.toString());
            return new com.google.android.exoplayer2.drm.DummyExoMediaDrm();
        }
    }

    @android.annotation.SuppressLint({"WrongConstant"})
    public static void forceWidevineL3(android.media.MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    public static com.google.android.exoplayer2.drm.DrmInitData.SchemeData getSchemeData(java.util.UUID uuid, java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> list) {
        boolean z;
        if (com.google.android.exoplayer2.C.WIDEVINE_UUID.equals(uuid)) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 28 && list.size() > 1) {
                com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData = list.get(0);
                int length = 0;
                for (int i = 0; i < list.size(); i++) {
                    com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData2 = list.get(i);
                    byte[] bArr = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(schemeData2.data);
                    if (!com.google.android.exoplayer2.util.Util.areEqual(schemeData2.mimeType, schemeData.mimeType) || !com.google.android.exoplayer2.util.Util.areEqual(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.isPsshAtom(bArr)) {
                        z = false;
                        break;
                    }
                    length += bArr.length;
                }
                z = true;
                if (z) {
                    byte[] bArr2 = new byte[length];
                    int i2 = 0;
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(list.get(i3).data);
                        int length2 = bArr3.length;
                        java.lang.System.arraycopy(bArr3, 0, bArr2, i2, length2);
                        i2 += length2;
                    }
                    return schemeData.copyWithData(bArr2);
                }
            }
            for (int i4 = 0; i4 < list.size(); i4++) {
                com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData3 = list.get(i4);
                int version = com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil.parseVersion((byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(schemeData3.data));
                if (com.google.android.exoplayer2.util.Util.SDK_INT < 23 && version == 0) {
                    return schemeData3;
                }
                if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23 && version == 1) {
                    return schemeData3;
                }
            }
        }
        return list.get(0);
    }

    public static boolean isCryptoSchemeSupported(java.util.UUID uuid) {
        return android.media.MediaDrm.isCryptoSchemeSupported(adjustUuid(uuid));
    }

    public static boolean needsForceWidevineL3Workaround() {
        return "ASUS_Z00AD".equals(com.google.android.exoplayer2.util.Util.MODEL);
    }

    public static com.google.android.exoplayer2.drm.FrameworkMediaDrm newInstance(java.util.UUID uuid) throws com.google.android.exoplayer2.drm.UnsupportedDrmException {
        try {
            return new com.google.android.exoplayer2.drm.FrameworkMediaDrm(uuid);
        } catch (android.media.UnsupportedSchemeException e2) {
            throw new com.google.android.exoplayer2.drm.UnsupportedDrmException(1, e2);
        } catch (java.lang.Exception e3) {
            throw new com.google.android.exoplayer2.drm.UnsupportedDrmException(2, e3);
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener onEventListener, android.media.MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
        onEventListener.onEvent(this, bArr, i, i2, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public synchronized void acquire() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.referenceCount > 0);
        this.referenceCount++;
    }

    public /* synthetic */ void b(com.google.android.exoplayer2.drm.ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener, android.media.MediaDrm mediaDrm, byte[] bArr, long j) {
        onExpirationUpdateListener.onExpirationUpdate(this, bArr, j);
    }

    public /* synthetic */ void c(com.google.android.exoplayer2.drm.ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener, android.media.MediaDrm mediaDrm, byte[] bArr, java.util.List list, boolean z) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            android.media.MediaDrm.KeyStatus keyStatus = (android.media.MediaDrm.KeyStatus) it.next();
            arrayList.add(new com.google.android.exoplayer2.drm.ExoMediaDrm.KeyStatus(keyStatus.getStatusCode(), keyStatus.getKeyId()));
        }
        onKeyStatusChangeListener.onKeyStatusChange(this, bArr, arrayList, z);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void closeSession(byte[] bArr) {
        this.mediaDrm.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public com.google.android.exoplayer2.drm.FrameworkCryptoConfig createCryptoConfig(byte[] bArr) {
        return new com.google.android.exoplayer2.drm.FrameworkCryptoConfig(adjustUuid(this.uuid), bArr, com.google.android.exoplayer2.util.Util.SDK_INT < 21 && com.google.android.exoplayer2.C.WIDEVINE_UUID.equals(this.uuid) && "L3".equals(getPropertyString("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public int getCryptoType() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    @android.annotation.SuppressLint({"WrongConstant"})
    public com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest getKeyRequest(byte[] bArr, java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> list, int i, java.util.HashMap<java.lang.String, java.lang.String> map) throws android.media.NotProvisionedException {
        byte[] bArrAdjustRequestInitData;
        java.lang.String strAdjustRequestMimeType;
        com.google.android.exoplayer2.drm.DrmInitData.SchemeData schemeData = null;
        if (list != null) {
            schemeData = getSchemeData(this.uuid, list);
            bArrAdjustRequestInitData = adjustRequestInitData(this.uuid, (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(schemeData.data));
            strAdjustRequestMimeType = adjustRequestMimeType(this.uuid, schemeData.mimeType);
        } else {
            bArrAdjustRequestInitData = null;
            strAdjustRequestMimeType = null;
        }
        android.media.MediaDrm.KeyRequest keyRequest = this.mediaDrm.getKeyRequest(bArr, bArrAdjustRequestInitData, strAdjustRequestMimeType, i, map);
        byte[] bArrAdjustRequestData = adjustRequestData(this.uuid, keyRequest.getData());
        java.lang.String defaultUrl = keyRequest.getDefaultUrl();
        if (MOCK_LA_URL_VALUE.equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (android.text.TextUtils.isEmpty(defaultUrl) && schemeData != null && !android.text.TextUtils.isEmpty(schemeData.licenseServerUrl)) {
            defaultUrl = schemeData.licenseServerUrl;
        }
        return new com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest(bArrAdjustRequestData, defaultUrl, com.google.android.exoplayer2.util.Util.SDK_INT >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public android.os.PersistableBundle getMetrics() {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 28) {
            return null;
        }
        return this.mediaDrm.getMetrics();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] getPropertyByteArray(java.lang.String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public java.lang.String getPropertyString(java.lang.String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        android.media.MediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
        return new com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] openSession() {
        return this.mediaDrm.openSession();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) throws org.json.JSONException {
        if (com.google.android.exoplayer2.C.CLEARKEY_UUID.equals(this.uuid)) {
            bArr2 = com.google.android.exoplayer2.drm.ClearKeyUtil.adjustResponseData(bArr2);
        }
        return this.mediaDrm.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void provideProvisionResponse(byte[] bArr) throws android.media.DeniedByServerException {
        this.mediaDrm.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public java.util.Map<java.lang.String, java.lang.String> queryKeyStatus(byte[] bArr) {
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public synchronized void release() {
        int i = this.referenceCount - 1;
        this.referenceCount = i;
        if (i == 0) {
            this.mediaDrm.release();
        }
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public boolean requiresSecureDecoder(byte[] bArr, java.lang.String str) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 31) {
            return com.google.android.exoplayer2.drm.FrameworkMediaDrm.Api31.requiresSecureDecoder(this.mediaDrm, str);
        }
        try {
            android.media.MediaCrypto mediaCrypto = new android.media.MediaCrypto(this.uuid, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (android.media.MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.mediaDrm.restoreKeys(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnEventListener(final com.google.android.exoplayer2.drm.ExoMediaDrm.OnEventListener onEventListener) {
        this.mediaDrm.setOnEventListener(onEventListener == null ? null : new android.media.MediaDrm.OnEventListener() { // from class: e.c.a.a.h2.q
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(android.media.MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
                this.a.a(onEventListener, mediaDrm, bArr, i, i2, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnExpirationUpdateListener(final com.google.android.exoplayer2.drm.ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 23) {
            throw new java.lang.UnsupportedOperationException();
        }
        this.mediaDrm.setOnExpirationUpdateListener(onExpirationUpdateListener == null ? null : new android.media.MediaDrm.OnExpirationUpdateListener() { // from class: e.c.a.a.h2.p
            @Override // android.media.MediaDrm.OnExpirationUpdateListener
            public final void onExpirationUpdate(android.media.MediaDrm mediaDrm, byte[] bArr, long j) {
                this.a.b(onExpirationUpdateListener, mediaDrm, bArr, j);
            }
        }, (android.os.Handler) null);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnKeyStatusChangeListener(final com.google.android.exoplayer2.drm.ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 23) {
            throw new java.lang.UnsupportedOperationException();
        }
        this.mediaDrm.setOnKeyStatusChangeListener(onKeyStatusChangeListener == null ? null : new android.media.MediaDrm.OnKeyStatusChangeListener() { // from class: e.c.a.a.h2.o
            @Override // android.media.MediaDrm.OnKeyStatusChangeListener
            public final void onKeyStatusChange(android.media.MediaDrm mediaDrm, byte[] bArr, java.util.List list, boolean z) {
                this.a.c(onKeyStatusChangeListener, mediaDrm, bArr, list, z);
            }
        }, (android.os.Handler) null);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setPropertyByteArray(java.lang.String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setPropertyString(java.lang.String str, java.lang.String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }
}
