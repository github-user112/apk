.class public final Lf1/h1;
.super Lp1/a0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lp1/n;
.implements Lf1/b1;
.implements Lf1/v2;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf1/h1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lf1/m2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf1/f1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lf1/f1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lf1/h1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lp1/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lf1/m2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lp1/f;->g()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, p1, v2, v3}, Lf1/m2;-><init>(IJ)V

    .line 15
    .line 16
    .line 17
    instance-of v0, v0, Lp1/a;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Lf1/m2;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    int-to-long v2, v2

    .line 25
    invoke-direct {v0, p1, v2, v3}, Lf1/m2;-><init>(IJ)V

    .line 26
    .line 27
    .line 28
    iput-object v0, v1, Lp1/b0;->b:Lp1/b0;

    .line 29
    .line 30
    :cond_0
    iput-object v1, p0, Lf1/h1;->b:Lf1/m2;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lf1/p2;
    .locals 1

    .line 1
    sget-object v0, Lf1/w0;->f:Lf1/w0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lp1/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/h1;->b:Lf1/m2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d(Lp1/b0;Lp1/b0;Lp1/b0;)Lp1/b0;
    .locals 0

    .line 1
    move-object p1, p2

    .line 2
    check-cast p1, Lf1/m2;

    .line 3
    .line 4
    check-cast p3, Lf1/m2;

    .line 5
    .line 6
    iget p1, p1, Lf1/m2;->c:I

    .line 7
    .line 8
    iget p3, p3, Lf1/m2;->c:I

    .line 9
    .line 10
    if-ne p1, p3, :cond_0

    .line 11
    .line 12
    return-object p2

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/h1;->b:Lf1/m2;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lp1/l;->u(Lp1/b0;Lp1/z;)Lp1/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/m2;

    .line 8
    .line 9
    iget v0, v0, Lf1/m2;->c:I

    .line 10
    .line 11
    return v0
.end method

.method public final g(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf1/h1;->b:Lf1/m2;

    .line 2
    .line 3
    invoke-static {v0}, Lp1/l;->i(Lp1/b0;)Lp1/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/m2;

    .line 8
    .line 9
    iget v1, v0, Lf1/m2;->c:I

    .line 10
    .line 11
    if-eq v1, p1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lf1/h1;->b:Lf1/m2;

    .line 14
    .line 15
    sget-object v2, Lp1/l;->c:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    invoke-static {}, Lp1/l;->k()Lp1/f;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, p0, v3, v0}, Lp1/l;->p(Lp1/b0;Lp1/a0;Lp1/f;Lp1/b0;)Lp1/b0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lf1/m2;

    .line 27
    .line 28
    iput p1, v0, Lf1/m2;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit v2

    .line 31
    invoke-static {v3, p0}, Lp1/l;->o(Lp1/f;Lp1/z;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v2

    .line 37
    throw p1

    .line 38
    :cond_0
    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/h1;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final j(Lp1/b0;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableIntStateImpl.IntStateStateRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lf1/m2;

    .line 7
    .line 8
    iput-object p1, p0, Lf1/h1;->b:Lf1/m2;

    .line 9
    .line 10
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lf1/h1;->g(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lf1/h1;->b:Lf1/m2;

    .line 2
    .line 3
    invoke-static {v0}, Lp1/l;->i(Lp1/b0;)Lp1/b0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lf1/m2;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "MutableIntState(value="

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, v0, Lf1/m2;->c:I

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ")@"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf1/h1;->f()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
