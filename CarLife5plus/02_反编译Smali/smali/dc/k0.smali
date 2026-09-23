.class public final Ldc/k0;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Ldc/l0;

.field public e:Ldc/e;

.field public f:Ldc/m0;

.field public g:Lac/v0;

.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ldc/l0;

.field public k:I


# direct methods
.method public constructor <init>(Ldc/l0;Lw8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/k0;->j:Ldc/l0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ly8/c;-><init>(Lw8/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Ldc/k0;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Ldc/k0;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Ldc/k0;->k:I

    .line 9
    .line 10
    iget-object p1, p0, Ldc/k0;->j:Ldc/l0;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, Ldc/l0;->t0(Ldc/e;Lw8/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 17
    .line 18
    return-object p1
.end method
