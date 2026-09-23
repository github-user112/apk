.class public La/a/b/s/a;
.super Landroid/app/Dialog;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/s/a$c;
    }
.end annotation


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/FrameLayout;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:La/a/b/s/a$c;

.field public g:La/a/b/s/a$c;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x7f0f00a3

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const p1, 0x7f090069

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    const p1, 0x7f090065

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, La/a/b/s/a;->c:Landroid/widget/FrameLayout;

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    const p1, 0x7f090067

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    iget-object p1, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    new-instance v0, La/a/b/s/a$a;

    invoke-direct {v0, p0}, La/a/b/s/a$a;-><init>(La/a/b/s/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    new-instance v0, La/a/b/s/a$b;

    invoke-direct {v0, p0}, La/a/b/s/a$b;-><init>(La/a/b/s/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/b/s/a;->h:Z

    iput-boolean p1, p0, La/a/b/s/a;->i:Z

    iget-object v0, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, La/a/b/s/a;->h:Z

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, La/a/b/s/a;->i:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)La/a/b/s/a;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/b/s/a;->h:Z

    iget-object p1, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/s/a;->h:Z

    iget-object v0, p0, La/a/b/s/a;->d:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    invoke-virtual {p0}, La/a/b/s/a;->a()V

    return-object p0
.end method

.method public c(Ljava/lang/String;)La/a/b/s/a;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/b/s/a;->i:Z

    iget-object p1, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/s/a;->i:Z

    iget-object v0, p0, La/a/b/s/a;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    invoke-virtual {p0}, La/a/b/s/a;->a()V

    return-object p0
.end method

.method public d(Ljava/lang/String;)La/a/b/s/a;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    const-string v1, ""

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, La/a/b/s/a;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    return-object p0
.end method
