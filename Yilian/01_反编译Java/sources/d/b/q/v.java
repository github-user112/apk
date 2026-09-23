package d.b.q;

/* loaded from: classes.dex */
public final class v {
    public android.widget.TextView a;
    public android.view.textclassifier.TextClassifier b;

    public v(android.widget.TextView textView) {
        this.a = textView;
    }

    public android.view.textclassifier.TextClassifier a() {
        android.view.textclassifier.TextClassifier textClassifier = this.b;
        if (textClassifier != null) {
            return textClassifier;
        }
        android.view.textclassifier.TextClassificationManager textClassificationManager = (android.view.textclassifier.TextClassificationManager) this.a.getContext().getSystemService(android.view.textclassifier.TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : android.view.textclassifier.TextClassifier.NO_OP;
    }
}
