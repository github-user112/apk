.class public final Ll1/c;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Ljava/util/Iterator;
.implements Lh9/a;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll1/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Ll1/c;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls/g0;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ll1/c;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ll1/c;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Ll1/c;->b:I

    .line 17
    new-instance v0, Ls/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ls/f0;-><init>(Ls/g0;Ll1/c;Lw8/c;)V

    invoke-static {v0}, Lp9/p1;->z(Lf9/n;)Lwb/k;

    move-result-object p1

    iput-object p1, p0, Ll1/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls/k0;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Ll1/c;->a:I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ll1/c;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Ll1/c;->b:I

    .line 13
    new-instance v0, Ls/j0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ls/j0;-><init>(Ls/k0;Ll1/c;Lw8/c;)V

    invoke-static {v0}, Lp9/p1;->z(Lf9/n;)Lwb/k;

    move-result-object p1

    iput-object p1, p0, Ll1/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ls8/o;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ll1/c;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Ls8/o;->b:Ljava/lang/Object;

    check-cast p1, Lwb/j;

    .line 5
    invoke-interface {p1}, Lwb/j;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Ll1/c;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Ll1/c;->b:I

    return-void
.end method

.method public constructor <init>(Lwb/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Ll1/c;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Ll1/c;->d:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 9
    iput p1, p0, Ll1/c;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwb/c;

    .line 4
    .line 5
    iget v1, p0, Ll1/c;->b:I

    .line 6
    .line 7
    const/4 v2, -0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lwb/c;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lf9/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lf9/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lwb/c;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lf9/k;

    .line 22
    .line 23
    iget-object v1, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    iput-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v0, 0x1

    .line 39
    :goto_1
    iput v0, p0, Ll1/c;->b:I

    .line 40
    .line 41
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Iterator;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v1, v0

    .line 16
    check-cast v1, Lv9/k;

    .line 17
    .line 18
    const-string v2, "it"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    instance-of v1, v1, Lv9/b;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    iput v1, p0, Ll1/c;->b:I

    .line 29
    .line 30
    iput-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    iput v0, p0, Ll1/c;->b:I

    .line 35
    .line 36
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Ll1/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ll1/c;->b:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ll1/c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Ll1/c;->b:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1

    .line 22
    :pswitch_0
    iget v0, p0, Ll1/c;->b:I

    .line 23
    .line 24
    if-gez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ll1/c;->a()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget v0, p0, Ll1/c;->b:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v1, 0x0

    .line 36
    :goto_1
    return v1

    .line 37
    :pswitch_1
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v0, Lwb/k;

    .line 40
    .line 41
    invoke-virtual {v0}, Lwb/k;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    :pswitch_2
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lwb/k;

    .line 49
    .line 50
    invoke-virtual {v0}, Lwb/k;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    return v0

    .line 55
    :pswitch_3
    iget v0, p0, Ll1/c;->b:I

    .line 56
    .line 57
    iget-object v1, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-ge v0, v1, :cond_4

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/4 v0, 0x0

    .line 70
    :goto_2
    return v0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Ll1/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, Ll1/c;->b:I

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ll1/c;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v0, p0, Ll1/c;->b:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 22
    .line 23
    iput v1, p0, Ll1/c;->b:I

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :pswitch_0
    iget v0, p0, Ll1/c;->b:I

    .line 33
    .line 34
    if-gez v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Ll1/c;->a()V

    .line 37
    .line 38
    .line 39
    :cond_2
    iget v0, p0, Ll1/c;->b:I

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 44
    .line 45
    const-string v1, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, -0x1

    .line 51
    iput v1, p0, Ll1/c;->b:I

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :pswitch_1
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Lwb/k;

    .line 63
    .line 64
    invoke-virtual {v0}, Lwb/k;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :pswitch_2
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Lwb/k;

    .line 72
    .line 73
    invoke-virtual {v0}, Lwb/k;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :pswitch_3
    invoke-virtual {p0}, Ll1/c;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 85
    .line 86
    iget v1, p0, Ll1/c;->b:I

    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    iput v1, p0, Ll1/c;->b:I

    .line 91
    .line 92
    iget-object v1, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    check-cast v1, Ll1/a;

    .line 103
    .line 104
    iget-object v1, v1, Ll1/a;->b:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object v1, p0, Ll1/c;->c:Ljava/lang/Object;

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_4
    new-instance v1, Ljava/util/ConcurrentModificationException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v3, "Hash code of an element ("

    .line 114
    .line 115
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ") has changed after it was added to the persistent set."

    .line 122
    .line 123
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {v1, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget v0, p0, Ll1/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    const-string v1, "Operation is not supported for read-only collection"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v1, "Operation is not supported for read-only collection"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :pswitch_1
    iget v0, p0, Ll1/c;->b:I

    .line 23
    .line 24
    const/4 v1, -0x1

    .line 25
    if-eq v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ls/k0;

    .line 30
    .line 31
    iget-object v2, v2, Ls/k0;->b:Ls/i0;

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ls/i0;->m(I)V

    .line 34
    .line 35
    .line 36
    iput v1, p0, Ll1/c;->b:I

    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_2
    iget v0, p0, Ll1/c;->b:I

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v2, p0, Ll1/c;->d:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Ls/g0;

    .line 47
    .line 48
    iget-object v2, v2, Ls/g0;->b:Ls/e0;

    .line 49
    .line 50
    invoke-virtual {v2, v0}, Ls/e0;->h(I)V

    .line 51
    .line 52
    .line 53
    iput v1, p0, Ll1/c;->b:I

    .line 54
    .line 55
    :cond_1
    return-void

    .line 56
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 57
    .line 58
    const-string v1, "Operation is not supported for read-only collection"

    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
