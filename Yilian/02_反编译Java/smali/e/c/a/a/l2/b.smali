.class public final synthetic Le/c/a/a/l2/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelector$InvalidationListener;


# static fields
.field public static final synthetic a:Le/c/a/a/l2/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/l2/b;

    invoke-direct {v0}, Le/c/a/a/l2/b;-><init>()V

    sput-object v0, Le/c/a/a/l2/b;->a:Le/c/a/a/l2/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTrackSelectionsInvalidated()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c()V

    return-void
.end method
