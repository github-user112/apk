.class public abstract Lw6/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ls/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls/s;

    .line 2
    .line 3
    const/16 v1, 0x97

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ls/s;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lw6/a;->a:Ls/s;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/a;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public static b()Ly6/a;
    .locals 5

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/h;

    .line 15
    .line 16
    const-string v3, "location_group"

    .line 17
    .line 18
    const/16 v4, 0x17

    .line 19
    .line 20
    invoke-direct {v2, v1, v3, v4}, Lz6/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lz6/h;->n()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v2
.end method

.method public static c()Ly6/a;
    .locals 5

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/h;

    .line 15
    .line 16
    const-string v3, "location_group"

    .line 17
    .line 18
    const/16 v4, 0x17

    .line 19
    .line 20
    invoke-direct {v2, v1, v3, v4}, Lz6/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Lz6/h;->n()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-object v2
.end method

.method public static d()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/b;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public static e()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/c;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public static f()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, Lz6/d;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public static g()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.NOTIFICATION_SERVICE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, La7/e;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v3}, La7/e;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method public static h()Ly6/a;
    .locals 4

    .line 1
    sget-object v0, Lw6/a;->a:Ls/s;

    .line 2
    .line 3
    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ls/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ly6/a;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v2, La7/g;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v2, v3}, Ly6/a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ls/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v2
.end method
