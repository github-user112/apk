.class public final Lc1/w2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lo2/v0;

.field public final synthetic b:Lc1/x2;

.field public final synthetic c:F


# direct methods
.method public constructor <init>(Lo2/v0;Lc1/x2;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/w2;->a:Lo2/v0;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/w2;->b:Lc1/x2;

    .line 4
    .line 5
    iput p3, p0, Lc1/w2;->c:F

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
    .locals 3

    .line 1
    check-cast p1, Lo2/u0;

    .line 2
    .line 3
    iget-object v0, p0, Lc1/w2;->b:Lc1/x2;

    .line 4
    .line 5
    iget-object v0, v0, Lc1/x2;->r:Lv/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lv/c;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    float-to-int v0, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v0, p0, Lc1/w2;->c:F

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const/4 v1, 0x0

    .line 25
    iget-object v2, p0, Lc1/w2;->a:Lo2/v0;

    .line 26
    .line 27
    invoke-static {p1, v2, v0, v1}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 31
    .line 32
    return-object p1
.end method
