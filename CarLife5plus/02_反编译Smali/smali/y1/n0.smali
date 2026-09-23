.class public final Ly1/n0;
.super Ly1/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ly1/n0;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(FJLd7/q;)V
    .locals 2

    .line 1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p4, p2}, Ld7/q;->i(F)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Ly1/n0;->a:J

    .line 7
    .line 8
    cmpg-float p2, p1, p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0, v1}, Ly1/q;->d(J)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    mul-float p2, p2, p1

    .line 18
    .line 19
    invoke-static {p2, v0, v1}, Ly1/q;->b(FJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    :goto_0
    invoke-virtual {p4, v0, v1}, Ld7/q;->k(J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p4, Ld7/q;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroid/graphics/Shader;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p4, p1}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Ly1/n0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Ly1/n0;

    .line 12
    .line 13
    iget-wide v3, p1, Ly1/n0;->a:J

    .line 14
    .line 15
    iget-wide v5, p0, Ly1/n0;->a:J

    .line 16
    .line 17
    invoke-static {v5, v6, v3, v4}, Ly1/q;->c(JJ)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    sget v0, Ly1/q;->n:I

    .line 2
    .line 3
    iget-wide v0, p0, Ly1/n0;->a:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Lr8/u;->a(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SolidColor(value="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Ly1/n0;->a:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Ly1/q;->i(J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
