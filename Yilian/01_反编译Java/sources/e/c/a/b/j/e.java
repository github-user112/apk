package e.c.a.b.j;

/* loaded from: classes.dex */
public class e extends android.util.Property<android.widget.ImageView, android.graphics.Matrix> {
    public final android.graphics.Matrix a;

    public e() {
        super(android.graphics.Matrix.class, "imageMatrixProperty");
        this.a = new android.graphics.Matrix();
    }

    @Override // android.util.Property
    public android.graphics.Matrix get(android.widget.ImageView imageView) {
        this.a.set(imageView.getImageMatrix());
        return this.a;
    }

    @Override // android.util.Property
    public void set(android.widget.ImageView imageView, android.graphics.Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
