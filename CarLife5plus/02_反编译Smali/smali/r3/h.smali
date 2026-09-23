.class public final Lr3/h;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/a;


# instance fields
.field public final synthetic a:Lr3/v;

.field public final synthetic b:Lf9/a;

.field public final synthetic c:Lr3/z;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ln3/m;


# direct methods
.method public constructor <init>(Lr3/v;Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr3/h;->a:Lr3/v;

    .line 2
    .line 3
    iput-object p2, p0, Lr3/h;->b:Lf9/a;

    .line 4
    .line 5
    iput-object p3, p0, Lr3/h;->c:Lr3/z;

    .line 6
    .line 7
    iput-object p4, p0, Lr3/h;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lr3/h;->e:Ln3/m;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/h;->d:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lr3/h;->e:Ln3/m;

    .line 4
    .line 5
    iget-object v2, p0, Lr3/h;->a:Lr3/v;

    .line 6
    .line 7
    iget-object v3, p0, Lr3/h;->b:Lf9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lr3/h;->c:Lr3/z;

    .line 10
    .line 11
    invoke-virtual {v2, v3, v4, v0, v1}, Lr3/v;->j(Lf9/a;Lr3/z;Ljava/lang/String;Ln3/m;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lr8/z;->a:Lr8/z;

    .line 15
    .line 16
    return-object v0
.end method
