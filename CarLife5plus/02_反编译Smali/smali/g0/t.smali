.class public final Lg0/t;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lx/v0;

.field public e:Ly8/i;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lg0/u;

.field public h:I


# direct methods
.method public constructor <init>(Lg0/u;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/t;->g:Lg0/u;

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
    iput-object p1, p0, Lg0/t;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lg0/t;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lg0/t;->h:I

    .line 9
    .line 10
    iget-object p1, p0, Lg0/t;->g:Lg0/u;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, v0, p0}, Lg0/u;->e(Lx/v0;Lf9/n;Ly8/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
