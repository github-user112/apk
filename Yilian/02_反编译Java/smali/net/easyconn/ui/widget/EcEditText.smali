.class public Lnet/easyconn/ui/widget/EcEditText;
.super Ld/b/q/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/easyconn/ui/widget/EcEditText$a;
    }
.end annotation


# instance fields
.field public d:Lnet/easyconn/ui/widget/EcEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/b/q/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    iget-object v0, p0, Lnet/easyconn/ui/widget/EcEditText;->d:Lnet/easyconn/ui/widget/EcEditText$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lnet/easyconn/ui/widget/EcEditText$a;->a(II)V

    :cond_0
    return-void
.end method

.method public setOnSelectChangedListener(Lnet/easyconn/ui/widget/EcEditText$a;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/widget/EcEditText;->d:Lnet/easyconn/ui/widget/EcEditText$a;

    return-void
.end method
