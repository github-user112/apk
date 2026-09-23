package com.google.android.exoplayer2.drm;

/* loaded from: classes.dex */
public interface MediaDrmCallback {
    byte[] executeKeyRequest(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.KeyRequest keyRequest);

    byte[] executeProvisionRequest(java.util.UUID uuid, com.google.android.exoplayer2.drm.ExoMediaDrm.ProvisionRequest provisionRequest);
}
