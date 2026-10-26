.class public final synthetic Lf/a/i/i/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;


# direct methods
.method public synthetic constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/i/i/a;->a:Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lf/a/i/i/a;->a:Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;

    invoke-static {v0, p1, p2}, Lf/a/i/i/m;->e(Lnet/easyconn/ecsdk/ECTypes$ECPageInfo;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
