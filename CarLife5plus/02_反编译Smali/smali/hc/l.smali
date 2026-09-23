.class public final Lhc/l;
.super Lac/s;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Lhc/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhc/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lac/s;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhc/l;->c:Lhc/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Lw8/h;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lhc/e;->d:Lhc/e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p1, p1, Lhc/h;->c:Lhc/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p2, v0, v1}, Lhc/c;->b(Ljava/lang/Runnable;ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final q(Lw8/h;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object p1, Lhc/e;->d:Lhc/e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object p1, p1, Lhc/h;->c:Lhc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p2, v0, v0}, Lhc/c;->b(Ljava/lang/Runnable;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final s(I)Lac/s;
    .locals 1

    .line 1
    invoke-static {p1}, Lfc/a;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lhc/k;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lac/s;->s(I)Lac/s;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    .line 2
    .line 3
    return-object v0
.end method
