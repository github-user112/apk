.class public final synthetic Lg0/j;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:Lr1/p;

.field public final synthetic b:Lg0/u;

.field public final synthetic c:Lg0/c;

.field public final synthetic d:Ld0/h0;

.field public final synthetic e:Lz/h;

.field public final synthetic f:Z

.field public final synthetic g:Lx/h;

.field public final synthetic h:Ld0/g;

.field public final synthetic i:Ld0/e;

.field public final synthetic j:Lf9/k;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Lg0/u;Lg0/c;Ld0/h0;Lz/h;ZLx/h;Ld0/g;Ld0/e;Lf9/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/j;->a:Lr1/p;

    .line 5
    .line 6
    iput-object p2, p0, Lg0/j;->b:Lg0/u;

    .line 7
    .line 8
    iput-object p3, p0, Lg0/j;->c:Lg0/c;

    .line 9
    .line 10
    iput-object p4, p0, Lg0/j;->d:Ld0/h0;

    .line 11
    .line 12
    iput-object p5, p0, Lg0/j;->e:Lz/h;

    .line 13
    .line 14
    iput-boolean p6, p0, Lg0/j;->f:Z

    .line 15
    .line 16
    iput-object p7, p0, Lg0/j;->g:Lx/h;

    .line 17
    .line 18
    iput-object p8, p0, Lg0/j;->h:Ld0/g;

    .line 19
    .line 20
    iput-object p9, p0, Lg0/j;->i:Ld0/e;

    .line 21
    .line 22
    iput-object p10, p0, Lg0/j;->j:Lf9/k;

    .line 23
    .line 24
    iput p11, p0, Lg0/j;->k:I

    .line 25
    .line 26
    iput p12, p0, Lg0/j;->l:I

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

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
    iget p1, p0, Lg0/j;->k:I

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
    iget p1, p0, Lg0/j;->l:I

    .line 18
    .line 19
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 20
    .line 21
    .line 22
    move-result v12

    .line 23
    iget-object v0, p0, Lg0/j;->a:Lr1/p;

    .line 24
    .line 25
    iget-object v1, p0, Lg0/j;->b:Lg0/u;

    .line 26
    .line 27
    iget-object v2, p0, Lg0/j;->c:Lg0/c;

    .line 28
    .line 29
    iget-object v3, p0, Lg0/j;->d:Ld0/h0;

    .line 30
    .line 31
    iget-object v4, p0, Lg0/j;->e:Lz/h;

    .line 32
    .line 33
    iget-boolean v5, p0, Lg0/j;->f:Z

    .line 34
    .line 35
    iget-object v6, p0, Lg0/j;->g:Lx/h;

    .line 36
    .line 37
    iget-object v7, p0, Lg0/j;->h:Ld0/g;

    .line 38
    .line 39
    iget-object v8, p0, Lg0/j;->i:Ld0/e;

    .line 40
    .line 41
    iget-object v9, p0, Lg0/j;->j:Lf9/k;

    .line 42
    .line 43
    invoke-static/range {v0 .. v12}, Li9/a;->f(Lr1/p;Lg0/u;Lg0/c;Ld0/h0;Lz/h;ZLx/h;Ld0/g;Ld0/e;Lf9/k;Lf1/s;II)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 47
    .line 48
    return-object p1
.end method
