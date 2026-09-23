.class public Lf/a/k/l0/v3$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/v3;->i0(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lf/a/k/l0/v3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/v3;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/v3$a;->e:Lf/a/k/l0/v3;

    iput p2, p0, Lf/a/k/l0/v3$a;->b:I

    iput p3, p0, Lf/a/k/l0/v3$a;->c:I

    iput-object p4, p0, Lf/a/k/l0/v3$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lf/a/k/l0/v3$a;->a:I

    return-void
.end method


# virtual methods
.method public synthetic a(Z)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lf/a/k/l0/v3$a;->a:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lf/a/k/l0/v3$a;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lf/a/k/l0/v3$a;->a:I

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lf/a/k/l0/v3$a;->e:Lf/a/k/l0/v3;

    iget-object v1, p1, Lf/a/k/l0/v3;->H:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1
    new-instance v2, Lf/a/k/n0/j;

    invoke-direct {v2, v1}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x67

    .line 2
    iput v1, v2, Lf/a/k/n0/j;->a:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v2, Lf/a/k/n0/j;->J:Z

    const-string v3, "Failed:"

    .line 4
    invoke-static {v3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lf/a/k/l0/v3$a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iput-object v3, v2, Lf/a/k/n0/j;->w:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    sget-object v4, Ld/s/y;->m:Ljava/lang/String;

    aput-object v4, v3, v1

    sget-object v1, Ld/s/y;->u:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget v1, p0, Lf/a/k/l0/v3$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lf/a/k/l0/v3$a;->d:Ljava/lang/String;

    aput-object v1, v3, v0

    const-string v0, "UUID:%s\nPhone\'s IMEI:%s\nChannel:%s\nErrorMsg:%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iput-object v0, v2, Lf/a/k/n0/j;->x:Ljava/lang/String;

    .line 8
    new-instance v0, Lf/a/k/l0/o1;

    invoke-direct {v0, p0}, Lf/a/k/l0/o1;-><init>(Lf/a/k/l0/v3$a;)V

    const/16 v1, 0xc8

    .line 9
    iput v1, v2, Lf/a/k/n0/j;->b:I

    const-string v1, "OK"

    .line 10
    iput-object v1, v2, Lf/a/k/n0/j;->B:Ljava/lang/String;

    .line 11
    iput-object v0, v2, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    .line 12
    invoke-virtual {v2}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    .line 13
    iput-object v2, p1, Lf/a/k/l0/v3;->L:Lf/a/k/n0/j;

    :cond_0
    return-void
.end method
