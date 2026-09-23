.class public final Lba/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lhb/e;
.implements Lna/o;
.implements Lna/m;
.implements Lna/n;
.implements Ls1/f;
.implements Lv/y0;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lba/a;->a:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lba/a;->a:I

    iput-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lba/a;->a:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 89
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba/a;->d:Ljava/lang/Object;

    .line 90
    new-instance p1, Ls/q0;

    const/4 p2, 0x0

    .line 91
    invoke-direct {p1, p2}, Ls/q0;-><init>(I)V

    .line 92
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lm4/b;)V
    .locals 7

    const/4 v0, 0x5

    iput v0, p0, Lba/a;->a:I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 51
    new-instance p1, Ll4/s;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Ll4/s;-><init>(I)V

    iput-object p1, p0, Lba/a;->d:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 52
    invoke-virtual {p2, p1}, Le4/a0;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget v2, p2, Le4/a0;->a:I

    add-int/2addr v0, v2

    .line 54
    iget-object v2, p2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 55
    iget-object v0, p2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 56
    new-array v0, v0, [C

    iput-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 57
    invoke-virtual {p2, p1}, Le4/a0;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    iget v0, p2, Le4/a0;->a:I

    add-int/2addr p1, v0

    .line 59
    iget-object v0, p2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 60
    iget-object p1, p2, Le4/a0;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_7

    .line 61
    new-instance v0, Ll4/v;

    invoke-direct {v0, p0, p2}, Ll4/v;-><init>(Lba/a;I)V

    .line 62
    invoke-virtual {v0}, Ll4/v;->b()Lm4/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 63
    invoke-virtual {v2, v3}, Le4/a0;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Le4/a0;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 64
    :goto_3
    iget-object v3, p0, Lba/a;->c:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 65
    invoke-virtual {v0}, Ll4/v;->b()Lm4/a;

    move-result-object v2

    const/16 v3, 0x10

    .line 66
    invoke-virtual {v2, v3}, Le4/a0;->a(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    iget v5, v2, Le4/a0;->a:I

    add-int/2addr v4, v5

    .line 68
    iget-object v5, v2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 69
    iget-object v2, v2, Le4/a0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    const/4 v4, 0x1

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_6

    .line 70
    iget-object v2, p0, Lba/a;->d:Ljava/lang/Object;

    check-cast v2, Ll4/s;

    .line 71
    invoke-virtual {v0}, Ll4/v;->b()Lm4/a;

    move-result-object v5

    .line 72
    invoke-virtual {v5, v3}, Le4/a0;->a(I)I

    move-result v3

    if-eqz v3, :cond_5

    .line 73
    iget v6, v5, Le4/a0;->a:I

    add-int/2addr v3, v6

    .line 74
    iget-object v6, v5, Le4/a0;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 75
    iget-object v3, v5, Le4/a0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_6
    sub-int/2addr v3, v4

    .line 76
    invoke-virtual {v2, v0, v1, v3}, Ll4/s;->a(Ll4/v;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 77
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid metadata codepoint length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/r0;Landroidx/lifecycle/q0;Lu4/b;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lba/a;->a:I

    const-string v0, "store"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultExtras"

    invoke-static {p3, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 28
    iput-object p3, p0, Lba/a;->d:Ljava/lang/Object;

    .line 29
    new-instance p1, Ln6/a;

    const/16 p2, 0x11

    .line 30
    invoke-direct {p1, p2}, Ln6/a;-><init>(I)V

    .line 31
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lha/a;Lha/f;Lr8/h;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lba/a;->a:I

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 84
    iput-object p3, p0, Lba/a;->d:Ljava/lang/Object;

    .line 85
    new-instance p1, La2/b;

    invoke-direct {p1, p0, p2}, La2/b;-><init>(Lba/a;Lha/f;)V

    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Lba/a;->a:I

    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lba/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lba/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lba/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljb/i;)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lba/a;->a:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 100
    iget-object v0, p1, Ljb/i;->e:Lpa/k;

    .line 101
    iget-object v0, v0, Lpa/k;->t:Ljava/util/List;

    .line 102
    const-string v1, "getEnumEntryList(...)"

    invoke-static {v0, v1}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 103
    invoke-static {v0, v1}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Ls8/c0;->H(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const/16 v1, 0x10

    .line 104
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 106
    move-object v3, v1

    check-cast v3, Lpa/v;

    .line 107
    iget-object v4, p1, Ljb/i;->l:Lhb/k;

    .line 108
    iget-object v4, v4, Lhb/k;->b:Lra/f;

    .line 109
    iget v3, v3, Lpa/v;->d:I

    .line 110
    invoke-static {v4, v3}, Li9/a;->E(Lra/f;I)Lua/e;

    move-result-object v3

    .line 111
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    iput-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    check-cast p1, Ljb/i;

    .line 114
    iget-object v0, p1, Ljb/i;->l:Lhb/k;

    .line 115
    iget-object v0, v0, Lhb/k;->a:Lhb/i;

    .line 116
    iget-object v0, v0, Lhb/i;->a:Lkb/l;

    .line 117
    new-instance v1, La8/h0;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, La8/h0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lkb/l;->c(Lf9/k;)Lf1/e;

    move-result-object p1

    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 118
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    check-cast p1, Ljb/i;

    .line 119
    iget-object p1, p1, Ljb/i;->l:Lhb/k;

    .line 120
    iget-object p1, p1, Lhb/k;->a:Lhb/i;

    .line 121
    iget-object p1, p1, Lhb/i;->a:Lkb/l;

    .line 122
    new-instance v0, La8/g0;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, La8/g0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    new-instance v1, Lkb/j;

    .line 124
    invoke-direct {v1, p1, v0}, Lkb/i;-><init>(Lkb/l;Lf9/a;)V

    .line 125
    iput-object v1, p0, Lba/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lk2/d0;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lba/a;->a:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 47
    sget-object p1, Lk2/b0;->a:Lk2/b0;

    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkb/l;Lv9/y;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lba/a;->a:I

    const-string v0, "module"

    invoke-static {p2, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 4
    new-instance p2, Lv9/a0;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lv9/a0;-><init>(Lba/a;I)V

    invoke-virtual {p1, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    move-result-object p2

    iput-object p2, p0, Lba/a;->d:Ljava/lang/Object;

    .line 5
    new-instance p2, Lv9/a0;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lv9/a0;-><init>(Lba/a;I)V

    invoke-virtual {p1, p2}, Lkb/l;->b(Lf9/k;)Lkb/f;

    move-result-object p1

    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lna/d;Lua/e;Lp/h3;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lba/a;->a:I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lba/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lba/a;->e:Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lp/h3;Lba/a;Ljava/util/ArrayList;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lba/a;->a:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lba/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lba/a;->e:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpa/g0;Lu0/j;Lqa/a;Lhb/b0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lba/a;->a:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lba/a;->c:Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Lba/a;->d:Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Lpa/g0;->g:Ljava/util/List;

    .line 11
    const-string p2, "getClass_List(...)"

    invoke-static {p1, p2}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0xa

    .line 12
    invoke-static {p1, p2}, Ls8/q;->S(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Ls8/c0;->H(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    const/16 p2, 0x10

    .line 13
    :cond_0
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 15
    move-object p4, p2

    check-cast p4, Lpa/k;

    .line 16
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    check-cast v0, Lu0/j;

    .line 17
    iget p4, p4, Lpa/k;->e:I

    .line 18
    invoke-static {v0, p4}, Li9/a;->B(Lra/f;I)Lua/b;

    move-result-object p4

    .line 19
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_1
    iput-object p3, p0, Lba/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lr2/u;Ls1/k;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lba/a;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lba/a;->b:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lq0/o;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Ls1/g;->f(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lq0/o;->g(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    move-result-object p2

    if-eqz p2, :cond_2

    iput-object p2, p0, Lba/a;->d:Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lq0/o;->x(Lr2/u;)V

    .line 37
    invoke-static {p1}, Lp4/e;->o(Landroid/view/View;)Lf4/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p1, Lf4/d;->a:Ljava/lang/Object;

    invoke-static {p1}, Ls1/o;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 39
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    return-void

    .line 40
    :cond_1
    const-string p1, "Required value was null."

    .line 41
    invoke-static {p1}, Lp9/v;->m(Ljava/lang/String;)Lac/p;

    move-result-object p1

    .line 42
    throw p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    const-string p2, "Autofill service could not be located."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lu0/j;Lna/q;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lba/a;->a:I

    .line 78
    iput-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    iput v0, p0, Lba/a;->a:I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lba/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lv/w;)V
    .locals 2

    const/16 v0, 0xe

    iput v0, p0, Lba/a;->a:I

    .line 126
    new-instance v0, Lkb/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p1}, Lkb/a;-><init>(ILjava/lang/Object;)V

    const/16 p1, 0xe

    .line 127
    invoke-direct {p0, p1, v0}, Lba/a;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Lm9/c;)Landroidx/lifecycle/o0;
    .locals 4

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ln6/a;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lba/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Landroidx/lifecycle/r0;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Landroidx/lifecycle/r0;->a:Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/lifecycle/o0;

    .line 25
    .line 26
    invoke-interface {p2, v1}, Lm9/c;->l(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroidx/lifecycle/q0;

    .line 35
    .line 36
    instance-of p2, p1, Landroidx/lifecycle/m0;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    check-cast p1, Landroidx/lifecycle/m0;

    .line 41
    .line 42
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p1, Landroidx/lifecycle/m0;->d:Landroidx/lifecycle/v;

    .line 46
    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    iget-object p1, p1, Landroidx/lifecycle/m0;->e:Landroid/support/v4/media/session/t;

    .line 50
    .line 51
    invoke-static {p1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p1, p2}, Landroidx/lifecycle/i0;->a(Landroidx/lifecycle/o0;Landroid/support/v4/media/session/t;Landroidx/lifecycle/v;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_4

    .line 60
    :cond_0
    :goto_0
    const-string p1, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel"

    .line 61
    .line 62
    invoke-static {v1, p1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_1
    new-instance v1, Lu4/c;

    .line 67
    .line 68
    iget-object v2, p0, Lba/a;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v2, Lu4/b;

    .line 71
    .line 72
    invoke-direct {v1, v2}, Lu4/c;-><init>(Lu4/b;)V

    .line 73
    .line 74
    .line 75
    sget-object v2, Landroidx/lifecycle/i0;->d:Lib/d;

    .line 76
    .line 77
    iget-object v3, v1, Lu4/b;->a:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v2, Landroidx/lifecycle/q0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    :try_start_1
    invoke-interface {v2, p2, v1}, Landroidx/lifecycle/q0;->f(Lm9/c;Lu4/c;)Landroidx/lifecycle/o0;

    .line 87
    .line 88
    .line 89
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :goto_1
    move-object v1, p2

    .line 91
    goto :goto_2

    .line 92
    :catch_0
    :try_start_2
    invoke-static {p2}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-interface {v2, v3, v1}, Landroidx/lifecycle/q0;->c(Ljava/lang/Class;Lu4/c;)Landroidx/lifecycle/o0;

    .line 97
    .line 98
    .line 99
    move-result-object p2
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    :try_start_3
    invoke-static {p2}, Lc7/a;->v(Lm9/c;)Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-interface {v2, p2}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;)Landroidx/lifecycle/o0;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    iget-object p2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p2, Landroidx/lifecycle/r0;

    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    const-string v2, "viewModel"

    .line 118
    .line 119
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p2, Landroidx/lifecycle/r0;->a:Ljava/util/LinkedHashMap;

    .line 123
    .line 124
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Landroidx/lifecycle/o0;

    .line 129
    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/lifecycle/o0;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_3
    monitor-exit v0

    .line 136
    return-object v1

    .line 137
    :goto_4
    monitor-exit v0

    .line 138
    throw p1
.end method

.method public B(Lv9/p0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv9/p0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lba/a;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lba/a;->B(Lv9/p0;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    return v1

    .line 28
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public C(Lp4/c0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-object v1, v0, Lp4/k;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, v0, Lp4/k;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-boolean p1, v0, Lp4/k;->B:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-boolean p1, v0, Lp4/k;->A:Z

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lp4/z;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lp4/z;->c(Lp4/k;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lp4/z;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lp4/z;->f(Lp4/k;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, v0, Lp4/k;->B:Z

    .line 46
    .line 47
    :cond_2
    const/4 p1, 0x2

    .line 48
    invoke-static {p1}, Lp4/x;->D(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Added fragment to active set "

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "FragmentManager"

    .line 69
    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public D(Lp4/c0;)V
    .locals 3

    .line 1
    iget-object p1, p1, Lp4/c0;->c:Lp4/k;

    .line 2
    .line 3
    iget-boolean v0, p1, Lp4/k;->A:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lp4/z;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lp4/z;->f(Lp4/k;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v1, p1, Lp4/k;->e:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lp4/c0;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x2

    .line 31
    invoke-static {v0}, Lp4/x;->D(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Removed fragment from active set "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "FragmentManager"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public E(Ln/a;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lba/a;->u(Ln/a;)Ln/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lo/t;

    .line 10
    .line 11
    iget-object v2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/content/Context;

    .line 14
    .line 15
    check-cast p2, Lz3/a;

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, Lo/t;-><init>(Landroid/content/Context;Lz3/a;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public F(Ln/a;Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lba/a;->u(Ln/a;)Ln/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ls/q0;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ls/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/Menu;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    new-instance v2, Lo/b0;

    .line 22
    .line 23
    iget-object v3, p0, Lba/a;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroid/content/Context;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    check-cast v4, Lo/m;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Lo/b0;-><init>(Landroid/content/Context;Lo/m;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Ls/q0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public G(Lk2/o;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk2/b0;

    .line 4
    .line 5
    sget-object v1, Lk2/b0;->b:Lk2/b0;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lo2/w;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    invoke-interface {v0, v1, v2}, Lo2/w;->F(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    new-instance v2, Lk2/c0;

    .line 22
    .line 23
    iget-object v3, p0, Lba/a;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Lk2/d0;

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-direct {v2, v3, v4}, Lk2/c0;-><init>(Lk2/d0;I)V

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {p1, v0, v1, v2, v3}, Lk2/v;->g(Lk2/o;JLf9/k;Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "layoutCoordinates not set"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    sget-object p1, Lk2/b0;->c:Lk2/b0;

    .line 45
    .line 46
    iput-object p1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 47
    .line 48
    return-void
.end method

.method public H(ILua/b;Laa/a;)Lp/h3;
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lna/q;

    .line 4
    .line 5
    new-instance v1, Lna/q;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lna/q;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x40

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v1, p1}, Lna/q;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lu0/j;

    .line 35
    .line 36
    iget-object v0, p1, Lu0/j;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/List;

    .line 45
    .line 46
    if-nez v2, :cond_0

    .line 47
    .line 48
    new-instance v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p1, Lu0/j;->b:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Lna/d;

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3, v2}, Lna/d;->l(Lua/b;Laa/a;Ljava/util/List;)Lp/h3;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public S(Lua/b;)Lhb/d;
    .locals 5

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lpa/k;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v1, Lhb/d;

    .line 21
    .line 22
    iget-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lu0/j;

    .line 25
    .line 26
    iget-object v3, p0, Lba/a;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Lqa/a;

    .line 29
    .line 30
    iget-object v4, p0, Lba/a;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lhb/b0;

    .line 33
    .line 34
    invoke-virtual {v4, p1}, Lhb/b0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    sget-object p1, Lv9/m0;->e0:Lv9/n0;

    .line 38
    .line 39
    invoke-direct {v1, v2, v0, v3, p1}, Lhb/d;-><init>(Lra/f;Lpa/k;Lra/a;Lv9/m0;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public synthetic a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public b()V
    .locals 5

    .line 1
    iget v0, p0, Lba/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lp/h3;

    .line 9
    .line 10
    iget-object v1, p0, Lba/a;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lua/e;

    .line 13
    .line 14
    iget-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v3, "elements"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_0
    iget-object v3, v0, Lp/h3;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Lv9/e;

    .line 33
    .line 34
    invoke-static {v1, v3}, Lc7/a;->s(Lua/e;Lv9/e;)Ly9/r0;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    iget-object v0, v0, Lp/h3;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-static {v2}, Lub/k;->d(Ljava/util/ArrayList;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v3, Ly9/s0;

    .line 49
    .line 50
    invoke-virtual {v3}, Ly9/s0;->getType()Llb/w;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "getType(...)"

    .line 55
    .line 56
    invoke-static {v3, v4}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lza/x;

    .line 60
    .line 61
    invoke-direct {v4, v2, v3}, Lza/x;-><init>(Ljava/util/List;Llb/w;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    iget-object v3, v0, Lp/h3;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lna/d;

    .line 71
    .line 72
    iget-object v4, v0, Lp/h3;->f:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lua/b;

    .line 75
    .line 76
    invoke-virtual {v3, v4}, Lna/d;->j(Lua/b;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1}, Lua/e;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v3, "value"

    .line 87
    .line 88
    invoke-static {v1, v3}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    instance-of v4, v3, Lza/a;

    .line 114
    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, v0, Lp/h3;->g:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Ljava/util/List;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lza/a;

    .line 140
    .line 141
    iget-object v2, v2, Lza/g;->a:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Lw9/b;

    .line 144
    .line 145
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    :goto_2
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v0, Lp/h3;

    .line 153
    .line 154
    invoke-virtual {v0}, Lp/h3;->b()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lba/a;

    .line 160
    .line 161
    iget-object v0, v0, Lba/a;->b:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Ljava/util/ArrayList;

    .line 164
    .line 165
    new-instance v1, Lza/a;

    .line 166
    .line 167
    iget-object v2, p0, Lba/a;->e:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v2, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-static {v2}, Ls8/p;->s0(Ljava/util/List;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Lw9/b;

    .line 176
    .line 177
    invoke-direct {v1, v2}, Lza/a;-><init>(Lw9/b;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :pswitch_1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v0, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_5

    .line 193
    .line 194
    iget-object v1, p0, Lba/a;->d:Ljava/lang/Object;

    .line 195
    .line 196
    check-cast v1, Lu0/j;

    .line 197
    .line 198
    iget-object v1, v1, Lu0/j;->c:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v1, Ljava/util/HashMap;

    .line 201
    .line 202
    iget-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v2, Lna/q;

    .line 205
    .line 206
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    :cond_5
    return-void

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lua/e;)Lna/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lp/h3;->c(Lua/e;)Lna/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d(Lua/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->d(Lua/e;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Lua/e;Lza/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->e(Lua/e;Lza/f;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Lua/e;Lua/b;Lua/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lp/h3;->f(Lua/e;Lua/b;Lua/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Lv/p;Lv/p;Lv/p;)J
    .locals 8

    .line 1
    invoke-virtual {p1}, Lv/p;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    .line 10
    iget-object v4, p0, Lba/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v4, Lkb/a;

    .line 13
    .line 14
    invoke-virtual {v4, v3}, Lkb/a;->S(I)Lv/w;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {p1, v3}, Lv/p;->a(I)F

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p2, v3}, Lv/p;->a(I)F

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {p3, v3}, Lv/p;->a(I)F

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-interface {v4, v5, v6, v7}, Lv/w;->b(FFF)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-wide v1
.end method

.method public h(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lna/d;

    .line 8
    .line 9
    iget-object v2, p0, Lba/a;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lua/e;

    .line 12
    .line 13
    invoke-static {v1, v2, p1}, Lna/d;->a(Lna/d;Lua/e;Ljava/lang/Object;)Lza/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public i(Lv/p;Lv/p;Lv/p;)Lv/p;
    .locals 9

    .line 1
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/p;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lv/p;->c()Lv/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lv/p;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "endVelocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lv/p;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lba/a;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lv/p;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lba/a;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lkb/a;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Lkb/a;->S(I)Lv/w;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p1, v3}, Lv/p;->a(I)F

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p2, v3}, Lv/p;->a(I)F

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    invoke-virtual {p3, v3}, Lv/p;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-interface {v5, v6, v7, v8}, Lv/w;->c(FFF)F

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v4, v5, v3}, Lv/p;->e(FI)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_2
    iget-object p1, p0, Lba/a;->e:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lv/p;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_3
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_4
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v1
.end method

.method public j(Lua/b;Lua/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Lza/i;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lza/i;-><init>(Lua/b;Lua/e;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public k(Lua/b;)Lna/m;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lna/d;

    .line 9
    .line 10
    sget-object v2, Lv9/m0;->e0:Lv9/n0;

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2, v0}, Lna/d;->k(Lua/b;Lv9/m0;Ljava/util/List;)Lp/h3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lba/a;

    .line 17
    .line 18
    invoke-direct {v1, p1, p0, v0}, Lba/a;-><init>(Lp/h3;Lba/a;Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    return-object v1
.end method

.method public l(Lua/b;Lua/e;)Lna/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lp/h3;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lp/h3;->l(Lua/b;Lua/e;)Lna/m;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public m(Lua/b;Laa/a;)Lna/m;
    .locals 2

    .line 1
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu0/j;

    .line 4
    .line 5
    iget-object v0, v0, Lu0/j;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lna/d;

    .line 8
    .line 9
    iget-object v1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, v1}, Lna/d;->l(Lua/b;Laa/a;Ljava/util/List;)Lp/h3;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public n(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 14

    .line 1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/p;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lv/p;->c()Lv/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lv/p;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "valueVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lv/p;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lba/a;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lv/p;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lba/a;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lkb/a;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Lkb/a;->S(I)Lv/w;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Lv/p;->a(I)F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    move-object/from16 v12, p4

    .line 50
    .line 51
    invoke-virtual {v12, v3}, Lv/p;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    move-object/from16 v13, p5

    .line 56
    .line 57
    invoke-virtual {v13, v3}, Lv/p;->a(I)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    move-wide v7, p1

    .line 62
    invoke-interface/range {v6 .. v11}, Lv/w;->e(JFFF)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v4, v6, v3}, Lv/p;->e(FI)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lv/p;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_4
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public o(Lza/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v1, Lza/s;

    .line 6
    .line 7
    new-instance v2, Lza/q;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Lza/q;-><init>(Lza/f;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public p(JLv/p;Lv/p;Lv/p;)Lv/p;
    .locals 14

    .line 1
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/p;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p5 .. p5}, Lv/p;->c()Lv/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lv/p;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "velocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lv/p;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lba/a;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lv/p;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v5, p0, Lba/a;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lkb/a;

    .line 38
    .line 39
    invoke-virtual {v5, v3}, Lkb/a;->S(I)Lv/w;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move-object/from16 v5, p3

    .line 44
    .line 45
    invoke-virtual {v5, v3}, Lv/p;->a(I)F

    .line 46
    .line 47
    .line 48
    move-result v9

    .line 49
    move-object/from16 v12, p4

    .line 50
    .line 51
    invoke-virtual {v12, v3}, Lv/p;->a(I)F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    move-object/from16 v13, p5

    .line 56
    .line 57
    invoke-virtual {v13, v3}, Lv/p;->a(I)F

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    move-wide v7, p1

    .line 62
    invoke-interface/range {v6 .. v11}, Lv/w;->a(JFFF)F

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v4, v6, v3}, Lv/p;->e(FI)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lv/p;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_3
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v1

    .line 87
    :cond_4
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1
.end method

.method public q(Lp4/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lba/a;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Lp4/k;->k:Z

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Fragment already added: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public r(Lk2/o;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lk2/d0;

    .line 4
    .line 5
    iget-object v1, p1, Lk2/o;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Lk2/w;

    .line 20
    .line 21
    invoke-virtual {v5}, Lk2/w;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lba/a;->G(Lk2/o;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lo2/w;

    .line 37
    .line 38
    if-eqz v2, :cond_4

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    invoke-interface {v2, v4, v5}, Lo2/w;->F(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    new-instance v2, Lc1/a1;

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    invoke-direct {v2, v6, p0, v0}, Lc1/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v4, v5, v2, v3}, Lk2/v;->g(Lk2/o;JLf9/k;Z)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Lk2/b0;

    .line 58
    .line 59
    sget-object v4, Lk2/b0;->b:Lk2/b0;

    .line 60
    .line 61
    if-ne v2, v4, :cond_3

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    :goto_1
    if-ge v3, p2, :cond_2

    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lk2/w;

    .line 76
    .line 77
    invoke-virtual {v2}, Lk2/w;->a()V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object p1, p1, Lk2/o;->b:Lk2/i;

    .line 84
    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-boolean p2, v0, Lk2/d0;->c:Z

    .line 88
    .line 89
    xor-int/lit8 p2, p2, 0x1

    .line 90
    .line 91
    iput-boolean p2, p1, Lk2/i;->a:Z

    .line 92
    .line 93
    :cond_3
    return-void

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string p2, "layoutCoordinates not set"

    .line 97
    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public s(Ljava/lang/String;)Lp4/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lp4/c0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lp4/c0;->c:Lp4/k;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public t(Ljava/lang/String;)Lp4/k;
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lp4/c0;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, v1, Lp4/c0;->c:Lp4/k;

    .line 28
    .line 29
    iget-object v2, v1, Lp4/k;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, v1, Lp4/k;->t:Lp4/x;

    .line 39
    .line 40
    iget-object v1, v1, Lp4/x;->c:Lba/a;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lba/a;->t(Ljava/lang/String;)Lp4/k;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    if-eqz v1, :cond_0

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public u(Ln/a;)Ln/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ln/e;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v3, Ln/e;->b:Ln/a;

    .line 21
    .line 22
    if-ne v4, p1, :cond_0

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v1, Ln/e;

    .line 29
    .line 30
    iget-object v2, p0, Lba/a;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Ln/e;-><init>(Landroid/content/Context;Ln/a;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public v()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lp4/c0;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object v0
.end method

.method public w()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lba/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lp4/c0;

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lp4/c0;->c:Lp4/k;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0
.end method

.method public x(Lua/b;Ljava/util/List;)Lv9/e;
    .locals 2

    .line 1
    const-string v0, "classId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lba/a;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lkb/f;

    .line 9
    .line 10
    new-instance v1, Lv9/b0;

    .line 11
    .line 12
    invoke-direct {v1, p1, p2}, Lv9/b0;-><init>(Lua/b;Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lv9/e;

    .line 20
    .line 21
    return-object p1
.end method

.method public y()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lba/a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, p0, Lba/a;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1
.end method

.method public z(JLv/p;Lv/p;)Lv/p;
    .locals 14

    .line 1
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv/p;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Lv/p;->c()Lv/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lv/p;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const-string v2, "velocityVector"

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-virtual {v0}, Lv/p;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v0, :cond_3

    .line 28
    .line 29
    iget-object v4, p0, Lba/a;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lv/p;

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    iget-object v5, p0, Lba/a;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Lkb/a;

    .line 38
    .line 39
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-object/from16 v6, p4

    .line 43
    .line 44
    invoke-virtual {v6, v3}, Lv/p;->a(I)F

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    const-wide/32 v8, 0xf4240

    .line 49
    .line 50
    .line 51
    div-long v8, p1, v8

    .line 52
    .line 53
    iget-object v5, v5, Lkb/a;->b:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v5, Lu/e;

    .line 56
    .line 57
    invoke-virtual {v5, v7}, Lu/e;->a(F)Lu/d;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-wide v10, v5, Lu/d;->c:J

    .line 62
    .line 63
    const-wide/16 v12, 0x0

    .line 64
    .line 65
    cmp-long v7, v10, v12

    .line 66
    .line 67
    if-lez v7, :cond_1

    .line 68
    .line 69
    long-to-float v7, v8

    .line 70
    long-to-float v8, v10

    .line 71
    div-float/2addr v7, v8

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    .line 74
    .line 75
    :goto_1
    invoke-static {v7}, Lu/b;->a(F)Lu/a;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    iget v7, v7, Lu/a;->b:F

    .line 80
    .line 81
    iget v8, v5, Lu/d;->a:F

    .line 82
    .line 83
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    mul-float v8, v8, v7

    .line 88
    .line 89
    iget v5, v5, Lu/d;->b:F

    .line 90
    .line 91
    mul-float v8, v8, v5

    .line 92
    .line 93
    long-to-float v5, v10

    .line 94
    div-float/2addr v8, v5

    .line 95
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 96
    .line 97
    mul-float v8, v8, v5

    .line 98
    .line 99
    invoke-virtual {v4, v8, v3}, Lv/p;->e(FI)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :cond_3
    iget-object v0, p0, Lba/a;->d:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Lv/p;

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    return-object v0

    .line 116
    :cond_4
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_5
    invoke-static {v2}, Lg9/l;->j(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1
.end method
