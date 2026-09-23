.class public final Lmb/a;
.super Llb/c;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final synthetic a:Lmb/b;

.field public final synthetic b:Llb/s0;


# direct methods
.method public constructor <init>(Lmb/b;Llb/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmb/a;->a:Lmb/b;

    .line 5
    .line 6
    iput-object p2, p0, Lmb/a;->b:Llb/s0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final C(Llb/j0;Lob/d;)Lob/e;
    .locals 2

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "type"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lmb/a;->a:Lmb/b;

    .line 12
    .line 13
    invoke-interface {p1, p2}, Lmb/b;->K(Lob/d;)Llb/a0;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v0, Llb/y0;->c:Llb/y0;

    .line 18
    .line 19
    iget-object v1, p0, Lmb/a;->b:Llb/s0;

    .line 20
    .line 21
    invoke-virtual {v1, p2, v0}, Llb/s0;->g(Llb/w;Llb/y0;)Llb/w;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p1, p2}, Lmb/b;->U(Llb/w;)Llb/a0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
