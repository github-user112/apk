.class public final Lj3/h;
.super Ll4/h;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Lf1/k1;

.field public final synthetic b:La2/d;


# direct methods
.method public constructor <init>(Lf1/k1;La2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj3/h;->a:Lf1/k1;

    .line 5
    .line 6
    iput-object p2, p0, Lj3/h;->b:La2/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj3/h;->b:La2/d;

    .line 2
    .line 3
    sget-object v1, Lj3/k;->a:Lj3/l;

    .line 4
    .line 5
    iput-object v1, v0, La2/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj3/h;->a:Lf1/k1;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lj3/l;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Lj3/l;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lj3/h;->b:La2/d;

    .line 15
    .line 16
    iput-object v0, v1, La2/d;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method
