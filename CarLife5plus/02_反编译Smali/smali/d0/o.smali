.class public final synthetic Ld0/o;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:[Lo2/v0;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lo2/o0;

.field public final synthetic d:Lg9/v;

.field public final synthetic e:Lg9/v;

.field public final synthetic f:Ld0/p;


# direct methods
.method public synthetic constructor <init>([Lo2/v0;Ljava/util/List;Lo2/o0;Lg9/v;Lg9/v;Ld0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/o;->a:[Lo2/v0;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/o;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Ld0/o;->c:Lo2/o0;

    .line 9
    .line 10
    iput-object p4, p0, Ld0/o;->d:Lg9/v;

    .line 11
    .line 12
    iput-object p5, p0, Ld0/o;->e:Lg9/v;

    .line 13
    .line 14
    iput-object p6, p0, Ld0/o;->f:Ld0/p;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lo2/u0;

    .line 3
    .line 4
    iget-object p1, p0, Ld0/o;->a:[Lo2/v0;

    .line 5
    .line 6
    array-length v7, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v8, 0x0

    .line 9
    :goto_0
    if-ge v8, v7, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    aget-object v1, p1, v8

    .line 13
    .line 14
    add-int/lit8 v9, v2, 0x1

    .line 15
    .line 16
    const-string v3, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable"

    .line 17
    .line 18
    invoke-static {v1, v3}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Ld0/o;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lo2/l0;

    .line 28
    .line 29
    iget-object v3, p0, Ld0/o;->c:Lo2/o0;

    .line 30
    .line 31
    invoke-interface {v3}, Lo2/r;->getLayoutDirection()Ln3/m;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget-object v4, p0, Ld0/o;->d:Lg9/v;

    .line 36
    .line 37
    iget v4, v4, Lg9/v;->a:I

    .line 38
    .line 39
    iget-object v5, p0, Ld0/o;->e:Lg9/v;

    .line 40
    .line 41
    iget v5, v5, Lg9/v;->a:I

    .line 42
    .line 43
    iget-object v6, p0, Ld0/o;->f:Ld0/p;

    .line 44
    .line 45
    iget-object v6, v6, Ld0/p;->a:Lr1/h;

    .line 46
    .line 47
    invoke-static/range {v0 .. v6}, Ld0/m;->b(Lo2/u0;Lo2/v0;Lo2/l0;Ln3/m;IILr1/h;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    move v1, v9

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 55
    .line 56
    return-object p1
.end method
