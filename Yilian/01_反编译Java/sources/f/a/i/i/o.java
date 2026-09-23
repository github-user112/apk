package f.a.i.i;

/* loaded from: classes.dex */
public class o extends android.os.Handler {
    public final /* synthetic */ f.a.i.i.q a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(f.a.i.i.q qVar, android.os.Looper looper) {
        super(looper);
        this.a = qVar;
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        this.a.d0(message);
    }
}
