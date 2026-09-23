.class public final Lwb/i;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwb/j;


# instance fields
.field public final a:Lwb/j;

.field public final b:Lf9/k;

.field public final c:Lf9/k;


# direct methods
.method public constructor <init>(Lwb/j;Lf9/k;Lf9/k;)V
    .locals 1

    .line 1
    const-string v0, "transformer"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lwb/i;->a:Lwb/j;

    .line 10
    .line 11
    iput-object p2, p0, Lwb/i;->b:Lf9/k;

    .line 12
    .line 13
    iput-object p3, p0, Lwb/i;->c:Lf9/k;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lwb/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwb/g;-><init>(Lwb/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
