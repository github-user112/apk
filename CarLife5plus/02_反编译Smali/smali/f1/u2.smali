.class public final Lf1/u2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lh9/a;


# instance fields
.field public final a:Lf1/h2;

.field public final b:I

.field public final c:Lf1/b;


# direct methods
.method public constructor <init>(Lf1/h2;ILf1/n0;Lf1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf1/u2;->a:Lf1/h2;

    .line 5
    .line 6
    iput p2, p0, Lf1/u2;->b:I

    .line 7
    .line 8
    iput-object p4, p0, Lf1/u2;->c:Lf1/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 5

    .line 1
    new-instance v0, Lf1/m0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lf1/u2;->c:Lf1/b;

    .line 5
    .line 6
    iget-object v3, p0, Lf1/u2;->a:Lf1/h2;

    .line 7
    .line 8
    iget v4, p0, Lf1/u2;->b:I

    .line 9
    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lf1/m0;-><init>(Lf1/h2;ILf1/n0;Lf1/b;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
