.class public final Lr2/l1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lo1/f;


# instance fields
.field public final synthetic a:Lo1/g;

.field public final b:Lr2/m1;


# direct methods
.method public constructor <init>(Lo1/g;Lr2/m1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr2/l1;->a:Lo1/g;

    .line 5
    .line 6
    iput-object p2, p0, Lr2/l1;->b:Lr2/m1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/l1;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo1/g;->a(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/l1;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lo1/g;->b()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/l1;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lo1/g;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final e(Ljava/lang/String;Lf9/a;)Lo1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lr2/l1;->a:Lo1/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lo1/g;->e(Ljava/lang/String;Lf9/a;)Lo1/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
