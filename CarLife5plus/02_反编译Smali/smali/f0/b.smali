.class public final synthetic Lf0/b;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr1/p;

.field public final synthetic c:Lf0/u;

.field public final synthetic d:Ld0/h0;

.field public final synthetic e:Lz/h;

.field public final synthetic f:Z

.field public final synthetic g:Lx/h;

.field public final synthetic h:Lr1/f;

.field public final synthetic i:Ld0/g;

.field public final synthetic j:Lf9/k;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lr1/p;Lf0/u;Ld0/h0;Ld0/g;Lr1/f;Lz/h;ZLx/h;Lf9/k;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lf0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->b:Lr1/p;

    iput-object p2, p0, Lf0/b;->c:Lf0/u;

    iput-object p3, p0, Lf0/b;->d:Ld0/h0;

    iput-object p4, p0, Lf0/b;->i:Ld0/g;

    iput-object p5, p0, Lf0/b;->h:Lr1/f;

    iput-object p6, p0, Lf0/b;->e:Lz/h;

    iput-boolean p7, p0, Lf0/b;->f:Z

    iput-object p8, p0, Lf0/b;->g:Lx/h;

    iput-object p9, p0, Lf0/b;->j:Lf9/k;

    iput p10, p0, Lf0/b;->k:I

    iput p11, p0, Lf0/b;->l:I

    return-void
.end method

.method public synthetic constructor <init>(Lr1/p;Lf0/u;Ld0/h0;Lz/h;ZLx/h;Lr1/f;Ld0/g;Lf9/k;II)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lf0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/b;->b:Lr1/p;

    iput-object p2, p0, Lf0/b;->c:Lf0/u;

    iput-object p3, p0, Lf0/b;->d:Ld0/h0;

    iput-object p4, p0, Lf0/b;->e:Lz/h;

    iput-boolean p5, p0, Lf0/b;->f:Z

    iput-object p6, p0, Lf0/b;->g:Lx/h;

    iput-object p7, p0, Lf0/b;->h:Lr1/f;

    iput-object p8, p0, Lf0/b;->i:Ld0/g;

    iput-object p9, p0, Lf0/b;->j:Lf9/k;

    iput p10, p0, Lf0/b;->k:I

    iput p11, p0, Lf0/b;->l:I

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Lf0/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v6, p1

    .line 7
    check-cast v6, Lf1/s;

    .line 8
    .line 9
    check-cast p2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget p1, p0, Lf0/b;->k:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget p1, p0, Lf0/b;->l:I

    .line 23
    .line 24
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iget-object v3, p0, Lf0/b;->i:Ld0/g;

    .line 29
    .line 30
    iget-object v4, p0, Lf0/b;->d:Ld0/h0;

    .line 31
    .line 32
    iget-object v5, p0, Lf0/b;->c:Lf0/u;

    .line 33
    .line 34
    iget-object v7, p0, Lf0/b;->j:Lf9/k;

    .line 35
    .line 36
    iget-object v8, p0, Lf0/b;->h:Lr1/f;

    .line 37
    .line 38
    iget-object v9, p0, Lf0/b;->b:Lr1/p;

    .line 39
    .line 40
    iget-object v10, p0, Lf0/b;->g:Lx/h;

    .line 41
    .line 42
    iget-object v11, p0, Lf0/b;->e:Lz/h;

    .line 43
    .line 44
    iget-boolean v12, p0, Lf0/b;->f:Z

    .line 45
    .line 46
    invoke-static/range {v1 .. v12}, Lg5/a;->k(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V

    .line 47
    .line 48
    .line 49
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_0
    move-object v5, p1

    .line 53
    check-cast v5, Lf1/s;

    .line 54
    .line 55
    check-cast p2, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget p1, p0, Lf0/b;->k:I

    .line 61
    .line 62
    or-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    invoke-static {p1}, Lf1/b;->y(I)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget v1, p0, Lf0/b;->l:I

    .line 69
    .line 70
    iget-object v2, p0, Lf0/b;->i:Ld0/g;

    .line 71
    .line 72
    iget-object v3, p0, Lf0/b;->d:Ld0/h0;

    .line 73
    .line 74
    iget-object v4, p0, Lf0/b;->c:Lf0/u;

    .line 75
    .line 76
    iget-object v6, p0, Lf0/b;->j:Lf9/k;

    .line 77
    .line 78
    iget-object v7, p0, Lf0/b;->h:Lr1/f;

    .line 79
    .line 80
    iget-object v8, p0, Lf0/b;->b:Lr1/p;

    .line 81
    .line 82
    iget-object v9, p0, Lf0/b;->g:Lx/h;

    .line 83
    .line 84
    iget-object v10, p0, Lf0/b;->e:Lz/h;

    .line 85
    .line 86
    iget-boolean v11, p0, Lf0/b;->f:Z

    .line 87
    .line 88
    invoke-static/range {v0 .. v11}, Lc7/a;->b(IILd0/g;Ld0/h0;Lf0/u;Lf1/s;Lf9/k;Lr1/f;Lr1/p;Lx/h;Lz/h;Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
