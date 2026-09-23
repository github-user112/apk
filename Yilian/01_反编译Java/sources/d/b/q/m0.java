package d.b.q;

/* loaded from: classes.dex */
public class m0 extends android.content.res.Resources {
    public final android.content.res.Resources a;

    public m0(android.content.res.Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.a = resources;
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getAnimation(int i) {
        return this.a.getAnimation(i);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i) {
        return this.a.getBoolean(i);
    }

    @Override // android.content.res.Resources
    public int getColor(int i) {
        return this.a.getColor(i);
    }

    @Override // android.content.res.Resources
    public android.content.res.ColorStateList getColorStateList(int i) {
        return this.a.getColorStateList(i);
    }

    @Override // android.content.res.Resources
    public android.content.res.Configuration getConfiguration() {
        return this.a.getConfiguration();
    }

    @Override // android.content.res.Resources
    public float getDimension(int i) {
        return this.a.getDimension(i);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i) {
        return this.a.getDimensionPixelOffset(i);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i) {
        return this.a.getDimensionPixelSize(i);
    }

    @Override // android.content.res.Resources
    public android.util.DisplayMetrics getDisplayMetrics() {
        return this.a.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i, android.content.res.Resources.Theme theme) {
        return this.a.getDrawable(i, theme);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawableForDensity(int i, int i2) {
        return this.a.getDrawableForDensity(i, i2);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawableForDensity(int i, int i2, android.content.res.Resources.Theme theme) {
        return this.a.getDrawableForDensity(i, i2, theme);
    }

    @Override // android.content.res.Resources
    public float getFraction(int i, int i2, int i3) {
        return this.a.getFraction(i, i2, i3);
    }

    @Override // android.content.res.Resources
    public int getIdentifier(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return this.a.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i) {
        return this.a.getIntArray(i);
    }

    @Override // android.content.res.Resources
    public int getInteger(int i) {
        return this.a.getInteger(i);
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getLayout(int i) {
        return this.a.getLayout(i);
    }

    @Override // android.content.res.Resources
    public android.graphics.Movie getMovie(int i) {
        return this.a.getMovie(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getQuantityString(int i, int i2) {
        return this.a.getQuantityString(i, i2);
    }

    @Override // android.content.res.Resources
    public java.lang.String getQuantityString(int i, int i2, java.lang.Object... objArr) {
        return this.a.getQuantityString(i, i2, objArr);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getQuantityText(int i, int i2) {
        return this.a.getQuantityText(i, i2);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceEntryName(int i) {
        return this.a.getResourceEntryName(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceName(int i) {
        return this.a.getResourceName(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourcePackageName(int i) {
        return this.a.getResourcePackageName(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getResourceTypeName(int i) {
        return this.a.getResourceTypeName(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getString(int i) {
        return this.a.getString(i);
    }

    @Override // android.content.res.Resources
    public java.lang.String getString(int i, java.lang.Object... objArr) {
        return this.a.getString(i, objArr);
    }

    @Override // android.content.res.Resources
    public java.lang.String[] getStringArray(int i) {
        return this.a.getStringArray(i);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getText(int i) {
        return this.a.getText(i);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence getText(int i, java.lang.CharSequence charSequence) {
        return this.a.getText(i, charSequence);
    }

    @Override // android.content.res.Resources
    public java.lang.CharSequence[] getTextArray(int i) {
        return this.a.getTextArray(i);
    }

    @Override // android.content.res.Resources
    public void getValue(int i, android.util.TypedValue typedValue, boolean z) throws android.content.res.Resources.NotFoundException {
        this.a.getValue(i, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValue(java.lang.String str, android.util.TypedValue typedValue, boolean z) throws android.content.res.Resources.NotFoundException {
        this.a.getValue(str, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValueForDensity(int i, int i2, android.util.TypedValue typedValue, boolean z) throws android.content.res.Resources.NotFoundException {
        this.a.getValueForDensity(i, i2, typedValue, z);
    }

    @Override // android.content.res.Resources
    public android.content.res.XmlResourceParser getXml(int i) {
        return this.a.getXml(i);
    }

    @Override // android.content.res.Resources
    public android.content.res.TypedArray obtainAttributes(android.util.AttributeSet attributeSet, int[] iArr) {
        return this.a.obtainAttributes(attributeSet, iArr);
    }

    @Override // android.content.res.Resources
    public android.content.res.TypedArray obtainTypedArray(int i) {
        return this.a.obtainTypedArray(i);
    }

    @Override // android.content.res.Resources
    public java.io.InputStream openRawResource(int i) {
        return this.a.openRawResource(i);
    }

    @Override // android.content.res.Resources
    public java.io.InputStream openRawResource(int i, android.util.TypedValue typedValue) {
        return this.a.openRawResource(i, typedValue);
    }

    @Override // android.content.res.Resources
    public android.content.res.AssetFileDescriptor openRawResourceFd(int i) {
        return this.a.openRawResourceFd(i);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(java.lang.String str, android.util.AttributeSet attributeSet, android.os.Bundle bundle) throws org.xmlpull.v1.XmlPullParserException {
        this.a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(android.content.res.XmlResourceParser xmlResourceParser, android.os.Bundle bundle) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        this.a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(android.content.res.Configuration configuration, android.util.DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        android.content.res.Resources resources = this.a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }
}
