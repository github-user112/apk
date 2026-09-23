.class public final Lc8/u;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ldc/e;


# static fields
.field public static final a:Lc8/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc8/u;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc8/u;->a:Lc8/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lm7/z;

    .line 2
    .line 3
    iget-object p1, p1, Lm7/z;->b:Lm7/a0;

    .line 4
    .line 5
    sget-object p2, Lm7/a0;->f:Lm7/a0;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/content/Intent;

    .line 10
    .line 11
    const-string p2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 p2, 0x20

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p2, "KEY_TYPE"

    .line 22
    .line 23
    const/16 v0, 0x2720

    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ll8/a;->b()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 36
    .line 37
    return-object p1
.end method
