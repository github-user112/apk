package com.tencent.tinker.lib.service;

/* loaded from: classes.dex */
public class TinkerPatchForeService extends android.app.Service {
    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        return new com.tencent.tinker.lib.IForeService.Stub() { // from class: com.tencent.tinker.lib.service.TinkerPatchForeService.1
            @Override // com.tencent.tinker.lib.IForeService
            public void startme() {
            }
        };
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        return 2;
    }
}
