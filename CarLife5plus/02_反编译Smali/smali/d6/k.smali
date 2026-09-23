.class public final Ld6/k;
.super Ld6/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld6/m;-><init>(I)V

    .line 2
    iput-object p2, p0, Ld6/k;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ld6/k;->d:Z

    .line 4
    iput p1, p0, Ld6/k;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Ld6/m;-><init>(I)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Ld6/k;->d:Z

    .line 7
    iput p3, p0, Ld6/k;->c:I

    .line 8
    iput-object p1, p0, Ld6/k;->b:Ljava/lang/String;

    return-void
.end method
