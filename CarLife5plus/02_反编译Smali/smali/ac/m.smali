.class public final Lac/m;
.super Lac/z0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lac/l;


# instance fields
.field public final e:Lac/c1;


# direct methods
.method public constructor <init>(Lac/c1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfc/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lac/m;->e:Lac/c1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lac/z0;->j()Lac/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lac/c1;->H(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lac/m;->e:Lac/c1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lac/z0;->j()Lac/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lac/c1;->D(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
