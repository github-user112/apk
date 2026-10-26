.class public Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECAppMusicInfo"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public albumArtist:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public length:J

.field public page:I

.field public status:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->status:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->artist:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->album:Ljava/lang/String;

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->albumArtist:Ljava/lang/String;

    iput-wide p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->length:J

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->page:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->status:I

    iput-object p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->artist:Ljava/lang/String;

    iput-object p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->album:Ljava/lang/String;

    iput-object p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->albumArtist:Ljava/lang/String;

    iput-wide p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->length:J

    iput p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->page:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status="

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->title:Ljava/lang/String;

    const-string v3, ",artist="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->artist:Ljava/lang/String;

    const-string v3, ",album="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->album:Ljava/lang/String;

    const-string v3, ",albumArtist="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->albumArtist:Ljava/lang/String;

    const-string v3, ",length="

    invoke-static {v1, v2, v0, v3}, Le/a/c/a/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",page="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lnet/easyconn/ecsdk/ECTypes$ECAppMusicInfo;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
