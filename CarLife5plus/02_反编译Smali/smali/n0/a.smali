.class public final Ln0/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:Ls/d0;

.field public final b:Ls/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls/d0;

    .line 5
    .line 6
    invoke-direct {v0}, Ls/d0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln0/a;->a:Ls/d0;

    .line 10
    .line 11
    new-instance v0, Ls/d0;

    .line 12
    .line 13
    invoke-direct {v0}, Ls/d0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ln0/a;->b:Ls/d0;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/a;->a:Ls/d0;

    .line 2
    .line 3
    sget-object v1, Lo0/f;->b:Lo0/f;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/d0;->a(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
