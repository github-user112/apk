.class public Lnet/easyconn/ecsdk/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[B

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/easyconn/ecsdk/a;->h:[B

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->a:I

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->b:I

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->c:I

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->d:I

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->e:I

    iget-object v0, p0, Lnet/easyconn/ecsdk/a;->g:[B

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lnet/easyconn/ecsdk/a;->a([BI)I

    move-result v0

    iput v0, p0, Lnet/easyconn/ecsdk/a;->f:I

    return-void
.end method
