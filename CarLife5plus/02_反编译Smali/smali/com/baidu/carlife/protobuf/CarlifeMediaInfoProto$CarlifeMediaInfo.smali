.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
.super Lcom/google/protobuf/d0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarlifeMediaInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/d0;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALBUMART_FIELD_NUMBER:I = 0x5

.field public static final ALBUM_FIELD_NUMBER:I = 0x4

.field public static final ARTIST_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

.field public static final DURATION_FIELD_NUMBER:I = 0x6

.field public static final MODE_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/v0; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/v0;"
        }
    .end annotation
.end field

.field public static final PLAYLISTNUM_FIELD_NUMBER:I = 0x7

.field public static final SONGID_FIELD_NUMBER:I = 0x8

.field public static final SONG_FIELD_NUMBER:I = 0x2

.field public static final SOURCE_FIELD_NUMBER:I = 0x1


# instance fields
.field private albumArt_:Lcom/google/protobuf/i;

.field private album_:Ljava/lang/String;

.field private artist_:Ljava/lang/String;

.field private bitField0_:I

.field private duration_:I

.field private memoizedIsInitialized:B

.field private mode_:I

.field private playlistNum_:I

.field private songId_:Ljava/lang/String;

.field private song_:Ljava/lang/String;

.field private source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->makeImmutable()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/d0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v1, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/h;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSource(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbum(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearAlbum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbumBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setAlbumArt(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearAlbumArt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setDuration(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearDuration()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setPlaylistNum(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearPlaylistNum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$1900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSource()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSongId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongIdBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setMode(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearMode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSourceBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSong(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearSong()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setSongBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setArtist(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->clearArtist()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Lcom/google/protobuf/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->setArtistBytes(Lcom/google/protobuf/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAlbum()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearAlbumArt()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbumArt()Lcom/google/protobuf/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 16
    .line 17
    return-void
.end method

.method private clearArtist()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearDuration()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearMode()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x101

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearPlaylistNum()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearSong()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x3

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearSongId()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit16 v0, v0, -0x81

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method private clearSource()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultInstance()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/d0;->toBuilder()Lcom/google/protobuf/t;

    move-result-object v0

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/t;->mergeFrom(Lcom/google/protobuf/d0;)Lcom/google/protobuf/t;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseDelimitedFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 2
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/i;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 7
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 8
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Lcom/google/protobuf/j;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 5
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;Ljava/io/InputStream;Lcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 3
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[B)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/r;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
    .locals 1

    .line 4
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/d0;->parseFrom(Lcom/google/protobuf/d0;[BLcom/google/protobuf/r;)Lcom/google/protobuf/d0;

    move-result-object p0

    check-cast p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/v0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/d0;->getParserForType()Lcom/google/protobuf/v0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setAlbum(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setAlbumArt(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 11
    .line 12
    return-void
.end method

.method private setAlbumBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setArtist(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setArtistBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setDuration(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 8
    .line 9
    return-void
.end method

.method private setPlaylistNum(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 8
    .line 9
    return-void
.end method

.method private setSong(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setSongBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setSongId(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setSongIdBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit16 v0, v0, 0x80

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private setSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private setSourceBytes(Lcom/google/protobuf/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/protobuf/i;->k()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/b0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :pswitch_0
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-class p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    new-instance p2, Lcom/google/protobuf/u;

    .line 29
    .line 30
    sget-object p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 31
    .line 32
    invoke-direct {p2, p3}, Lcom/google/protobuf/u;-><init>(Lcom/google/protobuf/d0;)V

    .line 33
    .line 34
    .line 35
    sput-object p2, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p2

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    monitor-exit p1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p2

    .line 44
    :cond_1
    :goto_2
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->PARSER:Lcom/google/protobuf/v0;

    .line 45
    .line 46
    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;

    .line 48
    .line 49
    invoke-direct {p1, v2}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;-><init>(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$1;)V

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :pswitch_2
    new-instance p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3
    check-cast p2, Lcom/google/protobuf/j;

    .line 60
    .line 61
    check-cast p3, Lcom/google/protobuf/r;

    .line 62
    .line 63
    :cond_2
    :goto_3
    if-nez v1, :cond_d

    .line 64
    .line 65
    :try_start_1
    invoke-virtual {p2}, Lcom/google/protobuf/j;->t()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const/16 p3, 0xa

    .line 72
    .line 73
    if-eq p1, p3, :cond_c

    .line 74
    .line 75
    const/16 p3, 0x12

    .line 76
    .line 77
    if-eq p1, p3, :cond_b

    .line 78
    .line 79
    const/16 p3, 0x1a

    .line 80
    .line 81
    if-eq p1, p3, :cond_a

    .line 82
    .line 83
    const/16 p3, 0x22

    .line 84
    .line 85
    if-eq p1, p3, :cond_9

    .line 86
    .line 87
    const/16 p3, 0x2a

    .line 88
    .line 89
    if-eq p1, p3, :cond_8

    .line 90
    .line 91
    const/16 p3, 0x30

    .line 92
    .line 93
    if-eq p1, p3, :cond_7

    .line 94
    .line 95
    const/16 p3, 0x38

    .line 96
    .line 97
    if-eq p1, p3, :cond_6

    .line 98
    .line 99
    const/16 p3, 0x42

    .line 100
    .line 101
    if-eq p1, p3, :cond_5

    .line 102
    .line 103
    const/16 p3, 0x48

    .line 104
    .line 105
    if-eq p1, p3, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/d0;->parseUnknownField(ILcom/google/protobuf/j;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_2

    .line 112
    .line 113
    :cond_3
    const/4 v1, 0x1

    .line 114
    goto :goto_3

    .line 115
    :catchall_1
    move-exception p1

    .line 116
    goto/16 :goto_4

    .line 117
    .line 118
    :catch_0
    move-exception p1

    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :catch_1
    move-exception p1

    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :cond_4
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 125
    .line 126
    or-int/lit16 p1, p1, 0x100

    .line 127
    .line 128
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 142
    .line 143
    or-int/lit16 p3, p3, 0x80

    .line 144
    .line 145
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 146
    .line 147
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 151
    .line 152
    or-int/lit8 p1, p1, 0x40

    .line 153
    .line 154
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 155
    .line 156
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 164
    .line 165
    or-int/lit8 p1, p1, 0x20

    .line 166
    .line 167
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 168
    .line 169
    invoke-virtual {p2}, Lcom/google/protobuf/j;->n()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 177
    .line 178
    or-int/lit8 p1, p1, 0x10

    .line 179
    .line 180
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/google/protobuf/j;->g()Lcom/google/protobuf/h;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 194
    .line 195
    or-int/lit8 p3, p3, 0x8

    .line 196
    .line 197
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 198
    .line 199
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_a
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 208
    .line 209
    or-int/lit8 p3, p3, 0x4

    .line 210
    .line 211
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 212
    .line 213
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 214
    .line 215
    goto/16 :goto_3

    .line 216
    .line 217
    :cond_b
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 222
    .line 223
    or-int/lit8 p3, p3, 0x2

    .line 224
    .line 225
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 226
    .line 227
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 228
    .line 229
    goto/16 :goto_3

    .line 230
    .line 231
    :cond_c
    invoke-virtual {p2}, Lcom/google/protobuf/j;->s()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 236
    .line 237
    or-int/2addr p3, v0

    .line 238
    iput p3, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 239
    .line 240
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/protobuf/o0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :goto_4
    throw p1

    .line 245
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    .line 246
    .line 247
    new-instance p3, Lcom/google/protobuf/o0;

    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    throw p2

    .line 260
    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    .line 261
    .line 262
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    throw p2

    .line 266
    :cond_d
    :pswitch_4
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 267
    .line 268
    return-object p1

    .line 269
    :pswitch_5
    check-cast p2, Lcom/google/protobuf/c0;

    .line 270
    .line 271
    check-cast p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 284
    .line 285
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 302
    .line 303
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 320
    .line 321
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 338
    .line 339
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 350
    .line 351
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 356
    .line 357
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->h(ZLcom/google/protobuf/i;ZLcom/google/protobuf/i;)Lcom/google/protobuf/i;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    .line 364
    .line 365
    .line 366
    move-result p1

    .line 367
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 368
    .line 369
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 374
    .line 375
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 380
    .line 381
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 386
    .line 387
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 392
    .line 393
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 394
    .line 395
    .line 396
    move-result p1

    .line 397
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    iget-object v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 410
    .line 411
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/google/protobuf/c0;->d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    iput-object p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 422
    .line 423
    invoke-virtual {p3}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    iget v2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 428
    .line 429
    invoke-interface {p2, v0, v2, p1, v1}, Lcom/google/protobuf/c0;->l(IIZZ)I

    .line 430
    .line 431
    .line 432
    move-result p1

    .line 433
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 434
    .line 435
    sget-object p1, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/a0;

    .line 436
    .line 437
    if-ne p2, p1, :cond_e

    .line 438
    .line 439
    iget p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 440
    .line 441
    iget p2, p3, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 442
    .line 443
    or-int/2addr p1, p2

    .line 444
    iput p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 445
    .line 446
    :cond_e
    return-object p0

    .line 447
    :pswitch_6
    iget-byte p1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 448
    .line 449
    if-ne p1, v0, :cond_f

    .line 450
    .line 451
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 452
    .line 453
    return-object p1

    .line 454
    :cond_f
    if-nez p1, :cond_10

    .line 455
    .line 456
    goto :goto_7

    .line 457
    :cond_10
    check-cast p2, Ljava/lang/Boolean;

    .line 458
    .line 459
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    if-nez p2, :cond_11

    .line 468
    .line 469
    if-eqz p1, :cond_19

    .line 470
    .line 471
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 472
    .line 473
    return-object v2

    .line 474
    :cond_11
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-nez p2, :cond_12

    .line 479
    .line 480
    if-eqz p1, :cond_19

    .line 481
    .line 482
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 483
    .line 484
    return-object v2

    .line 485
    :cond_12
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    .line 486
    .line 487
    .line 488
    move-result p2

    .line 489
    if-nez p2, :cond_13

    .line 490
    .line 491
    if-eqz p1, :cond_19

    .line 492
    .line 493
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 494
    .line 495
    return-object v2

    .line 496
    :cond_13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    .line 497
    .line 498
    .line 499
    move-result p2

    .line 500
    if-nez p2, :cond_14

    .line 501
    .line 502
    if-eqz p1, :cond_19

    .line 503
    .line 504
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 505
    .line 506
    return-object v2

    .line 507
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    .line 508
    .line 509
    .line 510
    move-result p2

    .line 511
    if-nez p2, :cond_15

    .line 512
    .line 513
    if-eqz p1, :cond_19

    .line 514
    .line 515
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 516
    .line 517
    return-object v2

    .line 518
    :cond_15
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    .line 519
    .line 520
    .line 521
    move-result p2

    .line 522
    if-nez p2, :cond_16

    .line 523
    .line 524
    if-eqz p1, :cond_19

    .line 525
    .line 526
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 527
    .line 528
    return-object v2

    .line 529
    :cond_16
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    .line 530
    .line 531
    .line 532
    move-result p2

    .line 533
    if-nez p2, :cond_17

    .line 534
    .line 535
    if-eqz p1, :cond_19

    .line 536
    .line 537
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 538
    .line 539
    return-object v2

    .line 540
    :cond_17
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    .line 541
    .line 542
    .line 543
    move-result p2

    .line 544
    if-nez p2, :cond_18

    .line 545
    .line 546
    if-eqz p1, :cond_19

    .line 547
    .line 548
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 549
    .line 550
    return-object v2

    .line 551
    :cond_18
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    .line 552
    .line 553
    .line 554
    move-result p2

    .line 555
    if-nez p2, :cond_1a

    .line 556
    .line 557
    if-eqz p1, :cond_19

    .line 558
    .line 559
    iput-byte v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 560
    .line 561
    :cond_19
    :goto_7
    :pswitch_7
    return-object v2

    .line 562
    :cond_1a
    if-eqz p1, :cond_1b

    .line 563
    .line 564
    iput-byte v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->memoizedIsInitialized:B

    .line 565
    .line 566
    :cond_1b
    sget-object p1, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->DEFAULT_INSTANCE:Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    .line 567
    .line 568
    return-object p1

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlbumArt()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAlbumBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->album_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getArtistBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->artist_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 2
    .line 3
    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlaylistNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 2
    .line 3
    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    and-int/2addr v0, v1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    and-int/2addr v1, v2

    .line 27
    if-ne v1, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    :cond_2
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    and-int/2addr v1, v2

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v1, v3}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_3
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    and-int/2addr v1, v3

    .line 59
    if-ne v1, v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    :cond_4
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 71
    .line 72
    const/16 v2, 0x10

    .line 73
    .line 74
    and-int/2addr v1, v2

    .line 75
    if-ne v1, v2, :cond_5

    .line 76
    .line 77
    const/4 v1, 0x5

    .line 78
    iget-object v2, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 79
    .line 80
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->i(ILcom/google/protobuf/i;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    :cond_5
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 86
    .line 87
    const/16 v2, 0x20

    .line 88
    .line 89
    and-int/2addr v1, v2

    .line 90
    if-ne v1, v2, :cond_6

    .line 91
    .line 92
    const/4 v1, 0x6

    .line 93
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 94
    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    add-int/2addr v0, v1

    .line 100
    :cond_6
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 101
    .line 102
    const/16 v2, 0x40

    .line 103
    .line 104
    and-int/2addr v1, v2

    .line 105
    if-ne v1, v2, :cond_7

    .line 106
    .line 107
    const/4 v1, 0x7

    .line 108
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 109
    .line 110
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/2addr v0, v1

    .line 115
    :cond_7
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 116
    .line 117
    const/16 v2, 0x80

    .line 118
    .line 119
    and-int/2addr v1, v2

    .line 120
    if-ne v1, v2, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {v3, v1}, Lcom/google/protobuf/n;->m(ILjava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    add-int/2addr v0, v1

    .line 131
    :cond_8
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 132
    .line 133
    const/16 v2, 0x100

    .line 134
    .line 135
    and-int/2addr v1, v2

    .line 136
    if-ne v1, v2, :cond_9

    .line 137
    .line 138
    const/16 v1, 0x9

    .line 139
    .line 140
    iget v2, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 141
    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/n;->k(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/google/protobuf/y0;->a()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    add-int/2addr v1, v0

    .line 154
    iput v1, p0, Lcom/google/protobuf/d0;->memoizedSerializedSize:I

    .line 155
    .line 156
    return v1
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSongBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->song_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSongIdBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->songId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSourceBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->source_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/i;->d(Ljava/lang/String;)Lcom/google/protobuf/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public hasAlbum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasAlbumArt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasArtist()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasDuration()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasMode()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasPlaylistNum()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasSong()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public hasSongId()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public hasSource()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public writeTo(Lcom/google/protobuf/n;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    and-int/2addr v0, v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    and-int/2addr v0, v1

    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 42
    .line 43
    const/16 v2, 0x8

    .line 44
    .line 45
    and-int/2addr v0, v2

    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    and-int/2addr v0, v1

    .line 60
    if-ne v0, v1, :cond_4

    .line 61
    .line 62
    const/4 v0, 0x5

    .line 63
    iget-object v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->albumArt_:Lcom/google/protobuf/i;

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->t(ILcom/google/protobuf/i;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 69
    .line 70
    const/16 v1, 0x20

    .line 71
    .line 72
    and-int/2addr v0, v1

    .line 73
    if-ne v0, v1, :cond_5

    .line 74
    .line 75
    const/4 v0, 0x6

    .line 76
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->duration_:I

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 79
    .line 80
    .line 81
    :cond_5
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 82
    .line 83
    const/16 v1, 0x40

    .line 84
    .line 85
    and-int/2addr v0, v1

    .line 86
    if-ne v0, v1, :cond_6

    .line 87
    .line 88
    const/4 v0, 0x7

    .line 89
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->playlistNum_:I

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 92
    .line 93
    .line 94
    :cond_6
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 95
    .line 96
    const/16 v1, 0x80

    .line 97
    .line 98
    and-int/2addr v0, v1

    .line 99
    if-ne v0, v1, :cond_7

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/n;->A(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget v0, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->bitField0_:I

    .line 109
    .line 110
    const/16 v1, 0x100

    .line 111
    .line 112
    and-int/2addr v0, v1

    .line 113
    if-ne v0, v1, :cond_8

    .line 114
    .line 115
    const/16 v0, 0x9

    .line 116
    .line 117
    iget v1, p0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->mode_:I

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/n;->y(II)V

    .line 120
    .line 121
    .line 122
    :cond_8
    iget-object v0, p0, Lcom/google/protobuf/d0;->unknownFields:Lcom/google/protobuf/y0;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/google/protobuf/y0;->e(Lcom/google/protobuf/n;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
