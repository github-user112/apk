.class public final Lpc/q;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lr8/b;

.field public e:Lj/g;

.field public f:Ljava/util/LinkedHashMap;

.field public g:Ljava/lang/String;

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lj/g;

.field public k:I


# direct methods
.method public constructor <init>(Lj/g;Ly8/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpc/q;->j:Lj/g;

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
    iput-object p1, p0, Lpc/q;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lpc/q;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lpc/q;->k:I

    .line 9
    .line 10
    iget-object p1, p0, Lpc/q;->j:Lj/g;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0, p0}, Lj/g;->a(Lj/g;Lr8/b;Ly8/a;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
