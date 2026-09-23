package d.b.q;

/* loaded from: classes.dex */
public class o {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f1809c = {android.R.attr.indeterminateDrawable, android.R.attr.progressDrawable};
    public final android.widget.ProgressBar a;
    public android.graphics.Bitmap b;

    public o(android.widget.ProgressBar progressBar) {
        this.a = progressBar;
    }

    public void a(android.util.AttributeSet attributeSet, int i) {
        d.b.q.v0 v0VarO = d.b.q.v0.o(this.a.getContext(), attributeSet, f1809c, i, 0);
        android.graphics.drawable.Drawable drawableF = v0VarO.f(0);
        if (drawableF != null) {
            android.widget.ProgressBar progressBar = this.a;
            if (drawableF instanceof android.graphics.drawable.AnimationDrawable) {
                android.graphics.drawable.AnimationDrawable animationDrawable = (android.graphics.drawable.AnimationDrawable) drawableF;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                android.graphics.drawable.AnimationDrawable animationDrawable2 = new android.graphics.drawable.AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i2 = 0; i2 < numberOfFrames; i2++) {
                    android.graphics.drawable.Drawable drawableB = b(animationDrawable.getFrame(i2), true);
                    drawableB.setLevel(10000);
                    animationDrawable2.addFrame(drawableB, animationDrawable.getDuration(i2));
                }
                animationDrawable2.setLevel(10000);
                drawableF = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(drawableF);
        }
        android.graphics.drawable.Drawable drawableF2 = v0VarO.f(1);
        if (drawableF2 != null) {
            this.a.setProgressDrawable(b(drawableF2, false));
        }
        v0VarO.b.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final android.graphics.drawable.Drawable b(android.graphics.drawable.Drawable drawable, boolean z) {
        if (drawable instanceof d.g.g.l.b) {
            d.g.g.l.b bVar = (d.g.g.l.b) drawable;
            android.graphics.drawable.Drawable drawableB = bVar.b();
            if (drawableB != null) {
                bVar.a(b(drawableB, z));
            }
        } else {
            if (drawable instanceof android.graphics.drawable.LayerDrawable) {
                android.graphics.drawable.LayerDrawable layerDrawable = (android.graphics.drawable.LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                android.graphics.drawable.Drawable[] drawableArr = new android.graphics.drawable.Drawable[numberOfLayers];
                for (int i = 0; i < numberOfLayers; i++) {
                    int id = layerDrawable.getId(i);
                    drawableArr[i] = b(layerDrawable.getDrawable(i), id == 16908301 || id == 16908303);
                }
                android.graphics.drawable.LayerDrawable layerDrawable2 = new android.graphics.drawable.LayerDrawable(drawableArr);
                for (int i2 = 0; i2 < numberOfLayers; i2++) {
                    layerDrawable2.setId(i2, layerDrawable.getId(i2));
                }
                return layerDrawable2;
            }
            if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
                android.graphics.drawable.BitmapDrawable bitmapDrawable = (android.graphics.drawable.BitmapDrawable) drawable;
                android.graphics.Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.b == null) {
                    this.b = bitmap;
                }
                android.graphics.drawable.ShapeDrawable shapeDrawable = new android.graphics.drawable.ShapeDrawable(new android.graphics.drawable.shapes.RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new android.graphics.BitmapShader(bitmap, android.graphics.Shader.TileMode.REPEAT, android.graphics.Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z ? new android.graphics.drawable.ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
