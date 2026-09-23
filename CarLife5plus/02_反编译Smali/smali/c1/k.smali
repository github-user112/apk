.class public final Lc1/k;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lf9/a;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Z

.field public final synthetic d:Ly1/l0;

.field public final synthetic e:Lc1/a;

.field public final synthetic f:Lc1/f;

.field public final synthetic g:Ld0/h0;

.field public final synthetic h:Ln1/c;


# direct methods
.method public constructor <init>(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/k;->a:Lf9/a;

    .line 2
    .line 3
    iput-object p2, p0, Lc1/k;->b:Lr1/p;

    .line 4
    .line 5
    iput-boolean p3, p0, Lc1/k;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lc1/k;->d:Ly1/l0;

    .line 8
    .line 9
    iput-object p5, p0, Lc1/k;->e:Lc1/a;

    .line 10
    .line 11
    iput-object p6, p0, Lc1/k;->f:Lc1/f;

    .line 12
    .line 13
    iput-object p7, p0, Lc1/k;->g:Ld0/h0;

    .line 14
    .line 15
    iput-object p8, p0, Lc1/k;->h:Ln1/c;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v8, p1

    .line 2
    check-cast v8, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 7
    .line 8
    .line 9
    const p1, 0x30000037

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    iget-object v0, p0, Lc1/k;->a:Lf9/a;

    .line 17
    .line 18
    iget-object v1, p0, Lc1/k;->b:Lr1/p;

    .line 19
    .line 20
    iget-boolean v2, p0, Lc1/k;->c:Z

    .line 21
    .line 22
    iget-object v3, p0, Lc1/k;->d:Ly1/l0;

    .line 23
    .line 24
    iget-object v4, p0, Lc1/k;->e:Lc1/a;

    .line 25
    .line 26
    iget-object v5, p0, Lc1/k;->f:Lc1/f;

    .line 27
    .line 28
    iget-object v6, p0, Lc1/k;->g:Ld0/h0;

    .line 29
    .line 30
    iget-object v7, p0, Lc1/k;->h:Ln1/c;

    .line 31
    .line 32
    invoke-static/range {v0 .. v9}, Lc1/g1;->c(Lf9/a;Lr1/p;ZLy1/l0;Lc1/a;Lc1/f;Ld0/h0;Ln1/c;Lf1/s;I)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 36
    .line 37
    return-object p1
.end method
