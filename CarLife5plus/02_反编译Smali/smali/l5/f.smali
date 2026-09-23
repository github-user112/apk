.class public final synthetic Ll5/f;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg9/x;

.field public final synthetic c:Ld7/q;


# direct methods
.method public synthetic constructor <init>(Lg9/x;Ld7/q;I)V
    .locals 0

    .line 1
    iput p3, p0, Ll5/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll5/f;->b:Lg9/x;

    .line 4
    .line 5
    iput-object p2, p0, Ll5/f;->c:Ld7/q;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Ll5/f;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ll5/f;->c:Ld7/q;

    .line 6
    .line 7
    iget-object v3, p0, Ll5/f;->b:Lg9/x;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, La2/g;

    .line 13
    .line 14
    const-string v0, "$this$Canvas"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, La2/g;->X()La2/b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, La2/b;->z()Ly1/o;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Ly1/f;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    sget-object v3, Ll5/j;->a:Ld7/q;

    .line 34
    .line 35
    const-string v3, "$this$drawImage"

    .line 36
    .line 37
    invoke-static {p1, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Ll5/j;->a:Ld7/q;

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-interface {p1, v0, v4, v5, v3}, Ly1/o;->s(Ly1/f;JLd7/q;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lc7/a;->F(Ly1/f;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {p1, v3, v4, v2}, Ll5/j;->a(Ly1/o;JLd7/q;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object v1

    .line 55
    :pswitch_0
    check-cast p1, Ln3/l;

    .line 56
    .line 57
    iget-wide v4, p1, Ln3/l;->a:J

    .line 58
    .line 59
    const/16 p1, 0x20

    .line 60
    .line 61
    shr-long v6, v4, p1

    .line 62
    .line 63
    long-to-int v0, v6

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    const-wide v6, 0xffffffffL

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    and-long v8, v4, v6

    .line 72
    .line 73
    long-to-int v0, v8

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    shr-long v8, v4, p1

    .line 77
    .line 78
    long-to-int p1, v8

    .line 79
    and-long/2addr v6, v4

    .line 80
    long-to-int v0, v6

    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-static {p1, v0, v6}, Ly1/h0;->f(III)Ly1/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p1}, Ly1/h0;->a(Ly1/f;)Ly1/b;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0, v4, v5, v2}, Ll5/j;->a(Ly1/o;JLd7/q;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, v3, Lg9/x;->b:Ljava/lang/Object;

    .line 94
    .line 95
    :cond_1
    return-object v1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
