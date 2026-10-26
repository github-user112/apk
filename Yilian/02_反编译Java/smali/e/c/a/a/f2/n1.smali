.class public final synthetic Le/c/a/a/f2/n1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Le/c/b/a/k;


# static fields
.field public static final synthetic a:Le/c/a/a/f2/n1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/f2/n1;

    invoke-direct {v0}, Le/c/a/a/f2/n1;-><init>()V

    sput-object v0, Le/c/a/a/f2/n1;->a:Le/c/a/a/f2/n1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/analytics/DefaultPlaybackSessionManager;->generateDefaultSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
