.class public Lnet/easyconn/EcApplication$b;
.super Le/e/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/EcApplication;->onCreateImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lnet/easyconn/EcApplication;Le/e/a/d;)V
    .locals 0

    invoke-direct {p0, p2}, Le/e/a/b;-><init>(Le/e/a/d;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/String;)Z
    .locals 0

    sget-boolean p1, Lnet/easyconn/EcApplication;->isDiskLogEnable:Z

    return p1
.end method
