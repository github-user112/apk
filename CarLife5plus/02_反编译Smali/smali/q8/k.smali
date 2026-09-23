.class public final Lq8/k;
.super Ljava/lang/Exception;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Lq8/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object p1, Lq8/i;->f:Lq8/i;

    iput-object p1, p0, Lq8/k;->a:Lq8/i;

    return-void
.end method

.method public constructor <init>(Lq8/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lq8/k;->a:Lq8/i;

    return-void
.end method


# virtual methods
.method public final a()Lq8/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lq8/k;->a:Lq8/i;

    .line 2
    .line 3
    return-object v0
.end method
