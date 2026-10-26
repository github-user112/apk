.class public Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EocdRecord"
.end annotation


# instance fields
.field public final centralDirOffset:J

.field public final commentLength:I

.field public final numEntries:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;->numEntries:J

    iput-wide p3, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;->centralDirOffset:J

    iput p5, p0, Lcom/tencent/tinker/ziputils/ziputil/TinkerZipFile$EocdRecord;->commentLength:I

    return-void
.end method
