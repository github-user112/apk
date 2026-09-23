.class public final Llb/o;
.super Llb/q0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# instance fields
.field public final b:Llb/q0;

.field public final c:Llb/q0;


# direct methods
.method public constructor <init>(Llb/q0;Llb/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llb/o;->b:Llb/q0;

    .line 5
    .line 6
    iput-object p2, p0, Llb/o;->c:Llb/q0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Llb/o;->b:Llb/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Llb/q0;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Llb/o;->c:Llb/q0;

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/q0;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Llb/o;->b:Llb/q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Llb/q0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Llb/o;->c:Llb/q0;

    .line 10
    .line 11
    invoke-virtual {v0}, Llb/q0;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public final c(Lw9/h;)Lw9/h;
    .locals 1

    .line 1
    const-string v0, "annotations"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/o;->b:Llb/q0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Llb/o;->c:Llb/q0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Llb/q0;->c(Lw9/h;)Lw9/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final d(Llb/w;)Llb/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/o;->b:Llb/q0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Llb/o;->c:Llb/q0;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Llb/q0;->d(Llb/w;)Llb/n0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    return-object v0
.end method

.method public final f(Llb/w;Llb/y0;)Llb/w;
    .locals 1

    .line 1
    const-string v0, "topLevelType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "position"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llb/o;->b:Llb/q0;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Llb/q0;->f(Llb/w;Llb/y0;)Llb/w;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Llb/o;->c:Llb/q0;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Llb/q0;->f(Llb/w;Llb/y0;)Llb/w;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
