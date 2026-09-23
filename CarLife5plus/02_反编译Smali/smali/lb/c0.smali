.class public final Llb/c0;
.super Llb/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final c:Llb/h0;


# direct methods
.method public constructor <init>(Llb/a0;Llb/h0;)V
    .locals 1

    .line 1
    const-string v0, "attributes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Llb/n;-><init>(Llb/a0;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Llb/c0;->c:Llb/h0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final C0()Llb/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/c0;->c:Llb/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0(Llb/a0;)Llb/m;
    .locals 2

    .line 1
    new-instance v0, Llb/c0;

    .line 2
    .line 3
    iget-object v1, p0, Llb/c0;->c:Llb/h0;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Llb/c0;-><init>(Llb/a0;Llb/h0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
