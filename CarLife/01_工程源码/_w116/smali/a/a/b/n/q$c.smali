.class public La/a/b/n/q$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/q;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(La/a/b/n/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, La/a/b/r/a;->d()La/a/b/r/a;

    move-result-object p1

    const-string v0, "CONNECT_TYPE_IPHONE"

    invoke-virtual {p1, v0}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 1
    sget-object v0, La/a/b/n/o;->Z:La/a/b/n/o;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/o;

    invoke-direct {v0}, La/a/b/n/o;-><init>()V

    sput-object v0, La/a/b/n/o;->Z:La/a/b/n/o;

    :cond_0
    sget-object v0, La/a/b/n/o;->Z:La/a/b/n/o;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 3
    sget-object v0, La/a/b/n/p;->Z:La/a/b/n/p;

    if-nez v0, :cond_2

    new-instance v0, La/a/b/n/p;

    invoke-direct {v0}, La/a/b/n/p;-><init>()V

    sput-object v0, La/a/b/n/p;->Z:La/a/b/n/p;

    :cond_2
    sget-object v0, La/a/b/n/p;->Z:La/a/b/n/p;

    .line 4
    :goto_0
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    return-void
.end method
