.class public final Lwb/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lwb/j;


# instance fields
.field public final a:Lwb/j;

.field public final b:Z

.field public final c:Lf9/k;


# direct methods
.method public constructor <init>(Lwb/j;ZLf9/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb/h;->a:Lwb/j;

    .line 5
    .line 6
    iput-boolean p2, p0, Lwb/h;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lwb/h;->c:Lf9/k;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lwb/g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lwb/g;-><init>(Lwb/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
