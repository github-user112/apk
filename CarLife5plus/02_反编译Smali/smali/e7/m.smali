.class public final Le7/m;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Ld7/v;

.field public final synthetic b:Le7/n;


# direct methods
.method public constructor <init>(Le7/n;Ld7/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le7/m;->b:Le7/n;

    .line 5
    .line 6
    iput-object p2, p0, Le7/m;->a:Ld7/v;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Ld7/v;

    .line 2
    .line 3
    check-cast p2, Ld7/v;

    .line 4
    .line 5
    iget-object v0, p0, Le7/m;->b:Le7/n;

    .line 6
    .line 7
    iget-object v1, p0, Le7/m;->a:Ld7/v;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Le7/n;->a(Ld7/v;Ld7/v;)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {v0, p2, v1}, Le7/n;->a(Ld7/v;Ld7/v;)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
