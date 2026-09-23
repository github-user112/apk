.class public final Lhc/e;
.super Lhc/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lhc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lhc/e;

    .line 2
    .line 3
    sget v2, Lhc/k;->c:I

    .line 4
    .line 5
    sget v3, Lhc/k;->d:I

    .line 6
    .line 7
    sget-wide v4, Lhc/k;->e:J

    .line 8
    .line 9
    sget-object v6, Lhc/k;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0}, Lac/s;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lhc/c;

    .line 15
    .line 16
    invoke-direct/range {v1 .. v6}, Lhc/c;-><init>(IIJLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v0, Lhc/h;->c:Lhc/c;

    .line 20
    .line 21
    sput-object v0, Lhc/e;->d:Lhc/e;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Dispatchers.Default cannot be closed"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Default"

    .line 2
    .line 3
    return-object v0
.end method
