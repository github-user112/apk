.class public La/a/b/n/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/o;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(La/a/b/n/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, La/a/b/n/y;->Z:La/a/b/n/y;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/y;

    invoke-direct {v0}, La/a/b/n/y;-><init>()V

    sput-object v0, La/a/b/n/y;->Z:La/a/b/n/y;

    :cond_0
    sget-object v0, La/a/b/n/y;->Z:La/a/b/n/y;

    .line 2
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    :cond_1
    return-void
.end method
