.class public final Lq3/e;
.super Lg9/n;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lg9/x;Lu1/d;Lkb/a;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lq3/e;->a:I

    .line 1
    iput-object p1, p0, Lq3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq3/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq3/e;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lq3/q;Lq2/h0;Lq3/q;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lq3/e;->a:I

    .line 2
    iput-object p1, p0, Lq3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq3/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Lq3/e;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lw1/s;Lw1/j;Lf9/k;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lq3/e;->a:I

    .line 3
    iput-object p1, p0, Lq3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq3/e;->c:Ljava/lang/Object;

    check-cast p3, Lg9/n;

    iput-object p3, p0, Lq3/e;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lg9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lq3/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw1/s;

    .line 7
    .line 8
    iget-object v0, p0, Lq3/e;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lw1/s;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lq3/e;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lw1/j;

    .line 23
    .line 24
    iget-object v0, v0, Lw1/j;->c:Lw1/s;

    .line 25
    .line 26
    invoke-static {p1, v0}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lq3/e;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lg9/n;

    .line 35
    .line 36
    invoke-interface {v0, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "Focus search landed at the root."

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :pswitch_0
    check-cast p1, Lq2/d2;

    .line 60
    .line 61
    move-object v0, p1

    .line 62
    check-cast v0, Lu1/d;

    .line 63
    .line 64
    iget-object v1, p0, Lq3/e;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lu1/d;

    .line 67
    .line 68
    invoke-static {v1}, Lq2/f;->w(Lq2/l;)Lq2/q1;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lr2/u;

    .line 73
    .line 74
    invoke-virtual {v1}, Lr2/u;->getDragAndDropManager()Lu1/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lu1/a;

    .line 79
    .line 80
    iget-object v1, v1, Lu1/a;->b:Ls/g;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ls/g;->contains(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lq3/e;->d:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Lkb/a;

    .line 91
    .line 92
    invoke-static {v1}, Lp9/x1;->x(Lkb/a;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-static {v0, v1, v2}, Lp9/p1;->g(Lu1/d;J)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v0, p0, Lq3/e;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lg9/x;

    .line 105
    .line 106
    iput-object p1, v0, Lg9/x;->b:Ljava/lang/Object;

    .line 107
    .line 108
    sget-object p1, Lq2/c2;->c:Lq2/c2;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    sget-object p1, Lq2/c2;->a:Lq2/c2;

    .line 112
    .line 113
    :goto_1
    return-object p1

    .line 114
    :pswitch_1
    check-cast p1, La2/g;

    .line 115
    .line 116
    iget-object v0, p0, Lq3/e;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v0, Lq3/q;

    .line 119
    .line 120
    iget-object v1, p0, Lq3/e;->d:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v1, Lq2/h0;

    .line 123
    .line 124
    iget-object v2, p0, Lq3/e;->c:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v2, Lq3/q;

    .line 127
    .line 128
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, La2/b;->z()Ly1/o;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v0}, Lq3/i;->getView()Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    const/16 v4, 0x8

    .line 145
    .line 146
    if-eq v3, v4, :cond_5

    .line 147
    .line 148
    const/4 v3, 0x1

    .line 149
    iput-boolean v3, v0, Lq3/i;->x:Z

    .line 150
    .line 151
    iget-object v1, v1, Lq2/h0;->m:Lq2/q1;

    .line 152
    .line 153
    instance-of v3, v1, Lr2/u;

    .line 154
    .line 155
    if-eqz v3, :cond_3

    .line 156
    .line 157
    check-cast v1, Lr2/u;

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_3
    const/4 v1, 0x0

    .line 161
    :goto_2
    if-eqz v1, :cond_4

    .line 162
    .line 163
    invoke-static {p1}, Ly1/c;->a(Ly1/o;)Landroid/graphics/Canvas;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v1}, Lr2/u;->getAndroidViewsHandler$ui_release()Lr2/w0;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    const/4 p1, 0x0

    .line 178
    iput-boolean p1, v0, Lq3/i;->x:Z

    .line 179
    .line 180
    :cond_5
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 181
    .line 182
    return-object p1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
