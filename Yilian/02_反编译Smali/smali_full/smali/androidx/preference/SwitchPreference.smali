.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreference$a;
    }
.end annotation


# instance fields
.field public final t:Landroidx/preference/SwitchPreference$a;

.field public u:Ljava/lang/CharSequence;

.field public v:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget v0, Ld/p/b;->switchPreferenceStyle:I

    const v1, 0x101036d

    invoke-static {p1, v0, v1}, Ld/b/k/r;->w(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v2, Landroidx/preference/SwitchPreference$a;

    invoke-direct {v2, p0}, Landroidx/preference/SwitchPreference$a;-><init>(Landroidx/preference/SwitchPreference;)V

    iput-object v2, p0, Landroidx/preference/SwitchPreference;->t:Landroidx/preference/SwitchPreference$a;

    sget-object v2, Ld/p/e;->SwitchPreference:[I

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Ld/p/e;->SwitchPreference_summaryOn:I

    sget v0, Ld/p/e;->SwitchPreference_android_summaryOn:I

    invoke-static {p1, p2, v0}, Ld/b/k/r;->L(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    .line 2
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->p:Ljava/lang/CharSequence;

    .line 3
    sget p2, Ld/p/e;->SwitchPreference_summaryOff:I

    sget v0, Ld/p/e;->SwitchPreference_android_summaryOff:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/preference/TwoStatePreference;->q:Ljava/lang/CharSequence;

    .line 6
    sget p2, Ld/p/e;->SwitchPreference_switchTextOn:I

    sget v0, Ld/p/e;->SwitchPreference_android_switchTextOn:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_1
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->u:Ljava/lang/CharSequence;

    .line 9
    sget p2, Ld/p/e;->SwitchPreference_switchTextOff:I

    sget v0, Ld/p/e;->SwitchPreference_android_switchTextOff:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    :cond_2
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->v:Ljava/lang/CharSequence;

    .line 12
    sget p2, Ld/p/e;->SwitchPreference_disableDependentsState:I

    sget v0, Ld/p/e;->SwitchPreference_android_disableDependentsState:I

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 14
    iput-boolean p2, p0, Landroidx/preference/TwoStatePreference;->s:Z

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
