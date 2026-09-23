.class public Landroidx/preference/CheckBoxPreference$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/CheckBoxPreference$a;->a:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->f(Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
