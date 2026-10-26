.class public final Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EncodedValueTransformer"
.end annotation


# instance fields
.field public final out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

.field public final synthetic this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;Lcom/tencent/tinker/android/dex/util/ByteOutput;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transformArray(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;Lcom/tencent/tinker/android/dex/EncodedValueReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    return-void
.end method

.method private transformAnnotation(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readAnnotation()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->getAnnotationType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readAnnotationName()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transform(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformArray(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readArray()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-static {v1, v0}, Lcom/tencent/tinker/android/dex/Leb128;->writeUnsignedLeb128(Lcom/tencent/tinker/android/dex/util/ByteOutput;I)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transform(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeTypeAndArg(II)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    shl-int/lit8 p2, p2, 0x5

    or-int/2addr p1, p2

    invoke-interface {v0, p1}, Lcom/tencent/tinker/android/dex/util/ByteOutput;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public transform(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->peek()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    const-string v1, "Unexpected type: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->peek()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readBoolean()Z

    move-result p1

    const/16 v0, 0x1f

    invoke-direct {p0, v0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readNull()V

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    invoke-direct {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transformAnnotation(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    goto/16 :goto_4

    :pswitch_3
    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->writeTypeAndArg(II)V

    invoke-direct {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->transformArray(Lcom/tencent/tinker/android/dex/EncodedValueReader;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readEnum()I

    move-result p1

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readMethod()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustMethodIdIndex(I)I

    move-result p1

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readField()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustFieldIdIndex(I)I

    move-result p1

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readType()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustTypeIdIndex(I)I

    move-result p1

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->this$0:Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readString()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap;->adjustStringIndex(I)I

    move-result p1

    :goto_1
    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    iget-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-static {p1, v2, v0, v1}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeRightZeroExtendedValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readInt()I

    move-result p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readChar()C

    move-result p1

    int-to-long v3, p1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeUnsignedIntegralValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readShort()S

    move-result p1

    :goto_2
    int-to-long v3, p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readLong()J

    move-result-wide v3

    :goto_3
    invoke-static {v0, v2, v3, v4}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/util/AbstractIndexMap$EncodedValueTransformer;->out:Lcom/tencent/tinker/android/dex/util/ByteOutput;

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/EncodedValueReader;->readByte()B

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/EncodedValueCodec;->writeSignedIntegralValue(Lcom/tencent/tinker/android/dex/util/ByteOutput;IJ)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
