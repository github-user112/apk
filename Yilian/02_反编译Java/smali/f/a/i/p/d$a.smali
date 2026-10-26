.class public Lf/a/i/p/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/i/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Lf/a/i/p/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lf/a/i/p/d$a;->a:I

    iput p1, p0, Lf/a/i/p/d$a;->b:I

    iput p1, p0, Lf/a/i/p/d$a;->c:I

    iput p1, p0, Lf/a/i/p/d$a;->d:I

    return-void
.end method

.method public constructor <init>(Lf/a/i/p/d;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v0, 0x2

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    const/4 v0, 0x0

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    iput p1, p0, Lf/a/i/p/d$a;->a:I

    const/4 p1, 0x7

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/4 v0, 0x6

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/4 v0, 0x5

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    iput p1, p0, Lf/a/i/p/d$a;->b:I

    const/16 p1, 0xb

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/16 v0, 0xa

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/16 v0, 0x9

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p1, v0

    iput p1, p0, Lf/a/i/p/d$a;->c:I

    const/16 p1, 0xf

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    const/16 v0, 0xe

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr p1, v0

    const/16 v0, 0xd

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v1

    add-int/2addr p1, v0

    const/16 v0, 0xc

    aget-byte p2, p2, v0

    and-int/lit16 p2, p2, 0xff

    add-int/2addr p1, p2

    iput p1, p0, Lf/a/i/p/d$a;->d:I

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget v1, p0, Lf/a/i/p/d$a;->a:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget v1, p0, Lf/a/i/p/d$a;->b:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    iget v1, p0, Lf/a/i/p/d$a;->c:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x9

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xa

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    iget v1, p0, Lf/a/i/p/d$a;->d:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xc

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xd

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0xe

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    return-object v0
.end method
