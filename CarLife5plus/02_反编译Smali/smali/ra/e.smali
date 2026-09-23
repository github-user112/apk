.class public final Lra/e;
.super Lra/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final g:Lra/e;

.field public static final h:Lra/e;


# instance fields
.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lra/e;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    filled-new-array {v1, v2, v3}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    invoke-direct {v0, v4, v3}, Lra/e;-><init>([IZ)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lra/e;->g:Lra/e;

    .line 14
    .line 15
    iget v4, v0, Lra/a;->c:I

    .line 16
    .line 17
    iget v0, v0, Lra/a;->b:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    const/16 v5, 0x9

    .line 22
    .line 23
    if-ne v4, v5, :cond_0

    .line 24
    .line 25
    new-instance v0, Lra/e;

    .line 26
    .line 27
    filled-new-array {v1, v3, v3}, [I

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1, v3}, Lra/e;-><init>([IZ)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Lra/e;

    .line 36
    .line 37
    add-int/2addr v4, v2

    .line 38
    filled-new-array {v0, v4, v3}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0, v3}, Lra/e;-><init>([IZ)V

    .line 43
    .line 44
    .line 45
    move-object v0, v1

    .line 46
    :goto_0
    sput-object v0, Lra/e;->h:Lra/e;

    .line 47
    .line 48
    new-instance v0, Lra/e;

    .line 49
    .line 50
    new-array v1, v3, [I

    .line 51
    .line 52
    invoke-direct {v0, v1, v3}, Lra/e;-><init>([IZ)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    .line 1
    const-string v0, "versionArray"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lra/a;-><init>([I)V

    .line 12
    .line 13
    .line 14
    iput-boolean p2, p0, Lra/e;->f:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Lra/e;)Z
    .locals 5

    .line 1
    const-string v0, "metadataVersionFromLanguageVersion"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lra/e;->f:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lra/e;->g:Lra/e;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lra/e;->h:Lra/e;

    .line 14
    .line 15
    :goto_0
    iget v1, v0, Lra/a;->b:I

    .line 16
    .line 17
    iget v2, p1, Lra/a;->b:I

    .line 18
    .line 19
    if-le v1, v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    if-ge v1, v2, :cond_2

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    iget v1, v0, Lra/a;->c:I

    .line 26
    .line 27
    iget v2, p1, Lra/a;->c:I

    .line 28
    .line 29
    if-le v1, v2, :cond_3

    .line 30
    .line 31
    :goto_1
    move-object p1, v0

    .line 32
    :cond_3
    :goto_2
    iget v0, p0, Lra/a;->c:I

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x0

    .line 36
    iget v3, p0, Lra/a;->b:I

    .line 37
    .line 38
    if-ne v3, v1, :cond_4

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_4
    if-nez v3, :cond_5

    .line 44
    .line 45
    :goto_3
    return v2

    .line 46
    :cond_5
    iget v4, p1, Lra/a;->b:I

    .line 47
    .line 48
    if-le v3, v4, :cond_6

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_6
    if-ge v3, v4, :cond_7

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_7
    iget p1, p1, Lra/a;->c:I

    .line 55
    .line 56
    if-le v0, p1, :cond_8

    .line 57
    .line 58
    :goto_4
    const/4 v2, 0x1

    .line 59
    :cond_8
    :goto_5
    xor-int/lit8 p1, v2, 0x1

    .line 60
    .line 61
    return p1
.end method
