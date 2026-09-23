package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class NetNotifyDialog extends com.tencent.bugly.beta.ui.BaseDialogFrag {
    public android.widget.TextView mTipsTextView;
    public com.tencent.bugly.beta.download.DownloadTask task;

    @Override // com.tencent.bugly.beta.ui.BaseDialogFrag, androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        this.mLayoutResId = com.tencent.bugly.beta.global.e.b.m;
        android.view.View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.mLayoutResId == 0) {
            android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, -2);
            android.widget.TextView textView = new android.widget.TextView(this.mContext);
            this.mTipsTextView = textView;
            textView.setLayoutParams(layoutParams);
            android.widget.TextView textView2 = this.mTipsTextView;
            this.mRes.getClass();
            textView2.setTextColor(android.graphics.Color.parseColor("#757575"));
            this.mTipsTextView.setTextSize(16.0f);
            this.mTipsTextView.setTag(com.tencent.bugly.beta.Beta.TAG_TIP_MESSAGE);
            this.mContentContainer.addView(this.mTipsTextView);
        } else if (viewOnCreateView != null) {
            this.mTipsTextView = (android.widget.TextView) viewOnCreateView.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_TIP_MESSAGE);
        }
        try {
            this.mTipsTextView.setText(com.tencent.bugly.beta.Beta.strNetworkTipsMessage);
            this.mTitleTextView.setText(com.tencent.bugly.beta.Beta.strNetworkTipsTitle);
            setBtn(com.tencent.bugly.beta.Beta.strNetworkTipsCancelBtn, new com.tencent.bugly.beta.global.b(2, this), com.tencent.bugly.beta.Beta.strNetworkTipsConfirmBtn, new com.tencent.bugly.beta.global.b(3, this, this.task));
        } catch (java.lang.Exception e2) {
            if (this.mLayoutResId != 0) {
                com.tencent.bugly.proguard.aa.b("please confirm your argument: [Beta.tipsDialogLayoutId] is correct", new java.lang.Object[0]);
            }
            if (!com.tencent.bugly.proguard.aa.a(e2)) {
                e2.printStackTrace();
            }
        }
        return viewOnCreateView;
    }

    @Override // com.tencent.bugly.beta.ui.BaseDialogFrag, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mTipsTextView = null;
    }

    @Override // com.tencent.bugly.beta.ui.BaseFrag
    public boolean onKeyDown(int i, android.view.KeyEvent keyEvent) {
        return false;
    }
}
