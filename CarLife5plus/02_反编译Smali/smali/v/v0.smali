.class public final Lv/v0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lv/v;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lv/t;


# direct methods
.method public constructor <init>(IILv/t;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lv/v0;->a:I

    .line 5
    iput p2, p0, Lv/v0;->b:I

    .line 6
    iput-object p3, p0, Lv/v0;->c:Lv/t;

    return-void
.end method

.method public constructor <init>(ILv/t;I)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lv/u;->a:Lv/q;

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p3, p2}, Lv/v0;-><init>(IILv/t;)V

    return-void
.end method


# virtual methods
.method public final d(Lv/w0;)Lv/y0;
    .locals 3

    .line 1
    new-instance p1, Lf1/d1;

    .line 2
    .line 3
    iget v0, p0, Lv/v0;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lv/v0;->c:Lv/t;

    .line 6
    .line 7
    iget v2, p0, Lv/v0;->a:I

    .line 8
    .line 9
    invoke-direct {p1, v2, v0, v1}, Lf1/d1;-><init>(IILv/t;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lv/v0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lv/v0;

    .line 6
    .line 7
    iget v0, p1, Lv/v0;->a:I

    .line 8
    .line 9
    iget v1, p0, Lv/v0;->a:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p1, Lv/v0;->b:I

    .line 14
    .line 15
    iget v1, p0, Lv/v0;->b:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lv/v0;->c:Lv/t;

    .line 20
    .line 21
    iget-object v0, p0, Lv/v0;->c:Lv/t;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lv/v0;->a:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lv/v0;->c:Lv/t;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget v0, p0, Lv/v0;->b:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method
