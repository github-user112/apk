.class public La/a/b/s/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/s/a;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/b/s/a;


# direct methods
.method public constructor <init>(La/a/b/s/a;)V
    .locals 0

    iput-object p1, p0, La/a/b/s/a$b;->b:La/a/b/s/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, La/a/b/s/a$b;->b:La/a/b/s/a;

    .line 1
    iget-object p1, p1, La/a/b/s/a;->g:La/a/b/s/a$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, La/a/b/s/a$c;->a()V

    :cond_0
    iget-object p1, p0, La/a/b/s/a$b;->b:La/a/b/s/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
