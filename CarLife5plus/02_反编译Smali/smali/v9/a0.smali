.class public final Lv9/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/k;


# instance fields
.field public final synthetic a:I

.field public final b:Lba/a;


# direct methods
.method public synthetic constructor <init>(Lba/a;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv9/a0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv9/a0;->b:Lba/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lv9/a0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lv9/b0;

    .line 7
    .line 8
    const-string v0, "<destruct>"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lv9/b0;->a:Lua/b;

    .line 14
    .line 15
    iget-object p1, p1, Lv9/b0;->b:Ljava/util/List;

    .line 16
    .line 17
    iget-boolean v1, v0, Lua/b;->c:Z

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lua/b;->e()Lua/b;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lv9/a0;->b:Lba/a;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Ls8/p;->Z(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v1, v3}, Lba/a;->x(Lua/b;Ljava/util/List;)Lv9/e;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    move-object v5, v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v1, v2, Lba/a;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkb/f;

    .line 42
    .line 43
    iget-object v3, v0, Lua/b;->a:Lua/c;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lkb/f;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lv9/g;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_1
    invoke-virtual {v0}, Lua/b;->g()Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    new-instance v3, Lv9/c0;

    .line 57
    .line 58
    iget-object v1, v2, Lba/a;->b:Ljava/lang/Object;

    .line 59
    .line 60
    move-object v4, v1

    .line 61
    check-cast v4, Lkb/l;

    .line 62
    .line 63
    invoke-virtual {v0}, Lua/b;->f()Lua/e;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {p1}, Ls8/p;->e0(Ljava/util/List;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    move v8, p1

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    :goto_2
    invoke-direct/range {v3 .. v8}, Lv9/c0;-><init>(Lkb/l;Lv9/g;Lua/e;ZI)V

    .line 84
    .line 85
    .line 86
    return-object v3

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v2, "Unresolved local class: "

    .line 92
    .line 93
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :pswitch_0
    check-cast p1, Lua/c;

    .line 108
    .line 109
    const-string v0, "fqName"

    .line 110
    .line 111
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lu9/l;

    .line 115
    .line 116
    iget-object v1, p0, Lv9/a0;->b:Lba/a;

    .line 117
    .line 118
    iget-object v1, v1, Lba/a;->c:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Lv9/y;

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-direct {v0, v1, p1, v2}, Lu9/l;-><init>(Lv9/y;Lua/c;I)V

    .line 124
    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
