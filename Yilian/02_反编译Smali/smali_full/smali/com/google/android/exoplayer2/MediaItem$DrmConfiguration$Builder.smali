.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public forceDefaultLicenseUri:Z

.field public forcedSessionTrackTypes:Le/c/b/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/s<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public keySetId:[B

.field public licenseRequestHeaders:Le/c/b/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/t<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public licenseUri:Landroid/net/Uri;

.field public multiSession:Z

.field public playClearContentWithoutKey:Z

.field public scheme:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Le/c/b/b/l0;->g:Le/c/b/b/t;

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Le/c/b/b/t;

    invoke-static {}, Le/c/b/b/s;->p()Le/c/b/b/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Le/c/b/b/s;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Le/c/b/b/t;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Le/c/b/b/t;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Le/c/b/b/s;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Le/c/b/b/s;

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->access$600(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 3
    sget-object p1, Le/c/b/b/l0;->g:Le/c/b/b/t;

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Le/c/b/b/t;

    invoke-static {}, Le/c/b/b/s;->p()Le/c/b/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Le/c/b/b/s;

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Le/c/b/b/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Le/c/b/b/s;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Le/c/b/b/t;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Le/c/b/b/t;

    return-object p0
.end method

.method private setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public forceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Le/c/b/b/s;->r(Ljava/lang/Object;Ljava/lang/Object;)Le/c/b/b/s;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Le/c/b/b/s;->p()Le/c/b/b/s;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return-object p0
.end method

.method public setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/b/s;->l(Ljava/util/Collection;)Le/c/b/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Le/c/b/b/s;

    return-object p0
.end method

.method public setKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object p0
.end method

.method public setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    invoke-static {p1}, Le/c/b/b/t;->a(Ljava/util/Map;)Le/c/b/b/t;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Le/c/b/b/t;

    return-object p0
.end method

.method public setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return-object p0
.end method

.method public setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return-object p0
.end method

.method public setScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method
