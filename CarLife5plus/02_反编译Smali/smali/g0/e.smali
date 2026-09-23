.class public final synthetic Lg0/e;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lg0/a;

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Lg0/u;

.field public final synthetic d:Ld0/h0;

.field public final synthetic e:Ld0/g;

.field public final synthetic f:Ld0/e;

.field public final synthetic g:Lz/h;

.field public final synthetic h:Z

.field public final synthetic i:Lx/h;

.field public final synthetic j:Lf9/k;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lg0/a;Lr1/p;Lg0/u;Ld0/h0;Ld0/g;Ld0/e;Lz/h;ZLx/h;Lf9/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/e;->a:Lg0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/e;->b:Lr1/p;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/e;->c:Lg0/u;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/e;->d:Ld0/h0;

    .line 11
    .line 12
    iput-object p5, p0, Lg0/e;->e:Ld0/g;

    .line 13
    .line 14
    iput-object p6, p0, Lg0/e;->f:Ld0/e;

    .line 15
    .line 16
    iput-object p7, p0, Lg0/e;->g:Lz/h;

    .line 17
    .line 18
    iput-boolean p8, p0, Lg0/e;->h:Z

    .line 19
    .line 20
    iput-object p9, p0, Lg0/e;->i:Lx/h;

    .line 21
    .line 22
    iput-object p10, p0, Lg0/e;->j:Lf9/k;

    .line 23
    .line 24
    iput p11, p0, Lg0/e;->k:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v10, p1

    .line 2
    check-cast v10, Lf1/s;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lg0/e;->k:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    iget-object v0, p0, Lg0/e;->a:Lg0/a;

    .line 18
    .line 19
    iget-object v1, p0, Lg0/e;->b:Lr1/p;

    .line 20
    .line 21
    iget-object v2, p0, Lg0/e;->c:Lg0/u;

    .line 22
    .line 23
    iget-object v3, p0, Lg0/e;->d:Ld0/h0;

    .line 24
    .line 25
    iget-object v4, p0, Lg0/e;->e:Ld0/g;

    .line 26
    .line 27
    iget-object v5, p0, Lg0/e;->f:Ld0/e;

    .line 28
    .line 29
    iget-object v6, p0, Lg0/e;->g:Lz/h;

    .line 30
    .line 31
    iget-boolean v7, p0, Lg0/e;->h:Z

    .line 32
    .line 33
    iget-object v8, p0, Lg0/e;->i:Lx/h;

    .line 34
    .line 35
    iget-object v9, p0, Lg0/e;->j:Lf9/k;

    .line 36
    .line 37
    invoke-static/range {v0 .. v11}, Li2/c;->f(Lg0/a;Lr1/p;Lg0/u;Ld0/h0;Ld0/g;Ld0/e;Lz/h;ZLx/h;Lf9/k;Lf1/s;I)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 41
    .line 42
    return-object p1
.end method
