.class public final synthetic Ll5/i;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final i:Ll5/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ll5/i;

    .line 2
    .line 3
    const-string v4, "setBrightness(FZ)V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    const-class v2, Ll5/l;

    .line 8
    .line 9
    const-string v3, "setBrightness"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lg9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ll5/i;->i:Ll5/i;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    iget-object v0, p1, Ll5/l;->i:Lf1/g1;

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
    iget-object v0, p1, Ll5/l;->g:Lf1/k1;

    .line 59
    .line 60
    invoke-virtual {v0}, Lf1/k1;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ly1/q;

    .line 65
    .line 66
    iget-wide v0, v0, Ly1/q;->a:J

    .line 67
    .line 68
    invoke-static {v0, v1}, Li2/c;->O(J)Lr8/p;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, v0, Lr8/p;->a:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iget-object v0, v0, Lr8/p;->b:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v2, p1, Ll5/l;->e:Lf1/k1;

    .line 89
    .line 90
    sget v3, Ly1/q;->n:I

    .line 91
    .line 92
    iget-object v3, p1, Ll5/l;->h:Lf1/g1;

    .line 93
    .line 94
    invoke-virtual {v3}, Lf1/g1;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/16 v4, 0x10

    .line 105
    .line 106
    invoke-static {v1, v0, p2, v3, v4}, Ln6/a;->i(FFFFI)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    new-instance p2, Ly1/q;

    .line 111
    .line 112
    invoke-direct {p2, v0, v1}, Ly1/q;-><init>(J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, p2}, Lf1/k1;->setValue(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p3}, Ll5/l;->a(Z)V

    .line 119
    .line 120
    .line 121
    :cond_1
    :goto_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 122
    .line 123
    return-object p1
.end method
