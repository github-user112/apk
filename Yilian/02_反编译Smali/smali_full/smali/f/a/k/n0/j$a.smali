.class public Lf/a/k/n0/j$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/k/n0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lf/a/k/n0/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/a/k/n0/j;

    invoke-direct {v0, p1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    return-void
.end method


# virtual methods
.method public a()Lf/a/k/n0/j;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    return-object v0
.end method

.method public b(Z)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput-boolean p1, v0, Lf/a/k/n0/j;->J:Z

    return-object p0
.end method

.method public c(I)Lf/a/k/n0/j$a;
    .locals 2

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iget-object v1, v0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput-object p1, v0, Lf/a/k/n0/j;->x:Ljava/lang/String;

    return-object p0
.end method

.method public e(I)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput p1, v0, Lf/a/k/n0/j;->a:I

    return-object p0
.end method

.method public f(I)Lf/a/k/n0/j$a;
    .locals 2

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    const/16 v1, 0x69

    .line 1
    iput v1, v0, Lf/a/k/n0/j;->a:I

    .line 2
    iput p1, v0, Lf/a/k/n0/j;->F:I

    return-object p0
.end method

.method public g()Lf/a/k/n0/j$a;
    .locals 2

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    const/16 v1, 0xca

    .line 1
    iput v1, v0, Lf/a/k/n0/j;->b:I

    return-object p0
.end method

.method public h(ILf/a/k/n0/j$c;)Lf/a/k/n0/j$a;
    .locals 2

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    const/16 v1, 0xc8

    .line 1
    iput v1, v0, Lf/a/k/n0/j;->b:I

    .line 2
    iget-object v1, v0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, v0, Lf/a/k/n0/j;->B:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 6
    iput-object p2, p1, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput-object p1, v0, Lf/a/k/n0/j;->A:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lf/a/k/n0/j;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public j(I)Lf/a/k/n0/j$a;
    .locals 2

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iget-object v1, v0, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, v0, Lf/a/k/n0/j;->w:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput-object p1, v0, Lf/a/k/n0/j;->w:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lf/a/k/n0/j$a;
    .locals 1

    iget-object v0, p0, Lf/a/k/n0/j$a;->a:Lf/a/k/n0/j;

    .line 1
    iput-object p1, v0, Lf/a/k/n0/j;->z:Ljava/lang/String;

    return-object p0
.end method
