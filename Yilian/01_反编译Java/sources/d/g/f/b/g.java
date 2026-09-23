package d.g.f.b;

/* loaded from: classes.dex */
public final class g {
    public final int[] a;
    public final float[] b;

    public g(int i, int i2) {
        this.a = new int[]{i, i2};
        this.b = new float[]{0.0f, 1.0f};
    }

    public g(int i, int i2, int i3) {
        this.a = new int[]{i, i2, i3};
        this.b = new float[]{0.0f, 0.5f, 1.0f};
    }

    public g(java.util.List<java.lang.Integer> list, java.util.List<java.lang.Float> list2) {
        int size = list.size();
        this.a = new int[size];
        this.b = new float[size];
        for (int i = 0; i < size; i++) {
            this.a[i] = list.get(i).intValue();
            this.b[i] = list2.get(i).floatValue();
        }
    }
}
