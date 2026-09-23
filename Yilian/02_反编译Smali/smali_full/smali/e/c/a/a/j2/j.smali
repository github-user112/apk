.class public final synthetic Le/c/a/a/j2/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecSelector;


# static fields
.field public static final synthetic a:Le/c/a/a/j2/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/j2/j;

    invoke-direct {v0}, Le/c/a/a/j2/j;-><init>()V

    sput-object v0, Le/c/a/a/j2/j;->a:Le/c/a/a/j2/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
