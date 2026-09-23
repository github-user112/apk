.class public Lf/a/k/l0/w3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:I

.field public final synthetic b:Lf/a/k/l0/z3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/z3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lf/a/k/l0/w3;->a:I

    return-void
.end method


# virtual methods
.method public synthetic a(Z)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lf/a/k/l0/w3;->a:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    iget-object p1, p1, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {p1}, Lf/a/k/k0/g;->g0()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "imgQrCode clicked, but license not auth fail"

    invoke-static {v0, p1}, Le/e/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget p1, p0, Lf/a/k/l0/w3;->a:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lf/a/k/l0/w3;->a:I

    const/4 v2, 0x7

    if-lt p1, v2, :cond_1

    iget-object p1, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/a/i/m/g;->k(Landroid/content/Context;)I

    move-result p1

    iget-object v2, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    iget-object v3, v2, Lf/a/k/l0/z3;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 1
    new-instance v4, Lf/a/k/n0/j;

    invoke-direct {v4, v3}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x67

    .line 2
    iput v3, v4, Lf/a/k/n0/j;->a:I

    .line 3
    iput-boolean v0, v4, Lf/a/k/n0/j;->J:Z

    const-string v3, "Failed:"

    .line 4
    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    iget-object v5, v5, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {v5}, Lf/a/k/k0/g;->L()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iput-object v3, v4, Lf/a/k/n0/j;->w:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    sget-object v5, Ld/s/y;->m:Ljava/lang/String;

    aput-object v5, v3, v0

    sget-object v0, Ld/s/y;->u:Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x3

    iget-object v0, p0, Lf/a/k/l0/w3;->b:Lf/a/k/l0/z3;

    iget-object v0, v0, Lf/a/k/l0/z3;->A:Lf/a/k/k0/g;

    invoke-interface {v0}, Lf/a/k/k0/g;->b0()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "UUID:%s\nPhone\'s IMEI:%s\nChannel:%s\nErrorMsg:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, v4, Lf/a/k/n0/j;->x:Ljava/lang/String;

    .line 8
    new-instance p1, Lf/a/k/l0/t1;

    invoke-direct {p1, p0}, Lf/a/k/l0/t1;-><init>(Lf/a/k/l0/w3;)V

    const/16 v0, 0xc8

    .line 9
    iput v0, v4, Lf/a/k/n0/j;->b:I

    const-string v0, "OK"

    .line 10
    iput-object v0, v4, Lf/a/k/n0/j;->B:Ljava/lang/String;

    .line 11
    iput-object p1, v4, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    .line 12
    invoke-virtual {v4}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    .line 13
    iput-object v4, v2, Lf/a/k/l0/z3;->C:Lf/a/k/n0/j;

    :cond_1
    return-void
.end method
