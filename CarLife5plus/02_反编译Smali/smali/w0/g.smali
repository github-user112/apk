.class public final synthetic Lw0/g;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(JLf9/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lw0/g;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lw0/g;->b:Lf9/a;

    .line 7
    .line 8
    iput-boolean p4, p0, Lw0/g;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lv1/c;

    .line 2
    .line 3
    iget-object v0, p1, Lv1/c;->a:Lv1/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lv1/a;->g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const/16 v2, 0x20

    .line 10
    .line 11
    shr-long/2addr v0, v2

    .line 12
    long-to-int v1, v0

    .line 13
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/high16 v1, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v0, v1

    .line 20
    invoke-static {p1, v0}, Lw0/y0;->q(Lv1/c;F)Ly1/f;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ly1/k;

    .line 25
    .line 26
    const/4 v2, 0x5

    .line 27
    iget-wide v3, p0, Lw0/g;->a:J

    .line 28
    .line 29
    invoke-direct {v1, v2, v3, v4}, Ly1/k;-><init>(IJ)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lw0/h;

    .line 33
    .line 34
    iget-object v3, p0, Lw0/g;->b:Lf9/a;

    .line 35
    .line 36
    iget-boolean v4, p0, Lw0/g;->c:Z

    .line 37
    .line 38
    invoke-direct {v2, v3, v4, v0, v1}, Lw0/h;-><init>(Lf9/a;ZLy1/f;Ly1/k;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Lv1/c;->b(Lf9/k;)Lv/a1;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method
