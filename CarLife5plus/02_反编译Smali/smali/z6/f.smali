.class public final Lz6/f;
.super Ly6/a;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz6/f;",
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
    const/16 v1, 0x1b

    .line 4
    .line 5
    invoke-direct {v0, v1}, La7/d;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz6/f;->CREATOR:Landroid/os/Parcelable$Creator;

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
    const/16 v0, 0x21

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
    const/16 p1, 0x20

    .line 15
    .line 16
    invoke-static {p4, p3, p1}, Ly6/a;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p2, p3}, Lm9/e0;->S(Ljava/util/ArrayList;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-nez p5, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    iget p1, p5, Lv6/c;->c:I

    .line 30
    .line 31
    sget p2, Lv6/c;->d:I

    .line 32
    .line 33
    and-int/2addr p1, p2

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    iget p1, p5, Lv6/c;->b:I

    .line 38
    .line 39
    const p2, 0x7fffffff

    .line 40
    .line 41
    .line 42
    const-string p3, "\" "

    .line 43
    .line 44
    if-eq p1, p2, :cond_4

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "android:maxSdkVersion=\""

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p2, p5, Lv6/c;->b:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    const-string p1, ""

    .line 67
    .line 68
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    new-instance p4, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v0, "If your app doesn\'t use "

    .line 73
    .line 74
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p5, Lv6/c;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " to get physical location, please change the <uses-permission android:name=\""

    .line 83
    .line 84
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p5, Lv6/c;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p3, "/> node in the manifest file to <uses-permission android:name=\""

    .line 99
    .line 100
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p3, p5, Lv6/c;->a:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string p3, "\" android:usesPermissionFlags=\"neverForLocation\" "

    .line 109
    .line 110
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, "/> node, if your app need use \""

    .line 117
    .line 118
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p1, p5, Lv6/c;->a:Ljava/lang/String;

    .line 122
    .line 123
    const-string p3, "\" to get physical location, also need to add \"android.permission.ACCESS_FINE_LOCATION\" permissions"

    .line 124
    .line 125
    invoke-static {p4, p1, p3}, Lp9/v;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p2
.end method

.method public final h()I
    .locals 1

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    return v0
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
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

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
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

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
