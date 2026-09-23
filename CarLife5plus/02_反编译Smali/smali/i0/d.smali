.class public final synthetic Li0/d;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic i:Li0/f;

.field public final synthetic j:Lq2/h1;

.field public final synthetic k:Lk2/d;


# direct methods
.method public constructor <init>(Li0/f;Lq2/h1;Lk2/d;)V
    .locals 6

    .line 1
    iput-object p1, p0, Li0/d;->i:Li0/f;

    .line 2
    .line 3
    iput-object p2, p0, Li0/d;->j:Lq2/h1;

    .line 4
    .line 5
    iput-object p3, p0, Li0/d;->k:Lk2/d;

    .line 6
    .line 7
    const-string v4, "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const-class v2, Lg9/k;

    .line 12
    .line 13
    const-string v3, "localRect"

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lg9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Li0/d;->j:Lq2/h1;

    .line 2
    .line 3
    iget-object v1, p0, Li0/d;->k:Lk2/d;

    .line 4
    .line 5
    iget-object v2, p0, Li0/d;->i:Li0/f;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Li0/f;->A0(Li0/f;Lq2/h1;Lk2/d;)Lx1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
