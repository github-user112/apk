.class public Lf/a/k/l0/a4$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/n0/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/k/l0/a4;->g0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf/a/k/l0/a4;


# direct methods
.method public constructor <init>(Lf/a/k/l0/a4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/a4$c;->b:Lf/a/k/l0/a4;

    iput-object p2, p0, Lf/a/k/l0/a4$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    iget-object p1, p0, Lf/a/k/l0/a4$c;->b:Lf/a/k/l0/a4;

    iget-object p1, p1, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lf/a/k/l0/a4$c;->a:Ljava/lang/String;

    const-string v1, "net.easyconn.fileProvider"

    invoke-static {p1, v0, v1}, Lf/a/i/l/a;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_0

    const-string v0, "installApkFilePreCheck fail:"

    invoke-static {v0, p1}, Le/a/c/a/a;->v(Ljava/lang/String;I)V

    iget-object p1, p0, Lf/a/k/l0/a4$c;->b:Lf/a/k/l0/a4;

    iget-object v0, p1, Lf/a/k/l0/a4;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1
    new-instance v1, Lf/a/k/n0/j;

    invoke-direct {v1, v0}, Lf/a/k/n0/j;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 2
    iput v0, v1, Lf/a/k/n0/j;->a:I

    const v0, 0x7f0d0062

    .line 3
    iget-object v2, v1, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 4
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, v1, Lf/a/k/n0/j;->x:Ljava/lang/String;

    const v0, 0x7f0d002f

    const/4 v2, 0x0

    const/16 v3, 0xc8

    .line 6
    iput v3, v1, Lf/a/k/n0/j;->b:I

    .line 7
    iget-object v3, v1, Lf/a/k/n0/j;->G:Landroid/content/Context;

    .line 8
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, v1, Lf/a/k/n0/j;->B:Ljava/lang/String;

    .line 10
    iput-object v2, v1, Lf/a/k/n0/j;->u:Lf/a/k/n0/j$c;

    .line 11
    invoke-virtual {v1}, Lf/a/k/n0/j;->d()Lf/a/k/n0/j;

    .line 12
    iput-object v1, p1, Lf/a/k/l0/a4;->H:Lf/a/k/n0/j;

    .line 13
    :cond_0
    iget-object p1, p0, Lf/a/k/l0/a4$c;->b:Lf/a/k/l0/a4;

    iget-object p1, p1, Lf/a/k/l0/a4;->x:Lf/a/k/k0/i;

    const v0, 0x13880

    const/4 v1, 0x5

    const-string v2, "EC_MAIN_DISCOVER_NEW_VERSION_UPDATE"

    invoke-interface {p1, v0, v1, v2}, Lf/a/k/k0/i;->a(IILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
