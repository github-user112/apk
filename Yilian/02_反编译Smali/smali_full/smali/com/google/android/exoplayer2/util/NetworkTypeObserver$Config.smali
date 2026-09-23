.class public final Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Config;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NetworkTypeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# static fields
.field public static volatile disable5GNsaDisambiguation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Config;->disable5GNsaDisambiguation:Z

    return v0
.end method

.method public static disable5GNsaDisambiguation()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/exoplayer2/util/NetworkTypeObserver$Config;->disable5GNsaDisambiguation:Z

    return-void
.end method
