.class public La/c/a/p$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/c/a/p$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(La/c/a/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, La/c/a/p$h;->a:I

    return-void
.end method


# virtual methods
.method public a(La/c/a/r$e;La/c/a/r$e;)La/c/a/r$e;
    .locals 1

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method

.method public b(La/c/a/r$h;La/c/a/r$h;)La/c/a/r$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/c/a/r$h<",
            "TT;>;",
            "La/c/a/r$h<",
            "TT;>;)",
            "La/c/a/r$h<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method

.method public c(La/c/a/e0;La/c/a/e0;)La/c/a/e0;
    .locals 1

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, La/c/a/e0;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method

.method public d(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, La/c/a/p$h;->a:I

    return-object p2
.end method

.method public e(ZZZZ)Z
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    .line 1
    sget-object p3, La/c/a/r;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    const/16 p3, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p3, 0x4d5

    :goto_0
    add-int/2addr p1, p3

    .line 2
    iput p1, p0, La/c/a/p$h;->a:I

    return p2
.end method

.method public f(La/c/a/r$f;La/c/a/r$f;)La/c/a/r$f;
    .locals 1

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method

.method public g(ZLa/c/a/g;ZLa/c/a/g;)La/c/a/g;
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-virtual {p2}, La/c/a/g;->hashCode()I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, La/c/a/p$h;->a:I

    return-object p2
.end method

.method public h(ZFZF)F
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p3

    add-int/2addr p3, p1

    iput p3, p0, La/c/a/p$h;->a:I

    return p2
.end method

.method public i(ZJZJ)J
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, La/c/a/r;->a(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, La/c/a/p$h;->a:I

    return-wide p2
.end method

.method public j(ZDZD)D
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p4

    invoke-static {p4, p5}, La/c/a/r;->a(J)I

    move-result p4

    add-int/2addr p4, p1

    iput p4, p0, La/c/a/p$h;->a:I

    return-wide p2
.end method

.method public k(La/c/a/r$g;La/c/a/r$g;)La/c/a/r$g;
    .locals 1

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method

.method public l(ZIZI)I
    .locals 0

    iget p1, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p1, p1, 0x35

    add-int/2addr p1, p2

    iput p1, p0, La/c/a/p$h;->a:I

    return p2
.end method

.method public m(La/c/a/n;La/c/a/n;)La/c/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;)",
            "La/c/a/n<",
            "La/c/a/p$f;",
            ">;"
        }
    .end annotation

    iget p2, p0, La/c/a/p$h;->a:I

    mul-int/lit8 p2, p2, 0x35

    invoke-virtual {p1}, La/c/a/n;->hashCode()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, La/c/a/p$h;->a:I

    return-object p1
.end method
