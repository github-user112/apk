.class public abstract Ly2/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ly2/u;

.field public static final b:Ly2/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ly2/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Ly2/q;->q:Ly2/q;

    .line 5
    .line 6
    const-string v3, "TestTagsAsResourceId"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Ly2/u;-><init>(Ljava/lang/String;ZLf9/n;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Ly2/s;->a:Ly2/u;

    .line 12
    .line 13
    sget-object v0, Ly2/q;->p:Ly2/q;

    .line 14
    .line 15
    new-instance v1, Ly2/u;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "AccessibilityClassName"

    .line 19
    .line 20
    invoke-direct {v1, v3, v2, v0}, Ly2/u;-><init>(Ljava/lang/String;ZLf9/n;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Ly2/s;->b:Ly2/u;

    .line 24
    .line 25
    return-void
.end method
