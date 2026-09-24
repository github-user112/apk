.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
.super La/c/a/p$b;
.source ""

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/a/p$b<",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;",
        ">;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    move-result-object v0

    invoke-direct {p0, v0}, La/c/a/p$b;-><init>(La/c/a/p;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlbum()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearAlbumArt()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearArtist()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearDuration()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearMode()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$2300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearPlaylistNum()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1800(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearSong()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearSongId()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$2000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public clearSource()Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;)V

    return-object p0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArt()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbumArt()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getAlbumBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getArtistBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getDuration()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getMode()I

    move-result v0

    return v0
.end method

.method public getPlaylistNum()I
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getPlaylistNum()I

    move-result v0

    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongIdBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSongIdBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceBytes()La/c/a/g;
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->getSourceBytes()La/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbum()Z

    move-result v0

    return v0
.end method

.method public hasAlbumArt()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasAlbumArt()Z

    move-result v0

    return v0
.end method

.method public hasArtist()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasArtist()Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasDuration()Z

    move-result v0

    return v0
.end method

.method public hasMode()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasMode()Z

    move-result v0

    return v0
.end method

.method public hasPlaylistNum()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasPlaylistNum()Z

    move-result v0

    return v0
.end method

.method public hasSong()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSong()Z

    move-result v0

    return v0
.end method

.method public hasSongId()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSongId()Z

    move-result v0

    return v0
.end method

.method public hasSource()Z
    .locals 1

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->hasSource()Z

    move-result v0

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1000(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAlbumArt(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method

.method public setAlbumBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setArtistBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method

.method public setDuration(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1500(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V

    return-object p0
.end method

.method public setMode(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$2200(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V

    return-object p0
.end method

.method public setPlaylistNum(I)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1700(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;I)V

    return-object p0
.end method

.method public setSong(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSongBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$600(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method

.method public setSongId(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$1900(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSongIdBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$2100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSourceBytes(La/c/a/g;)Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo$Builder;
    .locals 1

    invoke-virtual {p0}, La/c/a/p$b;->copyOnWrite()V

    iget-object v0, p0, La/c/a/p$b;->instance:La/c/a/p;

    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;

    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;->access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaInfoProto$CarlifeMediaInfo;La/c/a/g;)V

    return-object p0
.end method
