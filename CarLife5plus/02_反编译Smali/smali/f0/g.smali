.class public final Lf0/g;
.super Lh0/z;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Le7/l;


# direct methods
.method public constructor <init>(Lf9/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le7/l;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Le7/l;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf0/g;->b:Le7/l;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final k()Le7/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/g;->b:Le7/l;

    .line 2
    .line 3
    return-object v0
.end method
