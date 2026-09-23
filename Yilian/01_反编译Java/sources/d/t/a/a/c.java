package d.t.a.a;

/* loaded from: classes.dex */
public class c implements android.animation.TypeEvaluator<d.g.g.c[]> {
    public d.g.g.c[] a;

    @Override // android.animation.TypeEvaluator
    public d.g.g.c[] evaluate(float f2, d.g.g.c[] cVarArr, d.g.g.c[] cVarArr2) {
        d.g.g.c[] cVarArr3 = cVarArr;
        d.g.g.c[] cVarArr4 = cVarArr2;
        if (!d.b.k.r.c(cVarArr3, cVarArr4)) {
            throw new java.lang.IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!d.b.k.r.c(this.a, cVarArr3)) {
            this.a = d.b.k.r.r(cVarArr3);
        }
        for (int i = 0; i < cVarArr3.length; i++) {
            d.g.g.c cVar = this.a[i];
            d.g.g.c cVar2 = cVarArr3[i];
            d.g.g.c cVar3 = cVarArr4[i];
            if (cVar == null) {
                throw null;
            }
            cVar.a = cVar2.a;
            int i2 = 0;
            while (true) {
                float[] fArr = cVar2.b;
                if (i2 < fArr.length) {
                    cVar.b[i2] = (cVar3.b[i2] * f2) + ((1.0f - f2) * fArr[i2]);
                    i2++;
                }
            }
        }
        return this.a;
    }
}
