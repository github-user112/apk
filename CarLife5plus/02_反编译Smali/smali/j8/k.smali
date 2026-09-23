.class public final synthetic Lj8/k;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lf9/a;

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:Lf9/n;

.field public final synthetic h:Lf9/n;

.field public final synthetic i:Lf9/n;

.field public final synthetic j:Lf9/n;

.field public final synthetic k:Lf9/n;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;III)V
    .locals 0

    .line 1
    iput p14, p0, Lj8/k;->a:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lj8/k;->b:Z

    .line 4
    .line 5
    iput-object p2, p0, Lj8/k;->c:Lf9/a;

    .line 6
    .line 7
    iput-wide p3, p0, Lj8/k;->d:J

    .line 8
    .line 9
    iput-boolean p5, p0, Lj8/k;->e:Z

    .line 10
    .line 11
    iput p6, p0, Lj8/k;->f:I

    .line 12
    .line 13
    iput-object p7, p0, Lj8/k;->g:Lf9/n;

    .line 14
    .line 15
    iput-object p8, p0, Lj8/k;->h:Lf9/n;

    .line 16
    .line 17
    iput-object p9, p0, Lj8/k;->i:Lf9/n;

    .line 18
    .line 19
    iput-object p10, p0, Lj8/k;->j:Lf9/n;

    .line 20
    .line 21
    iput-object p11, p0, Lj8/k;->k:Lf9/n;

    .line 22
    .line 23
    iput p12, p0, Lj8/k;->l:I

    .line 24
    .line 25
    iput p13, p0, Lj8/k;->m:I

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lj8/k;->a:I

    .line 4
    .line 5
    move-object/from16 v13, p1

    .line 6
    .line 7
    check-cast v13, Lf1/s;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p2

    .line 13
    .line 14
    check-cast v1, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lj8/k;->l:I

    .line 20
    .line 21
    or-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 24
    .line 25
    .line 26
    move-result v14

    .line 27
    iget-boolean v2, v0, Lj8/k;->b:Z

    .line 28
    .line 29
    iget-object v3, v0, Lj8/k;->c:Lf9/a;

    .line 30
    .line 31
    iget-wide v4, v0, Lj8/k;->d:J

    .line 32
    .line 33
    iget-boolean v6, v0, Lj8/k;->e:Z

    .line 34
    .line 35
    iget v7, v0, Lj8/k;->f:I

    .line 36
    .line 37
    iget-object v8, v0, Lj8/k;->g:Lf9/n;

    .line 38
    .line 39
    iget-object v9, v0, Lj8/k;->h:Lf9/n;

    .line 40
    .line 41
    iget-object v10, v0, Lj8/k;->i:Lf9/n;

    .line 42
    .line 43
    iget-object v11, v0, Lj8/k;->j:Lf9/n;

    .line 44
    .line 45
    iget-object v12, v0, Lj8/k;->k:Lf9/n;

    .line 46
    .line 47
    iget v15, v0, Lj8/k;->m:I

    .line 48
    .line 49
    invoke-static/range {v2 .. v15}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 50
    .line 51
    .line 52
    :goto_0
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 53
    .line 54
    return-object v1

    .line 55
    :pswitch_0
    move-object/from16 v1, p2

    .line 56
    .line 57
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget v1, v0, Lj8/k;->l:I

    .line 63
    .line 64
    or-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    invoke-static {v1}, Lf1/b;->y(I)I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    iget-boolean v2, v0, Lj8/k;->b:Z

    .line 71
    .line 72
    iget-object v3, v0, Lj8/k;->c:Lf9/a;

    .line 73
    .line 74
    iget-wide v4, v0, Lj8/k;->d:J

    .line 75
    .line 76
    iget-boolean v6, v0, Lj8/k;->e:Z

    .line 77
    .line 78
    iget v7, v0, Lj8/k;->f:I

    .line 79
    .line 80
    iget-object v8, v0, Lj8/k;->g:Lf9/n;

    .line 81
    .line 82
    iget-object v9, v0, Lj8/k;->h:Lf9/n;

    .line 83
    .line 84
    iget-object v10, v0, Lj8/k;->i:Lf9/n;

    .line 85
    .line 86
    iget-object v11, v0, Lj8/k;->j:Lf9/n;

    .line 87
    .line 88
    iget-object v12, v0, Lj8/k;->k:Lf9/n;

    .line 89
    .line 90
    iget v15, v0, Lj8/k;->m:I

    .line 91
    .line 92
    invoke-static/range {v2 .. v15}, Lj8/p;->a(ZLf9/a;JZILf9/n;Lf9/n;Lf9/n;Lf9/n;Lf9/n;Lf1/s;II)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
