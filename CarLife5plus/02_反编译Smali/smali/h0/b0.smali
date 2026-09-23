.class public final Lh0/b0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf1/v2;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lf1/k1;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lh0/b0;->a:I

    .line 5
    .line 6
    iput p3, p0, Lh0/b0;->b:I

    .line 7
    .line 8
    div-int v0, p1, p2

    .line 9
    .line 10
    mul-int v0, v0, p2

    .line 11
    .line 12
    sub-int v1, v0, p3

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, p2

    .line 20
    add-int/2addr v0, p3

    .line 21
    invoke-static {v1, v0}, Li9/a;->Z(II)Ll9/d;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    sget-object p3, Lf1/w0;->f:Lf1/w0;

    .line 26
    .line 27
    new-instance v0, Lf1/k1;

    .line 28
    .line 29
    invoke-direct {v0, p2, p3}, Lf1/k1;-><init>(Ljava/lang/Object;Lf1/p2;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lh0/b0;->c:Lf1/k1;

    .line 33
    .line 34
    iput p1, p0, Lh0/b0;->d:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    .line 1
    iget v0, p0, Lh0/b0;->d:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lh0/b0;->d:I

    .line 6
    .line 7
    iget v0, p0, Lh0/b0;->a:I

    .line 8
    .line 9
    div-int/2addr p1, v0

    .line 10
    mul-int p1, p1, v0

    .line 11
    .line 12
    iget v1, p0, Lh0/b0;->b:I

    .line 13
    .line 14
    sub-int v2, p1, v1

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr p1, v0

    .line 22
    add-int/2addr p1, v1

    .line 23
    invoke-static {v2, p1}, Li9/a;->Z(II)Ll9/d;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lh0/b0;->c:Lf1/k1;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/b0;->c:Lf1/k1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ll9/d;

    .line 8
    .line 9
    return-object v0
.end method
