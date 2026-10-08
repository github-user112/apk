.class public Lb/h/b/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/a$b;


# instance fields
.field public final synthetic a:Lb/h/b/p;


# direct methods
.method public constructor <init>(Lb/h/b/p;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/n;->a:Lb/h/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/h/b/n;->a:Lb/h/b/p;

    .line 1
    :cond_0
    invoke-virtual {v1}, Lb/h/b/p;->Q0()Lb/h/b/c0;

    move-result-object v2

    sget-object v3, Lb/j/d$b;->d:Lb/j/d$b;

    invoke-static {v2, v3}, Lb/h/b/p;->R0(Lb/h/b/c0;Lb/j/d$b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2
    iget-object v1, p0, Lb/h/b/n;->a:Lb/h/b/p;

    iget-object v1, v1, Lb/h/b/p;->j:Lb/j/h;

    sget-object v2, Lb/j/d$a;->ON_STOP:Lb/j/d$a;

    invoke-virtual {v1, v2}, Lb/j/h;->d(Lb/j/d$a;)V

    iget-object v1, p0, Lb/h/b/n;->a:Lb/h/b/p;

    iget-object v1, v1, Lb/h/b/p;->i:Lb/h/b/x;

    .line 3
    iget-object v1, v1, Lb/h/b/x;->a:Lb/h/b/z;

    iget-object v1, v1, Lb/h/b/z;->e:Lb/h/b/c0;

    invoke-virtual {v1}, Lb/h/b/c0;->Y()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android:support:fragments"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method
