package androidx.core.app;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static androidx.core.app.RemoteActionCompat read(d.u.a aVar) {
        androidx.core.app.RemoteActionCompat remoteActionCompat = new androidx.core.app.RemoteActionCompat();
        d.u.c cVarK = remoteActionCompat.a;
        if (aVar.h(1)) {
            cVarK = aVar.k();
        }
        remoteActionCompat.a = (androidx.core.graphics.drawable.IconCompat) cVarK;
        remoteActionCompat.b = aVar.g(remoteActionCompat.b, 2);
        remoteActionCompat.f97c = aVar.g(remoteActionCompat.f97c, 3);
        remoteActionCompat.f98d = (android.app.PendingIntent) aVar.j(remoteActionCompat.f98d, 4);
        remoteActionCompat.f99e = aVar.f(remoteActionCompat.f99e, 5);
        remoteActionCompat.f100f = aVar.f(remoteActionCompat.f100f, 6);
        return remoteActionCompat;
    }

    public static void write(androidx.core.app.RemoteActionCompat remoteActionCompat, d.u.a aVar) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (aVar == null) {
            throw null;
        }
        androidx.core.graphics.drawable.IconCompat iconCompat = remoteActionCompat.a;
        aVar.l(1);
        aVar.o(iconCompat);
        java.lang.CharSequence charSequence = remoteActionCompat.b;
        aVar.l(2);
        d.u.b bVar = (d.u.b) aVar;
        android.text.TextUtils.writeToParcel(charSequence, bVar.f2336e, 0);
        java.lang.CharSequence charSequence2 = remoteActionCompat.f97c;
        aVar.l(3);
        android.text.TextUtils.writeToParcel(charSequence2, bVar.f2336e, 0);
        aVar.n(remoteActionCompat.f98d, 4);
        boolean z = remoteActionCompat.f99e;
        aVar.l(5);
        bVar.f2336e.writeInt(z ? 1 : 0);
        boolean z2 = remoteActionCompat.f100f;
        aVar.l(6);
        bVar.f2336e.writeInt(z2 ? 1 : 0);
    }
}
