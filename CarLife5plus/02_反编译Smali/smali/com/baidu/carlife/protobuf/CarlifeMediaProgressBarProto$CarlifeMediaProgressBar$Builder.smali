.class public final Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
.super Lcom/google/protobuf/t;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/t;",
        "Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBarOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$000()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/t;-><init>(Lcom/google/protobuf/d0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMediaLyric()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$400(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearProgressBar()Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$200(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getMediaLyric()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getMediaLyric()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getMediaLyricBytes()Lcom/google/protobuf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getMediaLyricBytes()Lcom/google/protobuf/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getProgressBar()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->getProgressBar()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasMediaLyric()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasMediaLyric()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasProgressBar()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 2
    .line 3
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->hasProgressBar()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setMediaLyric(Ljava/lang/String;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$300(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setMediaLyricBytes(Lcom/google/protobuf/i;)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$500(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;Lcom/google/protobuf/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setProgressBar(I)Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/t;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/t;->instance:Lcom/google/protobuf/d0;

    .line 5
    .line 6
    check-cast v0, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;->access$100(Lcom/baidu/carlife/protobuf/CarlifeMediaProgressBarProto$CarlifeMediaProgressBar;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
