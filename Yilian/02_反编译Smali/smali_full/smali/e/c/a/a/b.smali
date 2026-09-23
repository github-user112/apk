.class public final synthetic Le/c/a/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic a:Le/c/a/a/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/b;

    invoke-direct {v0}, Le/c/a/a/b;-><init>()V

    sput-object v0, Le/c/a/a/b;->a:Le/c/a/a/b;

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

    invoke-static {p1}, Lcom/google/android/exoplayer2/Timeline;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    return-object p1
.end method
