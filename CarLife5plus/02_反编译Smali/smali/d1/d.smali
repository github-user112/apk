.class public abstract Ld1/d;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:F

.field public static final b:Lr1/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    sput v0, Ld1/d;->a:F

    .line 5
    .line 6
    sget-object v1, Ld1/b;->b:Ld1/b;

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/compose/ui/layout/a;->b(Lf9/o;)Lr1/p;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 13
    .line 14
    sget-object v3, Ld1/c;->a:Ld1/c;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lf9/k;Z)V

    .line 18
    .line 19
    .line 20
    check-cast v1, Lq2/z0;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lq2/z0;->a(Lr1/p;)Lr1/p;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-static {v1, v0, v2, v3}, Landroidx/compose/foundation/layout/a;->j(Lr1/p;FFI)Lr1/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Ld1/d;->b:Lr1/p;

    .line 33
    .line 34
    return-void
.end method
