.class public final Lmb/l;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lmb/k;


# instance fields
.field public final c:Lmb/e;

.field public final d:Lxa/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lmb/e;->a:Lmb/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lmb/l;->c:Lmb/e;

    .line 7
    .line 8
    new-instance v0, Lxa/j;

    .line 9
    .line 10
    sget-object v1, Lxa/j;->d:Lxa/b;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lxa/j;-><init>(Lmb/c;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lmb/l;->d:Lxa/j;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Llb/w;Llb/w;)Z
    .locals 4

    .line 1
    const-string v0, "a"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "b"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x6

    .line 13
    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lmb/l;->c:Lmb/e;

    .line 15
    .line 16
    invoke-static {v2, v0, v3, v1}, Lmb/g;->l(ZLmb/e;Lmb/e;I)Llb/j0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Llb/w;->G0()Llb/x0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2}, Llb/w;->G0()Llb/x0;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {v0, p1, p2}, Llb/d;->h(Llb/j0;Lob/d;Lob/d;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final b(Llb/w;Llb/w;)Z
    .locals 4

    .line 1
    const-string v0, "subtype"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "supertype"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x6

    .line 13
    const/4 v2, 0x1

    .line 14
    iget-object v3, p0, Lmb/l;->c:Lmb/e;

    .line 15
    .line 16
    invoke-static {v2, v0, v3, v1}, Lmb/g;->l(ZLmb/e;Lmb/e;I)Llb/j0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p1}, Llb/w;->G0()Llb/x0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2}, Llb/w;->G0()Llb/x0;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, p1, p2}, Llb/d;->f(Llb/j0;Lob/d;Lob/d;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :goto_0
    return v2
.end method
