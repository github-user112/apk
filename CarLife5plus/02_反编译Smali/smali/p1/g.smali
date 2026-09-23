.class public final Lp1/g;
.super Lp1/q;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final c:Lp1/b;


# direct methods
.method public constructor <init>(Lp1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp1/g;->c:Lp1/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp1/g;->c:Lp1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp1/b;->c()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lm5/q;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method
