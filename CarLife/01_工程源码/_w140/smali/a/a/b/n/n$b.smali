.class public La/a/b/n/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/n;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(La/a/b/n/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 1
    sget-object v0, La/a/b/n/x;->Z:La/a/b/n/x;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/x;

    invoke-direct {v0}, La/a/b/n/x;-><init>()V

    sput-object v0, La/a/b/n/x;->Z:La/a/b/n/x;

    :cond_0
    sget-object v0, La/a/b/n/x;->Z:La/a/b/n/x;

    .line 2
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    return-void
.end method
