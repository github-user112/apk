.class public final Lw0/s1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lw0/q;


# instance fields
.field public final synthetic a:Lw0/r1;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lw0/r1;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/s1;->a:Lw0/r1;

    .line 5
    .line 6
    iput-boolean p2, p0, Lw0/s1;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/s1;->a:Lw0/r1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lw0/s1;->b:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lw0/r1;->k(Z)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method
