package d.g.m;

/* loaded from: classes.dex */
public interface j {
    boolean onNestedFling(android.view.View view, float f2, float f3, boolean z);

    boolean onNestedPreFling(android.view.View view, float f2, float f3);

    void onNestedPreScroll(android.view.View view, int i, int i2, int[] iArr);

    void onNestedScroll(android.view.View view, int i, int i2, int i3, int i4);

    void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i);

    boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i);

    void onStopNestedScroll(android.view.View view);
}
