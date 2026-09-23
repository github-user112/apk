.class public final Lz6/c;
.super Ly6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La7/d;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, La7/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz6/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Ly6/a;->d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1f

    .line 5
    .line 6
    invoke-static {p1, p3}, Ly6/a;->i(Landroid/app/Activity;Lu6/a;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-le p2, p1, :cond_0

    .line 11
    .line 12
    const-string p1, "android.permission.BLUETOOTH"

    .line 13
    .line 14
    const/16 p2, 0x1e

    .line 15
    .line 16
    invoke-static {p4, p1, p2}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final h()I
    .locals 1

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    return v0
.end method

.method public final j(Landroid/app/Activity;)I
    .locals 0

    .line 1
    const/16 p1, 0x17

    .line 2
    .line 3
    return p1
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, La/a;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "nearby_devices_group"

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "location_group"

    .line 11
    .line 12
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 2
    .line 3
    return-object v0
.end method
