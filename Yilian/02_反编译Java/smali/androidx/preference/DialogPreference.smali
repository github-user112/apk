.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source ""


# instance fields
.field public o:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Ld/p/b;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Ld/b/k/r;->w(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Ld/p/e;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ld/p/e;->DialogPreference_dialogTitle:I

    sget p3, Ld/p/e;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Ld/b/k/r;->L(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->o:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/preference/Preference;->c:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Landroidx/preference/DialogPreference;->o:Ljava/lang/CharSequence;

    :cond_0
    sget p2, Ld/p/e;->DialogPreference_dialogMessage:I

    sget p3, Ld/p/e;->DialogPreference_android_dialogMessage:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 5
    :cond_1
    sget p2, Ld/p/e;->DialogPreference_dialogIcon:I

    sget p3, Ld/p/e;->DialogPreference_android_dialogIcon:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_2
    sget p2, Ld/p/e;->DialogPreference_positiveButtonText:I

    sget p3, Ld/p/e;->DialogPreference_android_positiveButtonText:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 9
    :cond_3
    sget p2, Ld/p/e;->DialogPreference_negativeButtonText:I

    sget p3, Ld/p/e;->DialogPreference_android_negativeButtonText:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 11
    :cond_4
    sget p2, Ld/p/e;->DialogPreference_dialogLayout:I

    sget p3, Ld/p/e;->DialogPreference_android_dialogLayout:I

    const/4 p4, 0x0

    .line 12
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
