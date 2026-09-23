package f.a.i.i;

/* loaded from: classes.dex */
public class p extends android.os.Handler {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f.a.i.i.q f2897c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(f.a.i.i.q qVar, android.os.Looper looper) {
        super(looper);
        this.f2897c = qVar;
        this.a = 0;
        this.b = 3;
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        long j;
        e.a.c.a.a.A(e.a.c.a.a.o("sdkHandlerForNonProcess msg.what = "), message.what);
        if (message.what != 25) {
            return;
        }
        int i = this.a;
        this.a = i + 1;
        if (i >= this.b) {
            this.a = 0;
            j = 300000;
        } else {
            f.a.i.i.q qVar = this.f2897c;
            if (qVar == null) {
                throw null;
            }
            net.easyconn.ecsdk.ECTypes.ECGPSInfo eCGPSInfoQueryGPS = net.easyconn.ecsdk.ECSDK.getInstance().queryGPS();
            android.content.Context context = qVar.a;
            if (context != null) {
                ((net.easyconn.framework.sdkservice.EasyConnectService) context).f3176f.sendGPSBroadcast(eCGPSInfoQueryGPS);
            }
            j = 2000;
        }
        sendEmptyMessageDelayed(25, j);
    }
}
