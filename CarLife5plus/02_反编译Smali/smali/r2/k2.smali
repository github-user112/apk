.class public final Lr2/k2;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lq2/r1;


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Float;

.field public e:Ly2/h;

.field public f:Ly2/h;


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lr2/k2;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lr2/k2;->b:Ljava/util/List;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lr2/k2;->c:Ljava/lang/Float;

    .line 10
    .line 11
    iput-object p1, p0, Lr2/k2;->d:Ljava/lang/Float;

    .line 12
    .line 13
    iput-object p1, p0, Lr2/k2;->e:Ly2/h;

    .line 14
    .line 15
    iput-object p1, p0, Lr2/k2;->f:Ly2/h;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/k2;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
