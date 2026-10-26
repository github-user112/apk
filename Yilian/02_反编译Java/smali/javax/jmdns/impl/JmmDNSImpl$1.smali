.class public Ljavax/jmdns/impl/JmmDNSImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmmDNSImpl;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Ljavax/jmdns/impl/JmmDNSImpl;

.field public final synthetic val$mDNS:Ljavax/jmdns/JmDNS;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljavax/jmdns/JmDNS;)V
    .locals 0

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->this$0:Ljavax/jmdns/impl/JmmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->val$mDNS:Ljavax/jmdns/JmDNS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$1;->val$mDNS:Ljavax/jmdns/JmDNS;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
