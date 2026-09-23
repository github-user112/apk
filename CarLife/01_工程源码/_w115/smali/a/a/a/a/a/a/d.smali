.class public final La/a/a/a/a/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/a/a/a/j/e;


# instance fields
.field public b:J

.field public c:I

.field public d:J

.field public e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, La/a/a/a/a/a/d;->e:Z

    return-void
.end method


# virtual methods
.method public F0(La/a/a/a/c;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "ProtocolTracer onConnectionDetached "

    aput-object v1, p1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "CarLife_SDK"

    invoke-static {v0, p1}, La/a/a/a/n/g$a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic O(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->b(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public Q(La/a/a/a/c;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionReattached "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v1, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic b0(La/a/a/a/c;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/a/g;->f(La/a/a/a/h;La/a/a/a/c;)V

    return-void
.end method

.method public c0(La/a/a/a/c;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionEstablished "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v1, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-class v2, La/a/a/a/a/a/e;

    const-string v3, "context"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v1, v3}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/a/b;->n()I

    move-result v3

    const/4 v4, 0x0

    const v5, 0x18001

    if-ne v3, v5, :cond_0

    iput-boolean v4, v0, La/a/a/a/a/a/d;->e:Z

    :cond_0
    const v5, 0x20001

    const-string v6, "args"

    const-string v7, "tag"

    const-string v8, "CarLife_SDK"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v3, v5, :cond_b

    const v5, 0x58001

    if-eq v3, v5, :cond_b

    const v5, 0x10036

    if-eq v3, v5, :cond_b

    const-string v5, " @"

    const-string v12, "ProtocolTracer onReceiveMessage "

    sparse-switch v3, :sswitch_data_0

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v12, v11, v4

    const/4 v12, 0x1

    aput-object v1, v11, v12

    goto :goto_3

    :sswitch_0
    new-array v14, v9, [Ljava/lang/Object;

    aput-object v12, v14, v4

    aput-object v1, v14, v11

    if-gtz v3, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v15, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v15, :cond_4

    const/16 v16, 0x0

    :goto_0
    add-int/lit8 v13, v16, 0x1

    :try_start_1
    aget-object v11, v12, v16

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, v3, :cond_2

    aget-object v11, v12, v16

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_2
    if-lt v13, v15, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v13

    const/4 v11, 0x1

    goto :goto_0

    :catch_1
    :cond_4
    :goto_1
    const/4 v13, 0x0

    .line 2
    :goto_2
    invoke-static {v5, v13}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v10

    .line 3
    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_5

    goto :goto_7

    .line 5
    :cond_5
    invoke-static {v14, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v10, v8, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :goto_3
    if-gtz v3, :cond_6

    goto :goto_5

    .line 6
    :cond_6
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v13, :cond_9

    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v15, v14, 0x1

    :try_start_3
    aget-object v4, v12, v14

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v3, :cond_7

    aget-object v4, v12, v14

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    nop

    :cond_7
    if-lt v15, v13, :cond_8

    goto :goto_5

    :cond_8
    move v14, v15

    const/4 v4, 0x0

    goto :goto_4

    :catch_3
    :cond_9
    :goto_5
    const/4 v13, 0x0

    .line 7
    :goto_6
    invoke-static {v5, v13}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v10

    .line 8
    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v2, :cond_a

    goto :goto_7

    .line 10
    :cond_a
    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v9, v8, v3}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :cond_b
    :goto_7
    iget v2, v1, La/a/a/a/a/a/b;->e:I

    if-ne v2, v10, :cond_c

    .line 12
    iget v2, v0, La/a/a/a/a/a/d;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, La/a/a/a/a/a/d;->c:I

    :cond_c
    iget-wide v2, v0, La/a/a/a/a/a/d;->d:J

    invoke-virtual/range {p2 .. p2}, La/a/a/a/a/a/b;->o()I

    move-result v1

    const/16 v4, 0x8

    add-int/2addr v1, v4

    int-to-long v11, v1

    add-long/2addr v2, v11

    iput-wide v2, v0, La/a/a/a/a/a/d;->d:J

    iget-wide v1, v0, La/a/a/a/a/a/d;->b:J

    const-wide/16 v11, 0x0

    cmp-long v3, v1, v11

    if-nez v3, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, La/a/a/a/a/a/d;->b:J

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v13, v0, La/a/a/a/a/a/d;->b:J

    sub-long v13, v1, v13

    const-wide/16 v17, 0x3e8

    cmp-long v3, v13, v17

    if-lez v3, :cond_f

    iget-wide v11, v0, La/a/a/a/a/a/d;->d:J

    int-to-long v3, v4

    mul-long v11, v11, v3

    const/16 v3, 0x3e8

    int-to-long v4, v3

    mul-long v11, v11, v4

    div-long/2addr v11, v13

    iget v4, v0, La/a/a/a/a/a/d;->c:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v3, v4

    div-long/2addr v3, v13

    const/4 v5, 0x4

    new-array v13, v5, [Ljava/lang/Object;

    const-string v14, "ProtocolTracer bitrate "

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v13, v12

    const-string v11, " frame rate "

    aput-object v11, v13, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v13, v9

    .line 13
    invoke-static {v8, v7}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v3, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez v3, :cond_e

    goto :goto_8

    .line 15
    :cond_e
    invoke-static {v13, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v10, v8, v4}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :goto_8
    iput-wide v1, v0, La/a/a/a/a/a/d;->b:J

    const/4 v1, 0x0

    iput v1, v0, La/a/a/a/a/a/d;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, La/a/a/a/a/a/d;->d:J

    .line 17
    :cond_f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20002 -> :sswitch_0
        0x30006 -> :sswitch_0
        0x30007 -> :sswitch_0
        0x40003 -> :sswitch_0
        0x50003 -> :sswitch_0
    .end sparse-switch
.end method

.method public n0(La/a/a/a/c;La/a/a/a/a/a/b;)Ljava/lang/Boolean;
    .locals 13

    const-class v0, La/a/a/a/a/a/e;

    const-string v1, "context"

    invoke-static {p1, v1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, La/a/a/a/a/a/b;->n()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, " @"

    const-string v4, "args"

    const-string v5, "tag"

    const-string v6, "ProtocolTracer onSendMessage "

    const-string v7, "CarLife_SDK"

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const v11, 0x20001

    if-eq p1, v11, :cond_7

    const v11, 0x30006

    if-eq p1, v11, :cond_7

    const v11, 0x58001

    if-eq p1, v11, :cond_7

    const v11, 0x50003

    if-eq p1, v11, :cond_7

    const v11, 0x10036

    if-eq p1, v11, :cond_7

    const v11, 0x20002

    if-ne p1, v11, :cond_1

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v6, p1, v10

    aput-object p2, p1, v1

    const-string p2, " @MSG_VIDEO_HEARTBEAT"

    aput-object p2, p1, v9

    .line 1
    invoke-static {v7, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p2, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v9, v7, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v10

    aput-object p2, v11, v1

    if-gtz p1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v1, :cond_5

    :goto_0
    add-int/lit8 v6, v10, 0x1

    :try_start_1
    aget-object v12, p2, v10

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, p1, :cond_3

    aget-object v10, p2, v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    if-lt v6, v1, :cond_4

    goto :goto_1

    :cond_4
    move v10, v6

    goto :goto_0

    :catch_1
    nop

    .line 5
    :cond_5
    :goto_1
    invoke-static {v3, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v11, v9

    .line 6
    invoke-static {v7, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_6

    goto :goto_4

    .line 8
    :cond_6
    invoke-static {v11, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v8, v7, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v10

    aput-object p2, v11, v1

    if-gtz p1, :cond_8

    goto :goto_3

    .line 9
    :cond_8
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v1, p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v1, :cond_b

    :goto_2
    add-int/lit8 v6, v10, 0x1

    :try_start_3
    aget-object v12, p2, v10

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    if-ne v12, p1, :cond_9

    aget-object v10, p2, v10

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_9
    if-lt v6, v1, :cond_a

    goto :goto_3

    :cond_a
    move v10, v6

    goto :goto_2

    :catch_3
    nop

    .line 10
    :cond_b
    :goto_3
    invoke-static {v3, v2}, Lc/k/b/c;->f(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v11, v9

    .line 11
    invoke-static {v7, v5}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v4}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p1, La/a/a/a/n/g;->a:La/a/a/a/n/g;

    if-nez p1, :cond_c

    goto :goto_4

    .line 13
    :cond_c
    invoke-static {v11, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v9, v7, p2}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public o(La/a/a/a/c;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "ProtocolTracer onConnectionAttached "

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v2, 0x1

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
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v3, v1, p1}, La/a/a/a/n/g;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
