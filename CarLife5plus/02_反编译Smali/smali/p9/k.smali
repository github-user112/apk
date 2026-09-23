.class public final Lp9/k;
.super Lp9/l;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Lta/e;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lta/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp9/k;->b:Lta/e;

    .line 5
    .line 6
    invoke-virtual {p1}, Lta/e;->j()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lp9/k;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/k;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
