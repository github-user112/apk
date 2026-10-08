.class public La/a/b/n/x$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/x;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/b/n/x;


# direct methods
.method public constructor <init>(La/a/b/n/x;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/x$a;->b:La/a/b/n/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/a/b/n/x$a;->b:La/a/b/n/x;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/n;

    invoke-direct {v0}, La/a/b/n/n;-><init>()V

    sput-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    :cond_0
    sget-object v0, La/a/b/n/n;->Z:La/a/b/n/n;

    .line 3
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    :cond_1
    return-void
.end method
