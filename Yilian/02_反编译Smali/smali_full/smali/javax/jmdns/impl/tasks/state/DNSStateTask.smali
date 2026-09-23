.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source ""


# static fields
.field public static _defaultTTL:I

.field public static jmDNSLogger:Ljavax/jmdns/JmDNSLogger;

.field public static logger1:Ljava/util/logging/Logger;


# instance fields
.field public _taskState:Ljavax/jmdns/impl/constants/DNSState;

.field public final _ttl:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    invoke-static {v0}, Ljavax/jmdns/JmDNSLogger;->getJmDNSLogger(Ljava/util/logging/Logger;)Ljavax/jmdns/JmDNSLogger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->jmDNSLogger:Ljavax/jmdns/JmDNSLogger;

    const/16 v0, 0xe10

    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    return-void
.end method

.method public static defaultTTL()I
    .locals 1

    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return v0
.end method

.method public static setDefaultTTL(I)V
    .locals 0

    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return-void
.end method


# virtual methods
.method public advanceObjectsState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSStatefulObject;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method public abstract advanceTask()V
.end method

.method public associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public abstract buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public abstract buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public abstract checkRunCondition()Z
.end method

.method public abstract createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public getTTL()I
    .locals 1

    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    return v0
.end method

.method public abstract getTaskDescription()Ljava/lang/String;
.end method

.method public getTaskState()Ljavax/jmdns/impl/constants/DNSState;
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method public abstract recoverTask(Ljava/lang/Throwable;)V
.end method

.method public removeAssociation()V
    .locals 2

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;

    check-cast v1, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public run()V
    .locals 7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->createOugoing()Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->checkRunCondition()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".run() JmDNS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/ServiceInfo;

    check-cast v3, Ljavax/jmdns/impl/ServiceInfoImpl;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".run() JmDNS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v0

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_3
    invoke-virtual {v0}, Ljavax/jmdns/impl/DNSMessage;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".run() JmDNS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    sget-object v1, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".run() exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->recoverTask(Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceTask()V

    return-void
.end method

.method public setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 0

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-void
.end method
