.class public final Lcom/google/android/exoplayer2/TracksInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/TracksInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplayer2/TracksInfo;

.field public static final FIELD_TRACK_GROUP_INFOS:I


# instance fields
.field public final trackGroupInfos:Le/c/b/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/s<",
            "Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/TracksInfo;

    invoke-static {}, Le/c/b/b/s;->p()Le/c/b/b/s;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/TracksInfo;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/exoplayer2/TracksInfo;->EMPTY:Lcom/google/android/exoplayer2/TracksInfo;

    sget-object v0, Le/c/a/a/q1;->a:Le/c/a/a/q1;

    sput-object v0, Lcom/google/android/exoplayer2/TracksInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Le/c/b/b/s;->l(Ljava/util/Collection;)Le/c/b/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/TracksInfo;
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1
    sget-object v1, Le/c/b/b/k0;->e:Le/c/b/b/s;

    .line 2
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleNullableList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/TracksInfo;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/TracksInfo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/google/android/exoplayer2/TracksInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/TracksInfo;

    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    iget-object p1, p1, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-virtual {v0, p1}, Le/c/b/b/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTrackGroupInfos()Le/c/b/b/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/c/b/b/s<",
            "Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-virtual {v0}, Le/c/b/b/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public isTypeSelected(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->getTrackType()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTypeSupportedOrEmpty(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-static {v4}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->access$000(Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;)I

    move-result v4

    if-ne v4, p1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/TracksInfo$TrackGroupInfo;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/TracksInfo;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/TracksInfo;->trackGroupInfos:Le/c/b/b/s;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
