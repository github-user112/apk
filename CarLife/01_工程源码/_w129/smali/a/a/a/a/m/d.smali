.class public final La/a/a/a/m/d;
.super La/a/a/a/a/e;
.source ""

# interfaces
.implements La/a/a/a/m/c;
.implements La/a/a/a/m/f;


# instance fields
.field public final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final B:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/security/PublicKey;

.field public D:La/a/a/a/a/a/f/a;

.field public final E:La/a/a/a/m/m/b;

.field public F:La/a/a/a/m/f;

.field public final G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La/a/a/a/m/h;",
            ">;"
        }
    .end annotation
.end field

.field public final H:La/a/a/a/m/k/a/c;

.field public final I:La/a/a/a/m/j/b;

.field public final J:La/a/a/a/m/l/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cuid"

    invoke-static {p3, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "features"

    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityClass"

    invoke-static {p5, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configs"

    invoke-static {p6, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p6}, La/a/a/a/a/e;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p4, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    iput-object p5, p0, La/a/a/a/m/d;->B:Ljava/lang/Class;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, La/a/a/a/m/d;->G:Ljava/util/Set;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string p4, "newFixedThreadPool(Runtime.getRuntime().availableProcessors())"

    invoke-static {p1, p4}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "VEHICLE_PROTOCOL_VERSION"

    invoke-virtual {p0, p4, p1}, La/a/a/a/a/e;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 1
    iput p1, p0, La/a/a/a/a/e;->v:I

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, La/a/a/a/a/e;->l()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, La/a/a/a/a/e;->getVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 3
    iput-object p1, p0, La/a/a/a/a/e;->x:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p3, "CONFIG_CONTENT_ENCRYPTION"

    invoke-virtual {p0, p3, p1}, La/a/a/a/a/e;->Y(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    const-string p1, "CONTENT_ENCRYPTION"

    :try_start_0
    const-string p4, "RSA"

    .line 5
    invoke-static {p4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p4

    const/16 p5, 0x800

    new-instance p6, Ljava/security/SecureRandom;

    invoke-direct {p6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p4, p5, p6}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    invoke-virtual {p4}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object p4

    invoke-virtual {p4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p5

    iput-object p5, p0, La/a/a/a/m/d;->C:Ljava/security/PublicKey;

    new-instance p5, La/a/a/a/a/a/f/a;

    invoke-virtual {p4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p4

    const-string p6, "it.private"

    invoke-static {p4, p6}, Lc/k/b/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "RSA/ECB/PKCS1Padding"

    const-string v0, "privateKey"

    .line 6
    invoke-static {p4, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformation"

    invoke-static {p6, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La/a/a/a/a/g;

    invoke-direct {v0, p4, p6}, La/a/a/a/a/g;-><init>(Ljava/security/Key;Ljava/lang/String;)V

    .line 7
    invoke-direct {p5, v0}, La/a/a/a/a/a/f/a;-><init>(La/a/a/a/a/g;)V

    iput-object p5, p0, La/a/a/a/m/d;->D:La/a/a/a/a/a/f/a;

    invoke-virtual {p0, p1, p3}, La/a/a/a/m/d;->G(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p1, p2}, La/a/a/a/m/d;->G(Ljava/lang/String;I)V

    const-string p1, "CarLife_SDK"

    const/4 p5, 0x2

    new-array p6, p5, [Ljava/lang/Object;

    const-string v0, "CarLifeReceiverImpl initEncryption exception: "

    aput-object v0, p6, p2

    aput-object p4, p6, p3

    const-string p2, "tag"

    .line 8
    invoke-static {p1, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "args"

    invoke-static {p6, p2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x6

    .line 10
    invoke-static {p6, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p2, p4, p1, p5}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->s(Ljava/util/Map;)V

    new-instance p1, La/a/a/a/m/m/b;

    invoke-direct {p1, p0}, La/a/a/a/m/m/b;-><init>(La/a/a/a/c;)V

    iput-object p1, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    new-instance p1, La/a/a/a/m/j/b;

    new-instance p2, La/a/a/a/m/a;

    invoke-direct {p2, p0}, La/a/a/a/m/a;-><init>(La/a/a/a/m/d;)V

    invoke-direct {p1, p0, p2}, La/a/a/a/m/j/b;-><init>(La/a/a/a/c;La/a/a/a/m/h;)V

    iput-object p1, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    new-instance p2, La/a/a/a/m/l/a;

    invoke-direct {p2, p0}, La/a/a/a/m/l/a;-><init>(La/a/a/a/c;)V

    iput-object p2, p0, La/a/a/a/m/d;->J:La/a/a/a/m/l/a;

    invoke-virtual {p0, p2}, La/a/a/a/m/d;->H0(La/a/a/a/m/h;)V

    new-instance p2, La/a/a/a/a/a/d;

    invoke-direct {p2, p3}, La/a/a/a/a/a/d;-><init>(Z)V

    invoke-virtual {p0, p2}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    new-instance p2, La/a/a/a/m/k/a/c;

    invoke-direct {p2, p0}, La/a/a/a/m/k/a/c;-><init>(La/a/a/a/c;)V

    iput-object p2, p0, La/a/a/a/m/d;->H:La/a/a/a/m/k/a/c;

    invoke-virtual {p0, p2}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    new-instance p1, La/a/a/a/m/k/a/e;

    iget-object p2, p0, La/a/a/a/m/d;->D:La/a/a/a/a/a/f/a;

    iget-object p3, p0, La/a/a/a/m/d;->C:Ljava/security/PublicKey;

    invoke-direct {p1, p2, p3}, La/a/a/a/m/k/a/e;-><init>(La/a/a/a/a/a/f/a;Ljava/security/PublicKey;)V

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    new-instance p1, La/a/a/a/m/k/a/g;

    invoke-direct {p1}, La/a/a/a/m/k/a/g;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    new-instance p1, La/a/a/a/m/k/a/f;

    invoke-direct {p1, p0, p0}, La/a/a/a/m/k/a/f;-><init>(La/a/a/a/c;La/a/a/a/m/f;)V

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    new-instance p1, La/a/a/a/m/k/a/d;

    invoke-direct {p1}, La/a/a/a/m/k/a/d;-><init>()V

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->A(La/a/a/a/a/j/e;)V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    iget-object v1, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    const/4 v1, 0x1

    const v2, 0x18009

    invoke-interface {v0, v1, v2}, La/a/a/a/c;->z0(II)V

    :cond_0
    return-void
.end method

.method public C(La/a/a/a/m/i;)V
    .locals 1

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    iput-object p1, v0, La/a/a/a/m/j/b;->h:La/a/a/a/m/i;

    return-void
.end method

.method public E(II)V
    .locals 1

    iget-object v0, p0, La/a/a/a/m/d;->J:La/a/a/a/m/l/a;

    .line 1
    iput p1, v0, La/a/a/a/m/l/a;->e:I

    iput p2, v0, La/a/a/a/m/l/a;->f:I

    return-void
.end method

.method public F(La/a/a/a/a/a/b;)La/a/a/a/a/a/b;
    .locals 18

    move-object/from16 v1, p1

    const-string v0, "message"

    invoke-static {v1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v3, v2, La/a/a/a/m/d;->D:La/a/a/a/a/a/f/a;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-static {v1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, La/a/a/a/a/a/b;->n()I

    move-result v4

    iget-object v0, v3, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    const-string v5, "args"

    const-string v6, "tag"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "CarLife_SDK"

    const/4 v10, 0x6

    if-nez v0, :cond_2

    new-array v0, v8, [Ljava/lang/Object;

    const-string v3, "EncryptionTool encryptor does not initialized properly"

    aput-object v3, v0, v7

    .line 2
    invoke-static {v9, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v10, v9, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object v0, v3, La/a/a/a/a/a/f/a;->c:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, La/a/a/a/a/a/b;->j()La/a/a/a/a/a/b;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, La/a/a/a/a/a/b;->o()I

    move-result v0

    invoke-virtual {v11, v0}, La/a/a/a/a/a/b;->t(I)V

    :try_start_0
    iget-object v0, v3, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    invoke-static {v0}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 6
    iget-object v13, v1, La/a/a/a/a/a/b;->i:[B

    .line 7
    invoke-virtual/range {p1 .. p1}, La/a/a/a/a/a/b;->k()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, La/a/a/a/a/a/b;->l()I

    move-result v15

    .line 8
    iget-object v12, v11, La/a/a/a/a/a/b;->i:[B

    .line 9
    invoke-virtual {v11}, La/a/a/a/a/a/b;->k()I

    move-result v17

    const-string v10, "data"

    .line 10
    invoke-static {v13, v10}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "output"

    invoke-static {v12, v10}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, La/a/a/a/a/d;->c:Ljavax/crypto/Cipher;

    move-object v10, v12

    move-object v12, v0

    move-object/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    .line 11
    invoke-virtual {v11, v0}, La/a/a/a/a/a/b;->u(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v11

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v10, 0x4

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "EncryptionTool decrypt exception "

    aput-object v13, v12, v7

    aput-object v0, v12, v8

    const/4 v0, 0x2

    const-string v7, "  "

    aput-object v7, v12, v0

    const/4 v0, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v0

    .line 12
    invoke-static {v9, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v0, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v12, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v9, v5}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    :goto_0
    iget-object v0, v3, La/a/a/a/a/a/f/a;->c:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, La/a/a/a/a/a/b;->s()V

    :goto_1
    return-object v1
.end method

.method public G(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, La/a/a/a/a/e;->x0(Ljava/lang/String;IZ)V

    iget-object v0, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public G0(La/a/a/a/m/e;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->H:La/a/a/a/m/k/a/c;

    .line 1
    monitor-enter v0

    :try_start_0
    const-string v1, "listener"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La/a/a/a/m/k/a/c;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public declared-synchronized H0(La/a/a/a/m/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    iget-object v0, v0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;->getHeight()I

    move-result v0

    invoke-interface {p1, v1, v0}, La/a/a/a/m/h;->b(II)V

    :goto_0
    iget-object v0, p0, La/a/a/a/m/d;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public J(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "event"

    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, La/a/a/a/a/e;->k()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, p0

    iget-object v3, v2, La/a/a/a/m/d;->J:La/a/a/a/m/l/a;

    .line 1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v3, La/a/a/a/m/l/a;->g:I

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v1, v7, :cond_4

    .line 2
    sget-object v1, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v8, 0x6800e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0xc

    invoke-virtual {v1, v4, v8, v9}, La/a/a/a/a/a/b$a;->a(ILjava/lang/Integer;I)La/a/a/a/a/a/b;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    iget-object v4, v1, La/a/a/a/a/a/b;->i:[B

    .line 4
    invoke-virtual {v1}, La/a/a/a/a/a/b;->k()I

    move-result v8

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-static {v9, v4, v8, v5}, Lb/e/b/g;->u(I[BII)V

    add-int/lit8 v5, v8, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-lez v9, :cond_3

    :goto_0
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iget-object v12, v3, La/a/a/a/m/l/a;->i:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v0, v6, v12}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v6, v3, La/a/a/a/m/l/a;->i:Landroid/view/MotionEvent$PointerCoords;

    iget v12, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    float-to-int v12, v12

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    float-to-int v6, v6

    iget-object v13, v3, La/a/a/a/m/l/a;->h:Landroid/graphics/Point;

    .line 6
    iget v14, v3, La/a/a/a/m/l/a;->c:I

    if-eqz v14, :cond_1

    iget v15, v3, La/a/a/a/m/l/a;->d:I

    if-eqz v15, :cond_1

    iget v7, v3, La/a/a/a/m/l/a;->e:I

    if-eqz v7, :cond_1

    iget v2, v3, La/a/a/a/m/l/a;->f:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    mul-int v12, v12, v14

    div-int/2addr v12, v7

    iput v12, v13, Landroid/graphics/Point;->x:I

    mul-int v6, v6, v15

    div-int/2addr v6, v2

    goto :goto_2

    :cond_1
    :goto_1
    iput v12, v13, Landroid/graphics/Point;->x:I

    :goto_2
    iput v6, v13, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    .line 7
    invoke-static {v11, v4, v5, v2}, Lb/e/b/g;->u(I[BII)V

    add-int/2addr v5, v2

    iget-object v2, v3, La/a/a/a/m/l/a;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v6, 0x2

    invoke-static {v2, v4, v5, v6}, Lb/e/b/g;->u(I[BII)V

    add-int/2addr v5, v6

    iget-object v2, v3, La/a/a/a/m/l/a;->h:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2, v4, v5, v6}, Lb/e/b/g;->u(I[BII)V

    add-int/2addr v5, v6

    if-lt v10, v9, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v2, p0

    move v6, v10

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    sub-int/2addr v5, v8

    .line 8
    invoke-virtual {v1, v5}, La/a/a/a/a/a/b;->u(I)V

    iget-object v0, v3, La/a/a/a/m/l/a;->b:La/a/a/a/c;

    invoke-interface {v0, v1}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    goto :goto_5

    .line 9
    :cond_4
    sget-object v1, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const v2, 0x68001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2, v6, v5}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setAction(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, La/a/a/a/m/l/a;->c(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setX(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, La/a/a/a/m/l/a;->d(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setY(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v2

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, La/a/a/a/m/l/a;->c(I)I

    move-result v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    .line 11
    :goto_4
    invoke-virtual {v2, v4}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointerx(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v5, :cond_6

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, La/a/a/a/m/l/a;->d(I)I

    move-result v6

    .line 13
    :cond_6
    invoke-virtual {v2, v6}, Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;->setPointery(I)Lcom/baidu/carlife/protobuf/CarlifeTouchActionProto$CarlifeTouchAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object v0

    invoke-virtual {v1, v0}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v3, La/a/a/a/m/l/a;->b:La/a/a/a/c;

    invoke-interface {v0, v1}, La/a/a/a/c;->K0(La/a/a/a/a/a/b;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public K0(La/a/a/a/a/a/b;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    invoke-virtual {v0, p1}, La/a/a/a/m/m/b;->K0(La/a/a/a/a/a/b;)V

    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    invoke-virtual {p0, p1}, La/a/a/a/a/e;->s(Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized S(La/a/a/a/m/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public U()V
    .locals 0

    invoke-virtual {p0}, La/a/a/a/m/d;->a()V

    return-void
.end method

.method public V()V
    .locals 1

    iget-object v0, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    invoke-virtual {v0}, La/a/a/a/m/m/b;->V()V

    return-void
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    .line 1
    iget-object v0, v0, La/a/a/a/m/m/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/j/c;

    invoke-virtual {v1}, La/a/a/a/a/j/c;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d0(La/a/a/a/a/f;)V
    .locals 2

    const-string v0, "displaySpec"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, La/a/a/a/m/j/b;->g:La/a/a/a/a/f;

    return-void
.end method

.method public e(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->F:La/a/a/a/m/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, La/a/a/a/m/f;->e(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public e0(Landroid/view/Surface;)V
    .locals 8

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    monitor-enter v0

    :try_start_0
    iput-object p1, v0, La/a/a/a/m/j/b;->f:Landroid/view/Surface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    const-string p1, "CarLife_SDK"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "RemoteDisplayRenderer setSurface to null"

    aput-object v5, v4, v2

    const-string v2, "tag"

    .line 2
    invoke-static {p1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v4, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, p1, v4}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p1, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-nez p1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, La/a/a/a/m/j/a;->b()V

    const/4 p1, 0x0

    iput-object p1, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    iget-object p1, v0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    const v1, 0x1800a

    invoke-interface {p1, v3, v1}, La/a/a/a/c;->z0(II)V

    goto :goto_2

    :cond_2
    iget-object v4, v0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    if-eqz v4, :cond_4

    iget-object v4, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-nez v4, :cond_4

    new-instance v4, La/a/a/a/m/j/a;

    iget-object v5, v0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    iget-object v6, v0, La/a/a/a/m/j/b;->d:Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;

    invoke-static {v6}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    invoke-direct {v4, v5, p1, v6}, La/a/a/a/m/j/a;-><init>(La/a/a/a/c;Landroid/view/Surface;Lcom/baidu/carlife/protobuf/CarlifeVideoEncoderInfoProto$CarlifeVideoEncoderInfo;)V

    iput-object v4, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    iget-object p1, v0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    const v4, 0x18009

    invoke-interface {p1, v3, v4}, La/a/a/a/c;->z0(II)V

    const-string p1, "CarLife_SDK"

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "RemoteDisplayRenderer create decoder delayed"

    aput-object v5, v4, v2

    const-string v2, "tag"

    .line 6
    invoke-static {p1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v4, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, p1, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object v4, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v5, "CarLife_SDK"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "RemoteDisplayRenderer decoder set new surface"

    aput-object v7, v6, v2

    const-string v2, "tag"

    .line 10
    invoke-static {v5, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v6, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v5, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v1, "surface"

    .line 13
    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v4, La/a/a/a/m/j/a;->g:Z

    if-nez v1, :cond_7

    iget-object v1, v4, La/a/a/a/m/j/a;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public i(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setConnectType, "

    invoke-static {v2, v1}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CarLife_SDK"

    const-string v2, "tag"

    .line 1
    invoke-static {v1, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v0, v2}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    .line 3
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "CONNECT_TYPE"

    .line 4
    invoke-virtual {p0, v0, p1}, La/a/a/a/m/d;->G(Ljava/lang/String;I)V

    iget-object p1, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    invoke-virtual {p1}, La/a/a/a/m/m/b;->j()V

    iget-object p1, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    invoke-virtual {p1}, La/a/a/a/m/m/b;->V()V

    return-void
.end method

.method public i0()V
    .locals 3

    iget-object v0, p0, La/a/a/a/m/d;->I:La/a/a/a/m/j/b;

    .line 1
    iget-object v1, v0, La/a/a/a/m/j/b;->e:La/a/a/a/m/j/a;

    if-eqz v1, :cond_0

    iget-object v0, v0, La/a/a/a/m/j/b;->b:La/a/a/a/c;

    const/4 v1, 0x1

    const v2, 0x1800a

    invoke-interface {v0, v1, v2}, La/a/a/a/c;->z0(II)V

    :cond_0
    return-void
.end method

.method public o0(La/a/a/a/a/a/b;)La/a/a/a/a/a/b;
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/m/d;->D:La/a/a/a/a/a/f/a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/a/a/a/a/a/b;->j()La/a/a/a/a/a/b;

    move-result-object v0

    invoke-virtual {p1}, La/a/a/a/a/a/b;->l()I

    move-result v2

    iget-object v3, v1, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    invoke-static {v3}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v3, v3, La/a/a/a/a/d;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v2

    .line 3
    invoke-virtual {v0, v2}, La/a/a/a/a/a/b;->u(I)V

    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, La/a/a/a/a/a/b;->t(I)V

    iget-object v1, v1, La/a/a/a/a/a/f/a;->b:La/a/a/a/a/d;

    invoke-static {v1}, Lc/k/b/c;->b(Ljava/lang/Object;)V

    .line 4
    iget-object v3, p1, La/a/a/a/a/a/b;->i:[B

    .line 5
    invoke-virtual {p1}, La/a/a/a/a/a/b;->k()I

    move-result v4

    invoke-virtual {p1}, La/a/a/a/a/a/b;->l()I

    move-result v5

    .line 6
    iget-object v6, v0, La/a/a/a/a/a/b;->i:[B

    .line 7
    invoke-virtual {v0}, La/a/a/a/a/a/b;->k()I

    move-result v7

    const-string p1, "data"

    .line 8
    invoke-static {v3, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "output"

    invoke-static {v6, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, La/a/a/a/a/d;->b:Ljavax/crypto/Cipher;

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-object p1, v0

    :goto_0
    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "encryptor does not initialized properly"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q0(I)V
    .locals 5

    invoke-virtual {p0}, La/a/a/a/a/e;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, La/a/a/a/a/a/b;->b:La/a/a/a/a/a/b$a;

    const/4 v1, 0x6

    const v2, 0x68008

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, La/a/a/a/a/a/b$a;->b(La/a/a/a/a/a/b$a;ILjava/lang/Integer;II)La/a/a/a/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;->setKeycode(I)Lcom/baidu/carlife/protobuf/CarlifeCarHardKeyCodeProto$CarlifeCarHardKeyCode$Builder;

    move-result-object p1

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    invoke-virtual {v0, p1}, La/a/a/a/a/a/b;->r(La/c/a/x;)V

    iget-object p1, p0, La/a/a/a/m/d;->E:La/a/a/a/m/m/b;

    invoke-virtual {p1, v0}, La/a/a/a/m/m/b;->K0(La/a/a/a/a/a/b;)V

    :cond_0
    return-void
.end method

.method public t(La/a/a/a/m/e;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/m/d;->H:La/a/a/a/m/k/a/c;

    .line 1
    monitor-enter v0

    :try_start_0
    const-string v1, "listener"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/c;->w0()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, v0, La/a/a/a/m/k/a/c;->b:La/a/a/a/c;

    invoke-interface {v1}, La/a/a/a/c;->w0()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, v0, La/a/a/a/m/k/a/c;->d:I

    move-object v2, p1

    check-cast v2, Lcom/baidu/carlifevehicle/CarlifeActivity;

    invoke-virtual {v2, v1}, Lcom/baidu/carlifevehicle/CarlifeActivity;->s(I)V

    :cond_1
    iget-object v1, v0, La/a/a/a/m/k/a/c;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public t0()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, La/a/a/a/a/e;->F0(La/a/a/a/c;)V

    .line 2
    iget-object v0, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    invoke-virtual {p0, v0}, La/a/a/a/a/e;->s(Ljava/util/Map;)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "channel"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cuid"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;->newBuilder()Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setChannel(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setCuid(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, La/a/a/a/a/e;->l()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionCode(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, La/a/a/a/a/e;->getVersionName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectSuccessCount(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;->setConnectTime(I)Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, La/c/a/p$b;->build()La/c/a/p;

    move-result-object p1

    check-cast p1, Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    .line 1
    iput-object p1, p0, La/a/a/a/a/e;->x:Lcom/baidu/carlife/protobuf/CarlifeStatisticsInfoProto$CarlifeStatisticsInfo;

    return-void
.end method

.method public x0(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, La/a/a/a/a/e;->x0(Ljava/lang/String;IZ)V

    if-eqz p3, :cond_0

    iget-object p3, p0, La/a/a/a/m/d;->A:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public y0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/m/d;->B:Ljava/lang/Class;

    return-object v0
.end method

.method public z(La/a/a/a/m/f;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, La/a/a/a/m/d;->F:La/a/a/a/m/f;

    return-void
.end method
