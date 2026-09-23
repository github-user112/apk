package d.g.j;

/* loaded from: classes.dex */
public class d {
    public static final java.util.Comparator<byte[]> a = new d.g.j.d.a();

    public class a implements java.util.Comparator<byte[]> {
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int length;
            int length2;
            byte[] bArr3 = bArr;
            byte[] bArr4 = bArr2;
            if (bArr3.length == bArr4.length) {
                for (int i = 0; i < bArr3.length; i++) {
                    if (bArr3[i] != bArr4[i]) {
                        length = bArr3[i];
                        length2 = bArr4[i];
                    }
                }
                return 0;
            }
            length = bArr3.length;
            length2 = bArr4.length;
            return length - length2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0092 A[LOOP:1: B:15:0x004d->B:30:0x0092, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0096 A[EDGE_INSN: B:85:0x0096->B:32:0x0096 BREAK  A[LOOP:1: B:15:0x004d->B:30:0x0092], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static d.g.j.g a(android.content.Context r21, d.g.j.e r22, android.os.CancellationSignal r23) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.g.j.d.a(android.content.Context, d.g.j.e, android.os.CancellationSignal):d.g.j.g");
    }
}
