.class public final Lr3/b;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lr3/t;

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Lr3/s;

.field public final synthetic d:Ln3/m;


# direct methods
.method public constructor <init>(Lr3/t;Lf9/a;Lr3/s;Ln3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/b;->a:Lr3/t;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/b;->b:Lf9/a;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/b;->c:Lr3/s;

    .line 6
    .line 7
    iput-object p4, p0, Lr3/b;->d:Ln3/m;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lr3/b;->c:Lr3/s;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/b;->d:Ln3/m;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/b;->a:Lr3/t;

    .line 6
    .line 7
    iget-object v3, p0, Lr3/b;->b:Lf9/a;

    .line 8
    .line 9
    invoke-virtual {v2, v3, v0, v1}, Lr3/t;->e(Lf9/a;Lr3/s;Ln3/m;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 13
    .line 14
    return-object v0
.end method
