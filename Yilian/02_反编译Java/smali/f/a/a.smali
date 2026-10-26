.class public final synthetic Lf/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnet/easyconn/EcApplication;


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/EcApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/a;->a:Lnet/easyconn/EcApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf/a/a;->a:Lnet/easyconn/EcApplication;

    invoke-virtual {v0}, Lnet/easyconn/EcApplication;->a()V

    return-void
.end method
