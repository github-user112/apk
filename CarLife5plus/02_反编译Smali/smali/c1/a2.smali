.class public final Lc1/a2;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lo2/v0;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lo2/v0;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lo2/v0;IILo2/v0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/a2;->a:Lo2/v0;

    .line 2
    .line 3
    iput p2, p0, Lc1/a2;->b:I

    .line 4
    .line 5
    iput p3, p0, Lc1/a2;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lc1/a2;->d:Lo2/v0;

    .line 8
    .line 9
    iput p5, p0, Lc1/a2;->e:I

    .line 10
    .line 11
    iput p6, p0, Lc1/a2;->f:I

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lo2/u0;

    .line 2
    .line 3
    iget v0, p0, Lc1/a2;->b:I

    .line 4
    .line 5
    iget v1, p0, Lc1/a2;->c:I

    .line 6
    .line 7
    iget-object v2, p0, Lc1/a2;->a:Lo2/v0;

    .line 8
    .line 9
    invoke-static {p1, v2, v0, v1}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lc1/a2;->e:I

    .line 13
    .line 14
    iget v1, p0, Lc1/a2;->f:I

    .line 15
    .line 16
    iget-object v2, p0, Lc1/a2;->d:Lo2/v0;

    .line 17
    .line 18
    invoke-static {p1, v2, v0, v1}, Lo2/u0;->i(Lo2/u0;Lo2/v0;II)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 22
    .line 23
    return-object p1
.end method
