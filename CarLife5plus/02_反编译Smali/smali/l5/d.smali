.class public final synthetic Ll5/d;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final i:Ll5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ll5/d;

    .line 2
    .line 3
    const-string v4, "setAlpha(FZ)V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    const-class v2, Ll5/l;

    .line 8
    .line 9
    const-string v3, "setAlpha"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lg9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ll5/d;->i:Ll5/d;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ll5/l;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    check-cast p3, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const-string v0, "p0"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p1, Ll5/l;->h:Lf1/g1;

    .line 21
    .line 22
    iget-object v1, p1, Ll5/l;->n:Lf1/k1;

    .line 23
    .line 24
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    cmpg-float v1, v1, p2

    .line 47
    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lf1/g1;->setValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Ll5/l;->e:Lf1/k1;

    .line 59
    .line 60
    iget-object v1, p1, Ll5/l;->f:Lf1/k1;

    .line 61
    .line 62
    invoke-virtual {v1}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ly1/q;

    .line 67
    .line 68
    iget-wide v1, v1, Ly1/q;->a:J

    .line 69
    .line 70
    invoke-static {p2, v1, v2}, Ly1/q;->b(FJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    new-instance p2, Ly1/q;

    .line 75
    .line 76
    invoke-direct {p2, v1, v2}, Ly1/q;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Ll5/l;->a(Z)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 86
    .line 87
    return-object p1
.end method
