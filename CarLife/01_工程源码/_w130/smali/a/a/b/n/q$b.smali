.class public La/a/b/n/q$b;
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

    const-string v0, "CONNECT_TYPE_ANDROID"

    invoke-virtual {p1, v0}, La/a/b/r/a;->f(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 1
    sget-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/n;

    invoke-direct {v0}, La/a/b/n/n;-><init>()V

    sput-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    :cond_0
    sget-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 3
    sget-object v0, La/a/b/n/m;->Z:La/a/b/n/m;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, La/a/b/n/m;

    invoke-direct {v0}, La/a/b/n/m;-><init>()V

    .line 5
    sput-object v0, La/a/b/n/m;->Z:La/a/b/n/m;

    .line 6
    :cond_2
    sget-object v0, La/a/b/n/m;->Z:La/a/b/n/m;

    .line 7
    :goto_0
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    return-void
.end method
