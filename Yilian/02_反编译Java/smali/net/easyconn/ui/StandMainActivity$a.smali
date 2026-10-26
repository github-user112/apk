.class public Lnet/easyconn/ui/StandMainActivity$a;
.super Le/e/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/easyconn/ui/StandMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/easyconn/ui/StandMainActivity;


# direct methods
.method public constructor <init>(Lnet/easyconn/ui/StandMainActivity;Le/e/a/d;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/ui/StandMainActivity$a;->b:Lnet/easyconn/ui/StandMainActivity;

    invoke-direct {p0, p2}, Le/e/a/b;-><init>(Le/e/a/d;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lnet/easyconn/ui/StandMainActivity$a;->b:Lnet/easyconn/ui/StandMainActivity;

    const v0, 0x7f0d003d

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
