.class public final Lg0/g;
.super Lh0/z;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final d:Lf0/q;


# instance fields
.field public final b:Lg0/r;

.field public final c:Le7/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf0/q;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lf0/q;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lg0/g;->d:Lf0/q;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lf9/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lg0/r;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lg0/r;-><init>(Lg0/g;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg0/g;->b:Lg0/r;

    .line 10
    .line 11
    new-instance v0, Le7/l;

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-direct {v0, v1}, Le7/l;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lg0/g;->c:Le7/l;

    .line 18
    .line 19
    invoke-interface {p1, p0}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final k()Le7/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/g;->c:Le7/l;

    .line 2
    .line 3
    return-object v0
.end method
