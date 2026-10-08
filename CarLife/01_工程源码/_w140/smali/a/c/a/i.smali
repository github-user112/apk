.class public abstract La/c/a/i;
.super La/c/a/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/i$e;,
        La/c/a/i$b;,
        La/c/a/i$c;,
        La/c/a/i$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, La/c/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, La/c/a/i;->a:Ljava/util/logging/Logger;

    .line 1
    sget-boolean v0, La/c/a/f0;->c:Z

    .line 2
    sput-boolean v0, La/c/a/i;->b:Z

    .line 3
    sget-wide v0, La/c/a/f0;->d:J

    .line 4
    sput-wide v0, La/c/a/i;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/c/a/e;-><init>()V

    return-void
.end method

.method public constructor <init>(La/c/a/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/c/a/e;-><init>()V

    return-void
.end method

.method public static b(IZ)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static c(ILa/c/a/g;)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    .line 1
    invoke-virtual {p1}, La/c/a/g;->size()I

    move-result p1

    invoke-static {p1}, La/c/a/i;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(ID)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static e(IF)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static f(II)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    invoke-static {p1}, La/c/a/i;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static g(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, La/c/a/i;->m(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static h(I)I
    .locals 1

    invoke-static {p0}, La/c/a/i;->m(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static i(ILa/c/a/x;)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    .line 1
    invoke-interface {p1}, La/c/a/x;->getSerializedSize()I

    move-result p1

    invoke-static {p1}, La/c/a/i;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static j(ILjava/lang/String;)I
    .locals 1

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    .line 1
    :try_start_0
    invoke-static {p1}, La/c/a/g0;->d(Ljava/lang/CharSequence;)I

    move-result p1
    :try_end_0
    .catch La/c/a/g0$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    :goto_0
    invoke-static {p1}, La/c/a/i;->h(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    invoke-static {p0}, La/c/a/i;->m(I)I

    move-result p0

    return p0
.end method

.method public static l(II)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    invoke-static {p1}, La/c/a/i;->m(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static m(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static n(IJ)I
    .locals 0

    invoke-static {p0}, La/c/a/i;->k(I)I

    move-result p0

    invoke-static {p1, p2}, La/c/a/i;->o(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static o(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method


# virtual methods
.method public abstract A(II)V
.end method

.method public abstract B(II)V
.end method

.method public abstract C(I)V
.end method

.method public abstract D(IJ)V
.end method

.method public final p(Ljava/lang/String;La/c/a/g0$c;)V
    .locals 3

    sget-object v0, La/c/a/i;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, La/c/a/i;->C(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, La/c/a/e;->a([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch La/c/a/i$d; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, La/c/a/i$d;

    invoke-direct {p2, p1}, La/c/a/i$d;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract q()I
.end method

.method public abstract r(IZ)V
.end method

.method public abstract s(ILa/c/a/g;)V
.end method

.method public final t(ID)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, La/c/a/i;->v(IJ)V

    return-void
.end method

.method public abstract u(II)V
.end method

.method public abstract v(IJ)V
.end method

.method public final w(IF)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, La/c/a/i;->u(II)V

    return-void
.end method

.method public abstract x(II)V
.end method

.method public abstract y(ILa/c/a/x;)V
.end method

.method public abstract z(ILjava/lang/String;)V
.end method
