.class public La/a/b/n/n$a;
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


# instance fields
.field public final synthetic b:La/a/b/n/n;


# direct methods
.method public constructor <init>(La/a/b/n/n;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/n$a;->b:La/a/b/n/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/a/b/n/n$a;->b:La/a/b/n/n;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    if-eqz p1, :cond_0

    invoke-static {}, La/a/b/n/q;->C0()La/a/b/n/q;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    :cond_0
    return-void
.end method
