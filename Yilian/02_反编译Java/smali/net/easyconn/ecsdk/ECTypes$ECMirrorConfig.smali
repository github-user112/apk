.class public Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/easyconn/ecsdk/ECTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECMirrorConfig"
.end annotation


# instance fields
.field public capScreenMode:I

.field public height:I

.field public mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

.field public quality:I

.field public screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

.field public screenPhysicsHeight:D

.field public screenPhysicsWidth:D

.field public touchMode:I

.field public type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

.field public viewConfig:Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECVideoType;->EC_VIDEO_TYPE_H264:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    const/4 v0, 0x0

    iput v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object v0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object v0, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_UNKNOWN:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;->EC_SCREEN_DIRECTION_UNKNOWN:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIIILnet/easyconn/ecsdk/ECTypes$ECScreenDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIIILnet/easyconn/ecsdk/ECTypes$ECScreenDirection;Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->viewConfig:Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIIILnet/easyconn/ecsdk/ECTypes$ECScreenDirection;Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;DDLnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    iput p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    iput-object p7, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    iput-object p8, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->viewConfig:Lnet/easyconn/ecsdk/ECTypes$ECMirrorViewConfig;

    iput-wide p9, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    iput-wide p11, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-object p13, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method

.method public constructor <init>(Lnet/easyconn/ecsdk/ECTypes$ECVideoType;IIIILnet/easyconn/ecsdk/ECTypes$ECScreenDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->type:Lnet/easyconn/ecsdk/ECTypes$ECVideoType;

    iput p2, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->width:I

    iput p3, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->height:I

    iput p4, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->quality:I

    iput p5, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->touchMode:I

    const/4 p1, 0x0

    iput p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->capScreenMode:I

    iput-object p6, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenDirection:Lnet/easyconn/ecsdk/ECTypes$ECScreenDirection;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsHeight:D

    iput-wide p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->screenPhysicsWidth:D

    sget-object p1, Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;->EC_MIRROR_FEATURE_DEFAULT:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    iput-object p1, p0, Lnet/easyconn/ecsdk/ECTypes$ECMirrorConfig;->mirrorFeature:Lnet/easyconn/ecsdk/ECTypes$ECMirrorFeature;

    return-void
.end method
