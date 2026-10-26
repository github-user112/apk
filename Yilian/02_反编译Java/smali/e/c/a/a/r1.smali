.class public final synthetic Le/c/a/a/r1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic a:Le/c/a/a/r1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/r1;

    invoke-direct {v0}, Le/c/a/a/r1;-><init>()V

    sput-object v0, Le/c/a/a/r1;->a:Le/c/a/a/r1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    move-result-object p1

    return-object p1
.end method
