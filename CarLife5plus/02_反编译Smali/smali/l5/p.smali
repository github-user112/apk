.class public final synthetic Ll5/p;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll5/l;


# direct methods
.method public synthetic constructor <init>(Ll5/l;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll5/p;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll5/p;->b:Ll5/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Ll5/p;->a:I

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    iget-object v2, p0, Ll5/p;->b:Ll5/l;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ly1/o;

    .line 11
    .line 12
    check-cast p2, Lx1/e;

    .line 13
    .line 14
    const-string p2, "$controller"

    .line 15
    .line 16
    invoke-static {v2, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "$this$ColorPicker"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-wide v2, v2, Ll5/l;->b:J

    .line 25
    .line 26
    sget-object p2, Ll5/r;->a:Ld7/q;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lp4/e;->p(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-static {v2, v3}, Lx1/e;->c(J)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    .line 38
    mul-float p2, p2, v0

    .line 39
    .line 40
    sget-object v0, Ll5/r;->c:Ly1/o0;

    .line 41
    .line 42
    sget-object v6, Ll5/r;->a:Ld7/q;

    .line 43
    .line 44
    const/high16 v7, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-virtual {v0, v7, v2, v3, v6}, Ly1/j0;->a(FJLd7/q;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Ll5/r;->d:Ly1/f0;

    .line 50
    .line 51
    sget-object v8, Ll5/r;->b:Ld7/q;

    .line 52
    .line 53
    invoke-virtual {v0, v7, v2, v3, v8}, Ly1/j0;->a(FJLd7/q;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, p2, v4, v5, v6}, Ly1/o;->e(FJLd7/q;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, p2, v4, v5, v8}, Ly1/o;->e(FJLd7/q;)V

    .line 60
    .line 61
    .line 62
    return-object v1

    .line 63
    :pswitch_0
    check-cast p1, Lk2/w;

    .line 64
    .line 65
    check-cast p2, Lx1/b;

    .line 66
    .line 67
    iget-wide p1, p1, Lk2/w;->c:J

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    invoke-virtual {v2, p1, p2, v0}, Ll5/l;->b(JZ)V

    .line 71
    .line 72
    .line 73
    return-object v1

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
