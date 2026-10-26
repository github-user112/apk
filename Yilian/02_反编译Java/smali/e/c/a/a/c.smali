.class public final synthetic Le/c/a/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable$Creator;


# static fields
.field public static final synthetic a:Le/c/a/a/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/c;

    invoke-direct {v0}, Le/c/a/a/c;-><init>()V

    sput-object v0, Le/c/a/a/c;->a:Le/c/a/a/c;

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

    invoke-static {p1}, Lcom/google/android/exoplayer2/Rating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Rating;

    move-result-object p1

    return-object p1
.end method
