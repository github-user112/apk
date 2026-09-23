.class public La/a/b/n/h$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/b/n/h$b;


# direct methods
.method public constructor <init>(La/a/b/n/h$b;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$b$c;->b:La/a/b/n/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, La/a/b/n/h$b$c;->b:La/a/b/n/h$b;

    iget-object p1, p1, La/a/b/n/h$b;->d:La/a/b/n/h;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 2
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, La/a/a/a/l/a;->e:Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/a/a/l/a;->a()V

    return-void
.end method
