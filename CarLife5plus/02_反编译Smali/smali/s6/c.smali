.class public final Ls6/c;
.super Ls6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final S:Lo6/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls6/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lo6/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lo6/c;-><init>(Lp6/a;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls6/c;->S:Lo6/c;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()Lo6/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/c;->S:Lo6/c;

    .line 2
    .line 3
    return-object v0
.end method
