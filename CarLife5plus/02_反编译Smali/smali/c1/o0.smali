.class public final Lc1/o0;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lo2/v0;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(ILo2/v0;I)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/o0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lc1/o0;->b:Lo2/v0;

    .line 4
    .line 5
    iput p3, p0, Lc1/o0;->c:I

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lo2/u0;

    .line 2
    .line 3
    iget-object v0, p0, Lc1/o0;->b:Lo2/v0;

    .line 4
    .line 5
    iget v1, v0, Lo2/v0;->a:I

    .line 6
    .line 7
    iget v2, p0, Lc1/o0;->a:I

    .line 8
    .line 9
    sub-int/2addr v2, v1

    .line 10
    int-to-float v1, v2

    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v2

    .line 14
    invoke-static {v1}, Li9/a;->N(F)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v3, p0, Lc1/o0;->c:I

    .line 19
    .line 20
    iget v4, v0, Lo2/v0;->b:I

    .line 21
    .line 22
    sub-int/2addr v3, v4

    .line 23
    int-to-float v3, v3

    .line 24
    div-float/2addr v3, v2

    .line 25
    invoke-static {v3}, Li9/a;->N(F)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {p1, v0, v1, v2}, Lo2/u0;->f(Lo2/u0;Lo2/v0;II)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 33
    .line 34
    return-object p1
.end method
