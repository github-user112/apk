.class public Ljavax/jmdns/impl/JmmDNSImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/jmdns/impl/JmmDNSImpl;->getServiceInfos(Ljava/lang/String;Ljava/lang/String;ZJ)[Ljavax/jmdns/ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Ljavax/jmdns/impl/JmmDNSImpl;

.field public final synthetic val$mDNS:Ljavax/jmdns/JmDNS;

.field public final synthetic val$name:Ljava/lang/String;

.field public final synthetic val$persistent:Z

.field public final synthetic val$result:Ljava/util/Set;

.field public final synthetic val$timeout:J

.field public final synthetic val$type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmmDNSImpl;Ljava/util/Set;Ljavax/jmdns/JmDNS;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->this$0:Ljavax/jmdns/impl/JmmDNSImpl;

    iput-object p2, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$result:Ljava/util/Set;

    iput-object p3, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$mDNS:Ljavax/jmdns/JmDNS;

    iput-object p4, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$type:Ljava/lang/String;

    iput-object p5, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$name:Ljava/lang/String;

    iput-boolean p6, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$persistent:Z

    iput-wide p7, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$result:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$mDNS:Ljavax/jmdns/JmDNS;

    iget-object v2, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$type:Ljava/lang/String;

    iget-object v3, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$name:Ljava/lang/String;

    iget-boolean v4, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$persistent:Z

    iget-wide v5, p0, Ljavax/jmdns/impl/JmmDNSImpl$2;->val$timeout:J

    invoke-virtual/range {v1 .. v6}, Ljavax/jmdns/JmDNS;->getServiceInfo(Ljava/lang/String;Ljava/lang/String;ZJ)Ljavax/jmdns/ServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
