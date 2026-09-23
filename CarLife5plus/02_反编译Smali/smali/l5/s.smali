.class public final synthetic Ll5/s;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:Lg9/x;

.field public final synthetic b:Ll5/l;

.field public final synthetic c:Ld7/q;

.field public final synthetic d:Lf9/k;

.field public final synthetic e:F

.field public final synthetic f:Lf9/k;

.field public final synthetic g:F

.field public final synthetic h:Ld7/q;

.field public final synthetic i:Lf1/b1;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Lf9/o;Ll5/l;Lf9/k;Ld7/q;Lf9/k;FLf9/k;FJFLd7/q;Lf1/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll5/s;->a:Lg9/x;

    .line 5
    .line 6
    iput-object p3, p0, Ll5/s;->b:Ll5/l;

    .line 7
    .line 8
    iput-object p5, p0, Ll5/s;->c:Ld7/q;

    .line 9
    .line 10
    iput-object p6, p0, Ll5/s;->d:Lf9/k;

    .line 11
    .line 12
    iput p7, p0, Ll5/s;->e:F

    .line 13
    .line 14
    iput-object p8, p0, Ll5/s;->f:Lf9/k;

    .line 15
    .line 16
    iput p9, p0, Ll5/s;->g:F

    .line 17
    .line 18
    iput-object p13, p0, Ll5/s;->h:Ld7/q;

    .line 19
    .line 20
    iput-object p14, p0, Ll5/s;->i:Lf1/b1;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, La2/g;

    .line 2
    .line 3
    const-string v0, "$controller"

    .line 4
    .line 5
    iget-object v1, p0, Ll5/s;->b:Ll5/l;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "$isInitialized$delegate"

    .line 11
    .line 12
    iget-object v2, p0, Ll5/s;->i:Lf1/b1;

    .line 13
    .line 14
    invoke-static {v2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "$this$Canvas"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, La2/b;->z()Ly1/o;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Ll5/s;->a:Lg9/x;

    .line 31
    .line 32
    iget-object v0, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ly1/f;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lc7/a;->F(Ly1/f;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const/16 v4, 0x20

    .line 43
    .line 44
    shr-long v4, v2, v4

    .line 45
    .line 46
    long-to-int v5, v4

    .line 47
    const-wide v6, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    and-long/2addr v2, v6

    .line 53
    long-to-int v3, v2

    .line 54
    sget-object v2, Ll5/j;->a:Ld7/q;

    .line 55
    .line 56
    const-string v2, "$this$drawImage"

    .line 57
    .line 58
    invoke-static {p1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Ll5/j;->a:Ld7/q;

    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    invoke-interface {p1, v0, v6, v7, v2}, Ly1/o;->s(Ly1/f;JLd7/q;)V

    .line 66
    .line 67
    .line 68
    int-to-float v2, v3

    .line 69
    const/high16 v3, 0x3f000000    # 0.5f

    .line 70
    .line 71
    mul-float v2, v2, v3

    .line 72
    .line 73
    iget-object v3, p0, Ll5/s;->d:Lf9/k;

    .line 74
    .line 75
    invoke-interface {v3, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ljava/util/List;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    invoke-static {v4, v2}, Lp9/q;->d(FF)J

    .line 83
    .line 84
    .line 85
    move-result-wide v6

    .line 86
    int-to-float v5, v5

    .line 87
    invoke-static {v5, v2}, Lp9/q;->d(FF)J

    .line 88
    .line 89
    .line 90
    move-result-wide v8

    .line 91
    invoke-static {v6, v7, v8, v9, v3}, Ly1/h0;->g(JJLjava/util/List;)Landroid/graphics/LinearGradient;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-object v6, p0, Ll5/s;->c:Ld7/q;

    .line 96
    .line 97
    invoke-virtual {v6, v3}, Ld7/q;->n(Landroid/graphics/Shader;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v0}, Lc7/a;->F(Ly1/f;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    iget v0, p0, Ll5/s;->e:F

    .line 105
    .line 106
    invoke-static {p1, v7, v8, v0, v6}, Ll5/j;->b(Ly1/o;JFLd7/q;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Ll5/s;->f:Lf9/k;

    .line 110
    .line 111
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Number;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    .line 123
    invoke-static {v0, v4, v1}, Li9/a;->m(FFF)F

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    mul-float v0, v0, v5

    .line 128
    .line 129
    invoke-static {v0, v2}, Lp9/q;->d(FF)J

    .line 130
    .line 131
    .line 132
    move-result-wide v0

    .line 133
    iget v2, p0, Ll5/s;->g:F

    .line 134
    .line 135
    iget-object v3, p0, Ll5/s;->h:Ld7/q;

    .line 136
    .line 137
    invoke-interface {p1, v2, v0, v1, v3}, Ly1/o;->e(FJLd7/q;)V

    .line 138
    .line 139
    .line 140
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 141
    .line 142
    return-object p1
.end method
