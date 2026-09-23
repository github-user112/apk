.class public final Llb/l;
.super Llb/m;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Llb/j;
.implements Lob/e;


# instance fields
.field public final b:Llb/a0;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Llb/a0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llb/l;->b:Llb/a0;

    .line 5
    .line 6
    iput-boolean p2, p0, Llb/l;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final E0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final K0(Z)Llb/a0;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Llb/l;->b:Llb/a0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Llb/a0;->K0(Z)Llb/a0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    return-object p0
.end method

.method public final L0(Llb/h0;)Llb/a0;
    .locals 2

    .line 1
    const-string v0, "newAttributes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llb/l;

    .line 7
    .line 8
    iget-object v1, p0, Llb/l;->b:Llb/a0;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Llb/a0;->L0(Llb/h0;)Llb/a0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-boolean v1, p0, Llb/l;->c:Z

    .line 15
    .line 16
    invoke-direct {v0, p1, v1}, Llb/l;-><init>(Llb/a0;Z)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final M0()Llb/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/l;->b:Llb/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0(Llb/a0;)Llb/m;
    .locals 2

    .line 1
    new-instance v0, Llb/l;

    .line 2
    .line 3
    iget-boolean v1, p0, Llb/l;->c:Z

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Llb/l;-><init>(Llb/a0;Z)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final p0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Llb/l;->b:Llb/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Llb/w;->D0()Llb/k0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Llb/k0;->k()Lv9/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lv9/q0;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Llb/l;->b:Llb/a0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " & Any"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final x(Llb/w;)Llb/x0;
    .locals 1

    .line 1
    const-string v0, "replacement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Llb/w;->G0()Llb/x0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-boolean v0, p0, Llb/l;->c:Z

    .line 11
    .line 12
    invoke-static {p1, v0}, Llb/c;->m(Llb/x0;Z)Llb/x0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
