.class public abstract Ls9/q;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Ly9/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ly9/b0;

    .line 2
    .line 3
    new-instance v1, Lu9/l;

    .line 4
    .line 5
    sget-object v2, Lnb/l;->a:Lnb/l;

    .line 6
    .line 7
    sget-object v2, Lnb/l;->b:Lnb/e;

    .line 8
    .line 9
    sget-object v3, Ls9/p;->f:Lua/c;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lu9/l;-><init>(Lv9/y;Lua/c;I)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Ls9/p;->g:Lua/c;

    .line 16
    .line 17
    iget-object v2, v2, Lua/c;->a:Lua/d;

    .line 18
    .line 19
    invoke-virtual {v2}, Lua/d;->f()Lua/e;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lkb/l;->e:Lkb/c;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Ly9/b0;-><init>(Lu9/l;Lua/e;Lkb/o;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lv9/x;->e:Lv9/x;

    .line 29
    .line 30
    iput-object v1, v0, Ly9/b0;->h:Lv9/x;

    .line 31
    .line 32
    sget-object v1, Lv9/o;->e:Lea/o;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iput-object v1, v0, Ly9/b0;->i:Lea/o;

    .line 38
    .line 39
    const-string v1, "T"

    .line 40
    .line 41
    invoke-static {v1}, Lua/e;->e(Ljava/lang/String;)Lua/e;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v4, 0x0

    .line 46
    sget-object v5, Llb/y0;->d:Llb/y0;

    .line 47
    .line 48
    invoke-static {v0, v5, v1, v4, v3}, Ly9/p0;->F0(Ly9/b;Llb/y0;Lua/e;ILkb/o;)Ly9/p0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lp9/x1;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v3, v0, Ly9/b0;->k:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Ly9/b0;->k:Ljava/util/ArrayList;

    .line 66
    .line 67
    new-instance v1, Llb/i;

    .line 68
    .line 69
    iget-object v4, v0, Ly9/b0;->l:Ljava/util/ArrayList;

    .line 70
    .line 71
    iget-object v5, v0, Ly9/b0;->m:Lkb/o;

    .line 72
    .line 73
    invoke-direct {v1, v0, v3, v4, v5}, Llb/i;-><init>(Ly9/z;Ljava/util/List;Ljava/util/Collection;Lkb/o;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Ly9/b0;->j:Llb/i;

    .line 77
    .line 78
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lv9/t;

    .line 97
    .line 98
    check-cast v2, Ly9/i;

    .line 99
    .line 100
    invoke-virtual {v0}, Ly9/b;->n()Llb/a0;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iput-object v3, v2, Ly9/u;->g:Llb/w;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    sput-object v0, Ls9/q;->a:Ly9/b0;

    .line 108
    .line 109
    return-void

    .line 110
    :cond_1
    const/16 v0, 0xd

    .line 111
    .line 112
    invoke-static {v0}, Ly9/b0;->p0(I)V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v3, "Type parameters are already set for "

    .line 121
    .line 122
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ly9/b;->getName()Lua/e;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v1

    .line 140
    :cond_3
    const/16 v0, 0x9

    .line 141
    .line 142
    invoke-static {v0}, Ly9/b0;->p0(I)V

    .line 143
    .line 144
    .line 145
    throw v2
.end method
