.class public final synthetic Lf/a/k/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/k/g0;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lf/a/k/g0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/k/l;->a:Lf/a/k/g0;

    iput-object p2, p0, Lf/a/k/l;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf/a/k/l;->a:Lf/a/k/g0;

    iget-object v1, p0, Lf/a/k/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lf/a/k/g0;->d0(Landroid/graphics/Bitmap;)V

    return-void
.end method
