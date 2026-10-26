.class public Lnet/easyconn/framework/video/SoftSurfaceView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/framework/video/SoftSurfaceView;->setParams(Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic b:Lnet/easyconn/framework/video/SoftSurfaceView;


# direct methods
.method public constructor <init>(Lnet/easyconn/framework/video/SoftSurfaceView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$a;->b:Lnet/easyconn/framework/video/SoftSurfaceView;

    iput-object p2, p0, Lnet/easyconn/framework/video/SoftSurfaceView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/framework/video/SoftSurfaceView$a;->b:Lnet/easyconn/framework/video/SoftSurfaceView;

    iget-object v1, p0, Lnet/easyconn/framework/video/SoftSurfaceView$a;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
