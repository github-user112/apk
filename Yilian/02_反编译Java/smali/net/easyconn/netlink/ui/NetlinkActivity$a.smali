.class public Lnet/easyconn/netlink/ui/NetlinkActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/netlink/ui/NetlinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnet/easyconn/netlink/ui/NetlinkActivity;


# direct methods
.method public constructor <init>(Lnet/easyconn/netlink/ui/NetlinkActivity;)V
    .locals 0

    iput-object p1, p0, Lnet/easyconn/netlink/ui/NetlinkActivity$a;->a:Lnet/easyconn/netlink/ui/NetlinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/easyconn/netlink/ui/NetlinkActivity$a;->a:Lnet/easyconn/netlink/ui/NetlinkActivity;

    invoke-static {p1}, Lnet/easyconn/netlink/ui/NetlinkActivity;->a(Lnet/easyconn/netlink/ui/NetlinkActivity;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
