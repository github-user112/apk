package net.easyconn.ui.widget;

/* loaded from: classes.dex */
public class YltpEcFloatButton extends net.easyconn.ui.widget.EcFloatButton {
    public boolean K;

    public YltpEcFloatButton(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.K = false;
    }

    @Override // net.easyconn.ui.widget.EcFloatButton
    public void g() {
        if (this.K) {
            performClick();
        } else {
            k();
        }
    }

    @Override // net.easyconn.ui.widget.EcFloatButton
    public void setJustEcHome(boolean z) {
    }

    public void setJustStopMirror(boolean z) {
        int i;
        this.K = z;
        if (z) {
            this.l = net.easyconn.R.drawable.float_stop_normal;
            i = net.easyconn.R.drawable.float_stop_press;
        } else {
            this.l = net.easyconn.R.drawable.circle_horizontal_normal_bg;
            i = net.easyconn.R.drawable.circle_horizontal_pressed_bg;
        }
        this.m = i;
        setBackgroundResource(this.l);
    }

    @Override // net.easyconn.ui.widget.EcFloatButton
    public void setJustSystemHome(boolean z) {
    }
}
