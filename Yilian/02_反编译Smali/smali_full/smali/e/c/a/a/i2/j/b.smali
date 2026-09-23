.class public final synthetic Le/c/a/a/i2/j/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Le/c/b/a/d;


# static fields
.field public static final synthetic a:Le/c/a/a/i2/j/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/i2/j/b;

    invoke-direct {v0}, Le/c/a/a/i2/j/b;-><init>()V

    sput-object v0, Le/c/a/a/i2/j/b;->a:Le/c/a/a/i2/j/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;->a(Lcom/google/android/exoplayer2/extractor/mp4/Track;)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    return-object p1
.end method
