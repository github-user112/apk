package d.t.a.a;

/* loaded from: classes.dex */
public class e implements android.view.animation.Interpolator {
    public float[] a;
    public float[] b;

    public e(android.content.Context context, android.util.AttributeSet attributeSet, org.xmlpull.v1.XmlPullParser xmlPullParser) {
        android.content.res.TypedArray typedArrayW = d.b.k.r.W(context.getResources(), context.getTheme(), attributeSet, d.t.a.a.a.l);
        if (d.b.k.r.P(xmlPullParser, "pathData")) {
            java.lang.String strG = d.b.k.r.G(typedArrayW, xmlPullParser, "pathData", 4);
            android.graphics.Path pathQ = d.b.k.r.q(strG);
            if (pathQ == null) {
                throw new android.view.InflateException(e.a.c.a.a.e("The path is null, which is created from ", strG));
            }
            a(pathQ);
        } else {
            if (!d.b.k.r.P(xmlPullParser, "controlX1")) {
                throw new android.view.InflateException("pathInterpolator requires the controlX1 attribute");
            }
            if (!d.b.k.r.P(xmlPullParser, "controlY1")) {
                throw new android.view.InflateException("pathInterpolator requires the controlY1 attribute");
            }
            float fE = d.b.k.r.E(typedArrayW, xmlPullParser, "controlX1", 0, 0.0f);
            float fE2 = d.b.k.r.E(typedArrayW, xmlPullParser, "controlY1", 1, 0.0f);
            boolean zP = d.b.k.r.P(xmlPullParser, "controlX2");
            if (zP != d.b.k.r.P(xmlPullParser, "controlY2")) {
                throw new android.view.InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
            }
            if (zP) {
                float fE3 = d.b.k.r.E(typedArrayW, xmlPullParser, "controlX2", 2, 0.0f);
                float fE4 = d.b.k.r.E(typedArrayW, xmlPullParser, "controlY2", 3, 0.0f);
                android.graphics.Path path = new android.graphics.Path();
                path.moveTo(0.0f, 0.0f);
                path.cubicTo(fE, fE2, fE3, fE4, 1.0f, 1.0f);
                a(path);
            } else {
                android.graphics.Path path2 = new android.graphics.Path();
                path2.moveTo(0.0f, 0.0f);
                path2.quadTo(fE, fE2, 1.0f, 1.0f);
                a(path2);
            }
        }
        typedArrayW.recycle();
    }

    public final void a(android.graphics.Path path) {
        int i = 0;
        android.graphics.PathMeasure pathMeasure = new android.graphics.PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = java.lang.Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new java.lang.IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.a = new float[iMin];
        this.b = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.a[i2] = fArr[0];
            this.b[i2] = fArr[1];
        }
        if (java.lang.Math.abs(this.a[0]) <= 1.0E-5d && java.lang.Math.abs(this.b[0]) <= 1.0E-5d) {
            int i3 = iMin - 1;
            if (java.lang.Math.abs(this.a[i3] - 1.0f) <= 1.0E-5d && java.lang.Math.abs(this.b[i3] - 1.0f) <= 1.0E-5d) {
                float f2 = 0.0f;
                int i4 = 0;
                while (i < iMin) {
                    float[] fArr2 = this.a;
                    int i5 = i4 + 1;
                    float f3 = fArr2[i4];
                    if (f3 < f2) {
                        throw new java.lang.IllegalArgumentException("The Path cannot loop back on itself, x :" + f3);
                    }
                    fArr2[i] = f3;
                    i++;
                    f2 = f3;
                    i4 = i5;
                }
                if (pathMeasure.nextContour()) {
                    throw new java.lang.IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("The Path must start at (0,0) and end at (1,1) start: ");
        sbO.append(this.a[0]);
        sbO.append(",");
        sbO.append(this.b[0]);
        sbO.append(" end:");
        int i6 = iMin - 1;
        sbO.append(this.a[i6]);
        sbO.append(",");
        sbO.append(this.b[i6]);
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f2 < this.a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.a;
        float f3 = fArr[length] - fArr[i];
        if (f3 == 0.0f) {
            return this.b[i];
        }
        float f4 = (f2 - fArr[i]) / f3;
        float[] fArr2 = this.b;
        float f5 = fArr2[i];
        return ((fArr2[length] - f5) * f4) + f5;
    }
}
