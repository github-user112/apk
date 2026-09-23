package net.easyconn;

/* loaded from: classes.dex */
public class WelcomeActivity extends d.b.k.h {
    @Override // d.b.k.h, d.j.d.l, androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        e.e.a.g.a("[WelcomeActivity]onCreate");
        android.content.Intent intent = new android.content.Intent();
        intent.setAction("net.easyconn6.mainactivity");
        intent.addCategory("android.intent.category.DEFAULT");
        startActivity(intent);
        finish();
    }
}
