.class public abstract Ljavax/jmdns/impl/tasks/DNSTask;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field public final _jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;


# direct methods
.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-void
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    :goto_0
    return-object p1
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V

    :goto_0
    return-object p1
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;J)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5

    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    invoke-virtual {p1, p2, p3, p4}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    :goto_0
    return-object p1
.end method

.method public addAuthoritativeAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5

    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V

    :goto_0
    return-object p1
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSQuestion;)Ljavax/jmdns/impl/DNSOutgoing;
    .locals 5

    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->isMulticast()Z

    move-result v1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSOutgoing;->getMaxUDPPayload()I

    move-result v2

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSMessage;->getId()I

    move-result v3

    or-int/lit16 v4, v0, 0x200

    invoke-virtual {p1, v4}, Ljavax/jmdns/impl/DNSMessage;->setFlags(I)V

    invoke-virtual {p1, v3}, Ljavax/jmdns/impl/DNSMessage;->setId(I)V

    iget-object v3, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    invoke-virtual {v3, p1}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    new-instance p1, Ljavax/jmdns/impl/DNSOutgoing;

    invoke-direct {p1, v0, v1, v2}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    invoke-virtual {p1, p2}, Ljavax/jmdns/impl/DNSOutgoing;->addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    :goto_0
    return-object p1
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    iget-object v0, p0, Ljavax/jmdns/impl/tasks/DNSTask;->_jmDNSImpl:Ljavax/jmdns/impl/JmDNSImpl;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract start(Ljava/util/Timer;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/DNSTask;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
