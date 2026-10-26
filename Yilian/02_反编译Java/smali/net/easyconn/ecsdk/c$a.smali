.class public Lnet/easyconn/ecsdk/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ecsdk/c;->a(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/c;


# direct methods
.method public constructor <init>(Lnet/easyconn/ecsdk/c;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ecsdk/c$a;->a:Lnet/easyconn/ecsdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lnet/easyconn/ecsdk/c$a;->a:Lnet/easyconn/ecsdk/c;

    invoke-static {v0}, Lnet/easyconn/ecsdk/c;->a(Lnet/easyconn/ecsdk/c;)V

    return-void
.end method
