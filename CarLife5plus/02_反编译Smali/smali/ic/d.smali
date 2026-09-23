.class public final Lic/d;
.super Ly8/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public d:Lic/e;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lic/e;

.field public g:I


# direct methods
.method public constructor <init>(Lic/e;Ly8/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lic/d;->f:Lic/e;

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
    iput-object p1, p0, Lic/d;->e:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lic/d;->g:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lic/d;->g:I

    .line 9
    .line 10
    iget-object p1, p0, Lic/d;->f:Lic/e;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lic/e;->d(Ly8/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
