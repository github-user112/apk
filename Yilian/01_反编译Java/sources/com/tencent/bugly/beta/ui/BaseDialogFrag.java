package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public abstract class BaseDialogFrag extends com.tencent.bugly.beta.ui.BaseFrag {
    public android.widget.ImageView mBannerImageView;
    public android.widget.LinearLayout mContentContainer;
    public android.content.Context mContext;
    public android.widget.LinearLayout mCustomLayout;
    public android.widget.FrameLayout mFrameLayout;
    public android.view.View mLayoutContainer;
    public int mLayoutResId;
    public android.widget.TextView mLeftBtnTextView;
    public com.tencent.bugly.beta.global.ResBean mRes;
    public android.widget.TextView mRightBtnTextView;
    public int mStyle;
    public android.widget.TextView mTitleTextView;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ android.view.View.OnClickListener b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f911c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ android.view.View.OnClickListener f912d;

        public a(java.lang.String str, android.view.View.OnClickListener onClickListener, java.lang.String str2, android.view.View.OnClickListener onClickListener2) {
            this.a = str;
            this.b = onClickListener;
            this.f911c = str2;
            this.f912d = onClickListener2;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.beta.ui.BaseDialogFrag baseDialogFrag = com.tencent.bugly.beta.ui.BaseDialogFrag.this;
            android.widget.TextView textView = baseDialogFrag.mLeftBtnTextView;
            if (textView == null || baseDialogFrag.mRightBtnTextView == null) {
                return;
            }
            if (this.a != null) {
                textView.setVisibility(0);
                com.tencent.bugly.beta.ui.BaseDialogFrag baseDialogFrag2 = com.tencent.bugly.beta.ui.BaseDialogFrag.this;
                if (baseDialogFrag2.mStyle != 2) {
                    baseDialogFrag2.mLeftBtnTextView.setText(this.a);
                    com.tencent.bugly.beta.ui.BaseDialogFrag baseDialogFrag3 = com.tencent.bugly.beta.ui.BaseDialogFrag.this;
                    if (baseDialogFrag3.mLayoutResId == 0) {
                        baseDialogFrag3.mLeftBtnTextView.getViewTreeObserver().addOnPreDrawListener(new com.tencent.bugly.beta.ui.BetaOnPreDraw(2, java.lang.Integer.valueOf(com.tencent.bugly.beta.ui.BaseDialogFrag.this.mStyle), com.tencent.bugly.beta.ui.BaseDialogFrag.this.mLeftBtnTextView, 1));
                    }
                }
                com.tencent.bugly.beta.ui.BaseDialogFrag.this.mLeftBtnTextView.setOnClickListener(this.b);
            }
            if (this.f911c != null) {
                com.tencent.bugly.beta.ui.BaseDialogFrag.this.mRightBtnTextView.setVisibility(0);
                com.tencent.bugly.beta.ui.BaseDialogFrag.this.mRightBtnTextView.setText(this.f911c);
                com.tencent.bugly.beta.ui.BaseDialogFrag.this.mRightBtnTextView.setOnClickListener(this.f912d);
                com.tencent.bugly.beta.ui.BaseDialogFrag baseDialogFrag4 = com.tencent.bugly.beta.ui.BaseDialogFrag.this;
                if (baseDialogFrag4.mLayoutResId == 0) {
                    baseDialogFrag4.mRightBtnTextView.getViewTreeObserver().addOnPreDrawListener(new com.tencent.bugly.beta.ui.BetaOnPreDraw(2, java.lang.Integer.valueOf(com.tencent.bugly.beta.ui.BaseDialogFrag.this.mStyle), com.tencent.bugly.beta.ui.BaseDialogFrag.this.mRightBtnTextView, 1));
                }
                com.tencent.bugly.beta.ui.BaseDialogFrag.this.mRightBtnTextView.requestFocus();
            }
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ android.view.animation.Animation a;

        public b(android.view.animation.Animation animation) {
            this.a = animation;
        }

        @Override // java.lang.Runnable
        public void run() {
            android.view.View view = com.tencent.bugly.beta.ui.BaseDialogFrag.this.mLayoutContainer;
            if (view != null) {
                view.startAnimation(this.a);
            }
        }
    }

    public class c implements android.view.animation.Animation.AnimationListener {
        public c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            android.view.View view = com.tencent.bugly.beta.ui.BaseDialogFrag.this.mLayoutContainer;
            if (view != null) {
                view.setVisibility(8);
            }
            com.tencent.bugly.beta.ui.BaseDialogFrag.super.close();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
        }
    }

    @Override // com.tencent.bugly.beta.ui.BaseFrag
    public void close() {
        if (this.mLayoutContainer == null) {
            super.close();
            return;
        }
        android.view.animation.AlphaAnimation alphaAnimation = new android.view.animation.AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(200L);
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.ui.BaseDialogFrag.b(alphaAnimation));
        alphaAnimation.setAnimationListener(new com.tencent.bugly.beta.ui.BaseDialogFrag.c());
    }

    @Override // androidx.fragment.app.Fragment
    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        this.mContext = getActivity();
        this.mRes = com.tencent.bugly.beta.global.ResBean.a;
        int i = this.mLayoutResId;
        if (i == 0) {
            android.widget.RelativeLayout relativeLayout = new android.widget.RelativeLayout(this.mContext);
            this.mLayoutContainer = relativeLayout;
            relativeLayout.setGravity(17);
            this.mLayoutContainer.setBackgroundColor(android.graphics.Color.argb(100, 0, 0, 0));
            this.mFrameLayout = new android.widget.FrameLayout(this.mContext);
            this.mFrameLayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(this.mContext);
            this.mCustomLayout = linearLayout;
            linearLayout.setBackgroundColor(-1);
            android.view.ViewGroup.LayoutParams layoutParams = new android.view.ViewGroup.LayoutParams(-1, -2);
            this.mCustomLayout.setGravity(17);
            this.mCustomLayout.setLayoutParams(layoutParams);
            this.mCustomLayout.setMinimumWidth(com.tencent.bugly.beta.global.a.a(this.mContext, 280.0f));
            this.mCustomLayout.setOrientation(1);
            if (this.mStyle == 2) {
                float fA = com.tencent.bugly.beta.global.a.a(this.mContext, 6.0f);
                android.graphics.drawable.ShapeDrawable shapeDrawable = new android.graphics.drawable.ShapeDrawable(new android.graphics.drawable.shapes.RoundRectShape(new float[]{fA, fA, fA, fA, fA, fA, fA, fA}, null, null));
                shapeDrawable.getPaint().setColor(-1);
                shapeDrawable.getPaint().setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
                this.mCustomLayout.setBackgroundDrawable(shapeDrawable);
            }
            android.widget.TextView textView = new android.widget.TextView(this.mContext);
            this.mTitleTextView = textView;
            textView.setGravity(16);
            this.mTitleTextView.setSingleLine();
            android.widget.TextView textView2 = this.mTitleTextView;
            this.mRes.getClass();
            textView2.setTextColor(android.graphics.Color.parseColor("#273238"));
            this.mTitleTextView.setTextSize(18.0f);
            this.mTitleTextView.setLayoutParams(layoutParams);
            this.mTitleTextView.setOnClickListener(null);
            this.mTitleTextView.setEllipsize(android.text.TextUtils.TruncateAt.END);
            int iA = com.tencent.bugly.beta.global.a.a(this.mContext, 16.0f);
            this.mTitleTextView.setPadding(iA, 0, iA, 0);
            this.mTitleTextView.setTypeface(null, 1);
            this.mTitleTextView.setHeight(com.tencent.bugly.beta.global.a.a(this.mContext, 42.0f));
            this.mTitleTextView.setTag(com.tencent.bugly.beta.Beta.TAG_TITLE);
            android.widget.TextView textView3 = new android.widget.TextView(this.mContext);
            textView3.setBackgroundColor(-3355444);
            textView3.setHeight(1);
            android.widget.ScrollView scrollView = new android.widget.ScrollView(this.mContext);
            android.widget.LinearLayout.LayoutParams layoutParams2 = new android.widget.LinearLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, 0, 0, com.tencent.bugly.beta.global.a.a(this.mContext, 52.0f));
            scrollView.setLayoutParams(layoutParams2);
            scrollView.setFillViewport(true);
            scrollView.setVerticalScrollBarEnabled(false);
            scrollView.setHorizontalScrollBarEnabled(false);
            this.mContentContainer = new android.widget.LinearLayout(this.mContext);
            this.mContentContainer.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2));
            this.mContentContainer.setOrientation(1);
            this.mContentContainer.setPadding(iA, com.tencent.bugly.beta.global.a.a(this.mContext, 10.0f), iA, 0);
            android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(this.mContext);
            linearLayout2.setLayoutParams(layoutParams);
            linearLayout2.setGravity(17);
            linearLayout2.setOrientation(0);
            int i2 = iA / 2;
            linearLayout2.setPadding(i2, iA, i2, iA);
            android.widget.FrameLayout.LayoutParams layoutParams3 = new android.widget.FrameLayout.LayoutParams(-1, -2);
            layoutParams3.gravity = 80;
            linearLayout2.setLayoutParams(layoutParams3);
            android.widget.LinearLayout.LayoutParams layoutParams4 = new android.widget.LinearLayout.LayoutParams(0, -2, 1.0f);
            layoutParams4.setMargins(i2, 0, i2, 0);
            android.widget.TextView textView4 = new android.widget.TextView(this.mContext);
            this.mLeftBtnTextView = textView4;
            textView4.setSingleLine();
            this.mLeftBtnTextView.setGravity(17);
            this.mLeftBtnTextView.setTag(com.tencent.bugly.beta.Beta.TAG_CANCEL_BUTTON);
            new android.widget.RelativeLayout.LayoutParams(-2, -2);
            int iA2 = com.tencent.bugly.beta.global.a.a(this.mContext, 30.0f);
            if (this.mStyle == 2) {
                android.widget.FrameLayout.LayoutParams layoutParams5 = new android.widget.FrameLayout.LayoutParams(iA2, iA2);
                layoutParams5.gravity = 53;
                this.mLeftBtnTextView.setLayoutParams(layoutParams5);
                android.widget.TextView textView5 = this.mLeftBtnTextView;
                double d2 = iA2;
                java.lang.Double.isNaN(d2);
                textView5.setTextSize((float) (d2 * 0.3d));
            } else {
                this.mLeftBtnTextView.setLayoutParams(layoutParams4);
                this.mLeftBtnTextView.setTextSize(16);
                android.widget.TextView textView6 = this.mLeftBtnTextView;
                this.mRes.getClass();
                textView6.setTextColor(android.graphics.Color.parseColor("#757575"));
                this.mLeftBtnTextView.setPadding(com.tencent.bugly.beta.global.a.a(this.mContext, 10.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 5.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 10.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 5.0f));
            }
            android.widget.TextView textView7 = new android.widget.TextView(this.mContext);
            this.mRightBtnTextView = textView7;
            textView7.setLayoutParams(layoutParams4);
            this.mRightBtnTextView.setGravity(17);
            this.mRightBtnTextView.setTextSize(16);
            android.widget.TextView textView8 = this.mRightBtnTextView;
            this.mRes.getClass();
            textView8.setTextColor(android.graphics.Color.parseColor("#273238"));
            this.mRightBtnTextView.setSingleLine();
            this.mRightBtnTextView.setPadding(com.tencent.bugly.beta.global.a.a(this.mContext, 10.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 5.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 10.0f), com.tencent.bugly.beta.global.a.a(this.mContext, 5.0f));
            this.mRightBtnTextView.setTypeface(null, 1);
            this.mRightBtnTextView.setTag(com.tencent.bugly.beta.Beta.TAG_CONFIRM_BUTTON);
            int iA3 = com.tencent.bugly.beta.global.a.a(this.mContext, 40.0f);
            scrollView.addView(this.mContentContainer);
            if (this.mStyle == 2) {
                android.widget.FrameLayout frameLayout = new android.widget.FrameLayout(this.mContext);
                frameLayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-2, -2));
                int i3 = iA2 / 2;
                int i4 = i3 - 5;
                this.mFrameLayout.setPadding(i3, i4, i4, i3);
                frameLayout.addView(this.mFrameLayout);
                frameLayout.addView(this.mLeftBtnTextView);
                ((android.widget.RelativeLayout) this.mLayoutContainer).addView(frameLayout);
            } else {
                this.mLayoutContainer.setPadding(iA3, iA3, iA3, iA3);
                ((android.widget.RelativeLayout) this.mLayoutContainer).addView(this.mFrameLayout);
                linearLayout2.addView(this.mLeftBtnTextView);
            }
            this.mCustomLayout.addView(this.mTitleTextView);
            this.mCustomLayout.addView(textView3);
            this.mCustomLayout.addView(scrollView);
            this.mFrameLayout.addView(this.mCustomLayout);
            linearLayout2.addView(this.mRightBtnTextView);
            this.mFrameLayout.addView(linearLayout2);
            if (this.mStyle == 2) {
                android.graphics.Paint paint = new android.graphics.Paint();
                paint.setStyle(android.graphics.Paint.Style.FILL);
                paint.setAntiAlias(true);
                android.graphics.Bitmap bitmapCreateBitmap = android.graphics.Bitmap.createBitmap(iA2, iA2, android.graphics.Bitmap.Config.ARGB_8888);
                int i5 = iA2 / 2;
                android.graphics.Canvas canvas = new android.graphics.Canvas(bitmapCreateBitmap);
                paint.setColor(-3355444);
                float f2 = i5;
                canvas.drawCircle(f2, f2, f2, paint);
                canvas.rotate(45.0f, f2, f2);
                paint.setColor(-7829368);
                int iA4 = com.tencent.bugly.beta.global.a.a(this.mContext, 0.8f);
                float f3 = f2 * 0.4f;
                float f4 = i5 - iA4;
                float f5 = f2 * 1.6f;
                float f6 = i5 + iA4;
                canvas.drawRect(f3, f4, f5, f6, paint);
                canvas.drawRect(f4, f3, f6, f5, paint);
                canvas.rotate(-45.0f);
                android.graphics.Bitmap bitmapCreateBitmap2 = android.graphics.Bitmap.createBitmap(iA2, iA2, android.graphics.Bitmap.Config.ARGB_8888);
                android.graphics.Canvas canvas2 = new android.graphics.Canvas(bitmapCreateBitmap2);
                paint.setColor(-7829368);
                canvas2.drawCircle(f2, f2, f2, paint);
                canvas2.rotate(45.0f, f2, f2);
                paint.setColor(-3355444);
                canvas2.drawRect(f3, f4, f5, f6, paint);
                canvas2.drawRect(f4, f3, f6, f5, paint);
                canvas2.rotate(-45.0f);
                android.graphics.drawable.BitmapDrawable bitmapDrawable = new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap);
                android.graphics.drawable.BitmapDrawable bitmapDrawable2 = new android.graphics.drawable.BitmapDrawable(bitmapCreateBitmap2);
                this.mLeftBtnTextView.setBackgroundDrawable(bitmapDrawable);
                this.mLeftBtnTextView.setOnTouchListener(new com.tencent.bugly.beta.global.c(1, bitmapDrawable2, bitmapDrawable));
            }
            this.mLayoutContainer.setOnClickListener(null);
            android.view.animation.AlphaAnimation alphaAnimation = new android.view.animation.AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300L);
            this.mLayoutContainer.startAnimation(alphaAnimation);
        } else {
            android.view.View viewInflate = layoutInflater.inflate(i, (android.view.ViewGroup) null);
            this.mLayoutContainer = viewInflate;
            this.mBannerImageView = (android.widget.ImageView) viewInflate.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_IMG_BANNER);
            this.mTitleTextView = (android.widget.TextView) this.mLayoutContainer.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_TITLE);
            this.mLeftBtnTextView = (android.widget.TextView) this.mLayoutContainer.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_CANCEL_BUTTON);
            this.mRightBtnTextView = (android.widget.TextView) this.mLayoutContainer.findViewWithTag(com.tencent.bugly.beta.Beta.TAG_CONFIRM_BUTTON);
        }
        this.mLeftBtnTextView.setVisibility(8);
        this.mRightBtnTextView.setVisibility(8);
        this.mLeftBtnTextView.setFocusable(true);
        this.mRightBtnTextView.setFocusable(true);
        this.mRightBtnTextView.requestFocus();
        return this.mLayoutContainer;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mContext = null;
        this.mLayoutContainer = null;
        this.mFrameLayout = null;
        this.mCustomLayout = null;
        this.mTitleTextView = null;
        this.mBannerImageView = null;
        this.mLeftBtnTextView = null;
        this.mRightBtnTextView = null;
        this.mContentContainer = null;
    }

    public void setBtn(java.lang.String str, android.view.View.OnClickListener onClickListener, java.lang.String str2, android.view.View.OnClickListener onClickListener2) {
        com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.ui.BaseDialogFrag.a(str, onClickListener, str2, onClickListener2));
    }
}
