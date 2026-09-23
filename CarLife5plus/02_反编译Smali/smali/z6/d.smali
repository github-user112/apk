.class public final Lz6/d;
.super Ly6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz6/d;",
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
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, La7/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz6/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Ly6/a;->d(Landroid/app/Activity;Ljava/util/ArrayList;Lu6/a;Ljava/util/List;Lv6/c;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f

    .line 5
    .line 6
    invoke-static {p1, p3}, Ly6/a;->i(Landroid/app/Activity;Lu6/a;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    .line 11
    .line 12
    if-le v0, p1, :cond_0

    .line 13
    .line 14
    const-string p1, "android.permission.BLUETOOTH_ADMIN"

    .line 15
    .line 16
    const/16 v0, 0x1e

    .line 17
    .line 18
    invoke-static {p4, p1, v0}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p4, p3, v0}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p2, p3}, Lm9/e0;->S(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    if-nez p5, :cond_2

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_2
    iget p1, p5, Lv6/c;->c:I

    .line 35
    .line 36
    sget p2, Lv6/c;->d:I

    .line 37
    .line 38
    and-int/2addr p1, p2

    .line 39
    if-eqz p1, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    iget p1, p5, Lv6/c;->b:I

    .line 43
    .line 44
    const p2, 0x7fffffff

    .line 45
    .line 46
    .line 47
    const-string p3, "\" "

    .line 48
    .line 49
    if-eq p1, p2, :cond_4

    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string p2, "android:maxSdkVersion=\""

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget p2, p5, Lv6/c;->b:I

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const-string p1, ""

    .line 72
    .line 73
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance p4, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "If your app doesn\'t use "

    .line 78
    .line 79
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p5, Lv6/c;->a:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " to get physical location, please change the <uses-permission android:name=\""

    .line 88
    .line 89
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v0, p5, Lv6/c;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p3, "/> node in the manifest file to <uses-permission android:name=\""

    .line 104
    .line 105
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object p3, p5, Lv6/c;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p3, "\" android:usesPermissionFlags=\"neverForLocation\" "

    .line 114
    .line 115
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "/> node, if your app need use \""

    .line 122
    .line 123
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object p1, p5, Lv6/c;->a:Ljava/lang/String;

    .line 127
    .line 128
    const-string p3, "\" to get physical location, also need to add \"android.permission.ACCESS_FINE_LOCATION\" permissions"

    .line 129
    .line 130
    invoke-static {p4, p1, p3}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p2
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

.method public final k()Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ly6/a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 10
    .line 11
    invoke-static {v1}, Lm9/e0;->I([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
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
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 2
    .line 3
    return-object v0
.end method

.method public final u(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ly6/a;->t(Landroid/app/Activity;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final x(Landroid/content/Context;Z)Z
    .locals 1

    .line 1
    invoke-static {}, Lw6/a;->c()Ly6/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ly6/a;->w(Landroid/content/Context;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
