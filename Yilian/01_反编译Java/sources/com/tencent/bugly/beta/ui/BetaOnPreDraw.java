package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class BetaOnPreDraw implements android.view.ViewTreeObserver.OnPreDrawListener {
    public static final int TYPE_BASE_BTN = 2;
    public static final int TYPE_CONTENT_SCROLL = 3;
    public static final int TYPE_UPGRADE_TITLE = 1;
    public final java.lang.Object[] args;
    public long lastTime;
    public java.lang.StringBuilder loadText = e.a.c.a.a.o("loading");
    public final int type;

    public BetaOnPreDraw(int i, java.lang.Object... objArr) {
        this.type = i;
        this.args = objArr;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        int i;
        int i2;
        try {
            int i3 = this.type;
            if (i3 == 1) {
                com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog = (com.tencent.bugly.beta.ui.UpgradeDialog) this.args[0];
                android.widget.TextView textView = (android.widget.TextView) this.args[1];
                android.graphics.Bitmap bitmap = (android.graphics.Bitmap) this.args[2];
                int iIntValue = ((java.lang.Integer) this.args[3]).intValue();
                int measuredWidth = textView.getMeasuredWidth();
                double d2 = measuredWidth;
                java.lang.Double.isNaN(d2);
                int i4 = (int) (d2 * 0.42857142857142855d);
                textView.setHeight(i4);
                if (upgradeDialog.titleDrawable == null) {
                    upgradeDialog.titleDrawable = iIntValue == 2 ? com.tencent.bugly.beta.global.a.a(bitmap, measuredWidth, i4, com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, 6.0f)) : com.tencent.bugly.beta.global.a.a(bitmap, measuredWidth, i4, com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, 0.0f));
                    if (upgradeDialog.titleDrawable != null) {
                        textView.setText("");
                        textView.setBackgroundDrawable(upgradeDialog.titleDrawable);
                        textView.getViewTreeObserver().removeOnPreDrawListener(this);
                        return true;
                    }
                }
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                if (jCurrentTimeMillis - this.lastTime <= 300) {
                    return true;
                }
                this.lastTime = jCurrentTimeMillis;
                if (this.loadText.length() > 9) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("loading");
                    this.loadText = sb;
                } else {
                    this.loadText.append(".");
                }
                textView.setText(this.loadText.toString());
                return true;
            }
            if (i3 != 2) {
                if (i3 != 3) {
                    return false;
                }
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.args[0];
                if (viewGroup.getMeasuredHeight() > com.tencent.bugly.beta.global.a.a((android.content.Context) this.args[1], 158.0f)) {
                    android.view.ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    layoutParams.height = com.tencent.bugly.beta.global.a.a((android.content.Context) this.args[1], 200.0f);
                    viewGroup.setLayoutParams(layoutParams);
                }
                return true;
            }
            if (((java.lang.Integer) this.args[2]).intValue() <= 0) {
                return true;
            }
            int iIntValue2 = ((java.lang.Integer) this.args[0]).intValue();
            android.widget.TextView textView2 = (android.widget.TextView) this.args[1];
            int measuredWidth2 = textView2.getMeasuredWidth();
            int measuredHeight = textView2.getMeasuredHeight();
            int i5 = (int) (com.tencent.bugly.beta.global.e.b.E.widthPixels * com.tencent.bugly.beta.global.e.b.E.heightPixels * 0.4f);
            if (measuredWidth2 == 0 || measuredHeight == 0 || measuredWidth2 * measuredHeight > i5) {
                return true;
            }
            this.args[2] = 0;
            android.graphics.Paint paint = new android.graphics.Paint();
            paint.setStyle(android.graphics.Paint.Style.FILL);
            paint.setAntiAlias(true);
            if (iIntValue2 == 2) {
                i = 8;
                i2 = 7;
            } else {
                i = 0;
                i2 = 0;
            }
            paint.setColor(-3355444);
            android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(measuredWidth2, measuredHeight, android.graphics.Bitmap.Config.ARGB_8888);
            android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
            float f2 = measuredWidth2;
            float f3 = measuredHeight;
            android.graphics.RectF rectF = new android.graphics.RectF(0.0f, 0.0f, f2, f3);
            float f4 = i;
            canvas.drawRoundRect(rectF, f4, f4, paint);
            paint.setColor(-1);
            float f5 = i2;
            canvas.drawRoundRect(new android.graphics.RectF(2.0f, 2.0f, f2 - 2.0f, f3 - 2.0f), f5, f5, paint);
            paint.setColor(-3355444);
            android.graphics.Bitmap bitmapCreateBitmap2 = android.graphics.Bitmap.createBitmap(measuredWidth2, measuredHeight, android.graphics.Bitmap.Config.ARGB_8888);
            new android.graphics.Canvas(bitmapCreateBitmap2).drawRoundRect(rectF, f4, f4, paint);
            android.graphics.drawable.BitmapDrawable bitmapDrawable = new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap);
            android.graphics.drawable.BitmapDrawable bitmapDrawable2 = new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap2);
            textView2.setBackgroundDrawable(bitmapDrawable);
            textView2.setOnTouchListener(new com.tencent.bugly.beta.global.c(1, bitmapDrawable2, bitmapDrawable));
            return true;
        } catch (java.lang.Exception e2) {
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
            return false;
        }
    }
}
