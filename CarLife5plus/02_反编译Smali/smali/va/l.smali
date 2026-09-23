.class public final Lva/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:Lva/m0;

.field public final c:Z


# direct methods
.method public constructor <init>(ILva/m0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lva/l;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lva/l;->b:Lva/m0;

    .line 7
    .line 8
    iput-boolean p3, p0, Lva/l;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lva/l;

    .line 2
    .line 3
    iget v0, p0, Lva/l;->a:I

    .line 4
    .line 5
    iget p1, p1, Lva/l;->a:I

    .line 6
    .line 7
    sub-int/2addr v0, p1

    .line 8
    return v0
.end method
