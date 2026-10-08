.class public final synthetic La/a/b/n/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:La/a/b/n/m;


# direct methods
.method public synthetic constructor <init>(La/a/b/n/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/n/d;->b:La/a/b/n/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/a/b/n/d;->b:La/a/b/n/m;

    .line 1
    sget-object v0, La/a/b/n/m;->Z:La/a/b/n/m;

    const-string v0, "this$0"

    .line 2
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    if-eqz p1, :cond_0

    invoke-static {}, La/a/b/n/q;->C0()La/a/b/n/q;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    :cond_0
    return-void
.end method
