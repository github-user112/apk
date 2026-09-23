package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bs {
    public static int a = Integer.MAX_VALUE;

    public static com.umeng.analytics.pro.br a(byte[] bArr, com.umeng.analytics.pro.br brVar) {
        return bArr[0] > 16 ? new com.umeng.analytics.pro.bj.a() : (bArr.length <= 1 || (bArr[1] & 128) == 0) ? brVar : new com.umeng.analytics.pro.bj.a();
    }

    public static void a(int i) {
        a = i;
    }

    public static void a(com.umeng.analytics.pro.bp bpVar, byte b) {
        a(bpVar, b, a);
    }

    public static void a(com.umeng.analytics.pro.bp bpVar, byte b, int i) throws com.umeng.analytics.pro.aw {
        if (i <= 0) {
            throw new com.umeng.analytics.pro.aw("Maximum skip depth exceeded");
        }
        int i2 = 0;
        switch (b) {
            case 2:
                bpVar.t();
                return;
            case 3:
                bpVar.u();
                return;
            case 4:
                bpVar.y();
                return;
            case 5:
            case 7:
            case 9:
            default:
                return;
            case 6:
                bpVar.v();
                return;
            case 8:
                bpVar.w();
                return;
            case 10:
                bpVar.x();
                return;
            case 11:
                bpVar.A();
                return;
            case 12:
                bpVar.j();
                while (true) {
                    byte b2 = bpVar.l().b;
                    if (b2 == 0) {
                        bpVar.k();
                        return;
                    } else {
                        a(bpVar, b2, i - 1);
                        bpVar.m();
                    }
                }
            case 13:
                com.umeng.analytics.pro.bm bmVarN = bpVar.n();
                while (i2 < bmVarN.f1272c) {
                    int i3 = i - 1;
                    a(bpVar, bmVarN.a, i3);
                    a(bpVar, bmVarN.b, i3);
                    i2++;
                }
                bpVar.o();
                return;
            case 14:
                com.umeng.analytics.pro.bt btVarR = bpVar.r();
                while (i2 < btVarR.b) {
                    a(bpVar, btVarR.a, i - 1);
                    i2++;
                }
                bpVar.s();
                return;
            case 15:
                com.umeng.analytics.pro.bl blVarP = bpVar.p();
                while (i2 < blVarP.b) {
                    a(bpVar, blVarP.a, i - 1);
                    i2++;
                }
                bpVar.q();
                return;
        }
    }
}
