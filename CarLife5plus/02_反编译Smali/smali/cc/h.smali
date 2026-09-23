.class public Lcc/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lcc/l;


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closeCause$volatile:Ljava/lang/Object;

.field public final a:I

.field private volatile synthetic bufferEnd$volatile:J

.field private volatile synthetic bufferEndSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic closeHandler$volatile:Ljava/lang/Object;

.field private volatile synthetic completedExpandBuffersAndPauseFlag$volatile:J

.field private volatile synthetic receiveSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic receivers$volatile:J

.field private volatile synthetic sendSegment$volatile:Ljava/lang/Object;

.field private volatile synthetic sendersAndCloseStatus$volatile:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "sendersAndCloseStatus$volatile"

    .line 2
    .line 3
    const-class v1, Lcc/h;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "receivers$volatile"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "bufferEnd$volatile"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 26
    .line 27
    const-string v0, "completedExpandBuffersAndPauseFlag$volatile"

    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcc/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 34
    .line 35
    const-string v0, "sendSegment$volatile"

    .line 36
    .line 37
    const-class v2, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    const-string v0, "receiveSegment$volatile"

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 52
    .line 53
    const-string v0, "bufferEndSegment$volatile"

    .line 54
    .line 55
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 60
    .line 61
    const-string v0, "_closeCause$volatile"

    .line 62
    .line 63
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcc/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    const-string v0, "closeHandler$volatile"

    .line 70
    .line 71
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcc/h;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 76
    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcc/h;->a:I

    .line 5
    .line 6
    if-ltz p1, :cond_3

    .line 7
    .line 8
    sget-object v0, Lcc/j;->a:Lcc/p;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const v0, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    int-to-long v0, p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    :goto_0
    iput-wide v0, p0, Lcc/h;->bufferEnd$volatile:J

    .line 28
    .line 29
    sget-object p1, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcc/h;->completedExpandBuffersAndPauseFlag$volatile:J

    .line 36
    .line 37
    new-instance v2, Lcc/p;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v7, 0x3

    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    move-object v6, p0

    .line 44
    invoke-direct/range {v2 .. v7}, Lcc/p;-><init>(JLcc/p;Lcc/h;I)V

    .line 45
    .line 46
    .line 47
    iput-object v2, v6, Lcc/h;->sendSegment$volatile:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v2, v6, Lcc/h;->receiveSegment$volatile:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcc/h;->z()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    sget-object v2, Lcc/j;->a:Lcc/p;

    .line 58
    .line 59
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 60
    .line 61
    invoke-static {v2, p1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput-object v2, v6, Lcc/h;->bufferEndSegment$volatile:Ljava/lang/Object;

    .line 65
    .line 66
    sget-object p1, Lcc/j;->s:Lfc/s;

    .line 67
    .line 68
    iput-object p1, v6, Lcc/h;->_closeCause$volatile:Ljava/lang/Object;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    move-object v6, p0

    .line 72
    const-string v0, "Invalid channel capacity: "

    .line 73
    .line 74
    const-string v1, ", should be >=0"

    .line 75
    .line 76
    invoke-static {v0, v1, p1}, La2/f;->G(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public static C(Lcc/h;Ly8/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Lcc/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcc/f;

    .line 7
    .line 8
    iget v1, v0, Lcc/f;->f:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcc/f;->f:I

    .line 18
    .line 19
    :goto_0
    move-object v6, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcc/f;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcc/f;-><init>(Lcc/h;Ly8/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v6, Lcc/f;->d:Ljava/lang/Object;

    .line 28
    .line 29
    iget v0, v6, Lcc/f;->f:I

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Lcc/o;

    .line 40
    .line 41
    iget-object p0, p1, Lcc/o;->a:Ljava/lang/Object;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0

    .line 52
    :cond_2
    invoke-static {p1}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcc/p;

    .line 62
    .line 63
    :goto_2
    invoke-virtual {p0}, Lcc/h;->v()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance p1, Lcc/m;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    sget-object v0, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    sget v0, Lcc/j;->b:I

    .line 86
    .line 87
    int-to-long v2, v0

    .line 88
    div-long v7, v4, v2

    .line 89
    .line 90
    rem-long v2, v4, v2

    .line 91
    .line 92
    long-to-int v3, v2

    .line 93
    iget-wide v9, p1, Lfc/q;->c:J

    .line 94
    .line 95
    cmp-long v0, v9, v7

    .line 96
    .line 97
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0, v7, v8, p1}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-nez v0, :cond_4

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-object v2, v0

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    move-object v2, p1

    .line 109
    :goto_3
    const/4 v12, 0x0

    .line 110
    move-object v7, p0

    .line 111
    move-object v8, v2

    .line 112
    move v9, v3

    .line 113
    move-wide v10, v4

    .line 114
    invoke-virtual/range {v7 .. v12}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    sget-object p1, Lcc/j;->m:Lfc/s;

    .line 119
    .line 120
    if-eq p0, p1, :cond_a

    .line 121
    .line 122
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 123
    .line 124
    if-ne p0, p1, :cond_7

    .line 125
    .line 126
    invoke-virtual {v7}, Lcc/h;->q()J

    .line 127
    .line 128
    .line 129
    move-result-wide p0

    .line 130
    cmp-long v0, v4, p0

    .line 131
    .line 132
    if-gez v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 135
    .line 136
    .line 137
    :cond_6
    move-object p1, v2

    .line 138
    move-object p0, v7

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    sget-object p1, Lcc/j;->n:Lfc/s;

    .line 141
    .line 142
    if-ne p0, p1, :cond_9

    .line 143
    .line 144
    iput v1, v6, Lcc/f;->f:I

    .line 145
    .line 146
    move-object v1, v7

    .line 147
    invoke-virtual/range {v1 .. v6}, Lcc/h;->D(Lcc/p;IJLy8/c;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 152
    .line 153
    if-ne p0, p1, :cond_8

    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_8
    return-object p0

    .line 157
    :cond_9
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string p1, "unexpected"

    .line 164
    .line 165
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0
.end method

.method public static final b(Lcc/h;JLcc/p;)Lcc/p;
    .locals 11

    .line 1
    sget-object v0, Lcc/j;->a:Lcc/p;

    .line 2
    .line 3
    sget-object v0, Lcc/i;->i:Lcc/i;

    .line 4
    .line 5
    :goto_0
    invoke-static {p3, p1, p2, v0}, Lfc/a;->b(Lfc/q;JLf9/n;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    invoke-static {v1}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_1
    sget-object v3, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lfc/q;

    .line 26
    .line 27
    iget-wide v5, v4, Lfc/q;->c:J

    .line 28
    .line 29
    iget-wide v7, v2, Lfc/q;->c:J

    .line 30
    .line 31
    cmp-long v9, v5, v7

    .line 32
    .line 33
    if-ltz v9, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {v2}, Lfc/q;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {v4}, Lfc/q;->f()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v4}, Lfc/b;->e()V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eq v5, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lfc/q;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v2}, Lfc/b;->e()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    invoke-static {v1}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x0

    .line 80
    sget-object v3, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    invoke-virtual {p0}, Lcc/h;->i()V

    .line 85
    .line 86
    .line 87
    iget-wide p1, p3, Lfc/q;->c:J

    .line 88
    .line 89
    sget v0, Lcc/j;->b:I

    .line 90
    .line 91
    int-to-long v0, v0

    .line 92
    mul-long p1, p1, v0

    .line 93
    .line 94
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    cmp-long p0, p1, v0

    .line 99
    .line 100
    if-gez p0, :cond_7

    .line 101
    .line 102
    invoke-virtual {p3}, Lfc/b;->a()V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :cond_5
    invoke-static {v1}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    check-cast p3, Lcc/p;

    .line 111
    .line 112
    iget-wide v0, p3, Lfc/q;->c:J

    .line 113
    .line 114
    cmp-long v4, v0, p1

    .line 115
    .line 116
    if-lez v4, :cond_9

    .line 117
    .line 118
    sget p1, Lcc/j;->b:I

    .line 119
    .line 120
    int-to-long p1, p1

    .line 121
    mul-long p1, p1, v0

    .line 122
    .line 123
    :goto_3
    sget-object v4, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 124
    .line 125
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    const-wide v4, 0xfffffffffffffffL

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    and-long/2addr v4, v7

    .line 135
    cmp-long v6, v4, p1

    .line 136
    .line 137
    if-ltz v6, :cond_6

    .line 138
    .line 139
    move-object v6, p0

    .line 140
    goto :goto_4

    .line 141
    :cond_6
    const/16 v6, 0x3c

    .line 142
    .line 143
    shr-long v9, v7, v6

    .line 144
    .line 145
    long-to-int v10, v9

    .line 146
    int-to-long v9, v10

    .line 147
    shl-long/2addr v9, v6

    .line 148
    add-long/2addr v9, v4

    .line 149
    sget-object v5, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 150
    .line 151
    move-object v6, p0

    .line 152
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-eqz p0, :cond_8

    .line 157
    .line 158
    :goto_4
    sget p0, Lcc/j;->b:I

    .line 159
    .line 160
    int-to-long p0, p0

    .line 161
    mul-long v0, v0, p0

    .line 162
    .line 163
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 164
    .line 165
    .line 166
    move-result-wide p0

    .line 167
    cmp-long p2, v0, p0

    .line 168
    .line 169
    if-gez p2, :cond_7

    .line 170
    .line 171
    invoke-virtual {p3}, Lfc/b;->a()V

    .line 172
    .line 173
    .line 174
    :cond_7
    return-object v2

    .line 175
    :cond_8
    move-object p0, v6

    .line 176
    goto :goto_3

    .line 177
    :cond_9
    return-object p3
.end method

.method public static final c(Lcc/h;Ljava/lang/Object;Lac/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p2, p0}, Lac/i;->f(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final d(Lcc/h;Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 4

    .line 1
    invoke-virtual {p1, p2, p3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    invoke-virtual/range {p0 .. p7}, Lcc/h;->I(Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p4, p5}, Lcc/h;->e(J)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    sget-object v0, Lcc/j;->d:Lfc/s;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v2, v0}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    if-nez p6, :cond_2

    .line 35
    .line 36
    const/4 p0, 0x3

    .line 37
    return p0

    .line 38
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_6

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    return p0

    .line 46
    :cond_3
    instance-of v3, v0, Lac/u1;

    .line 47
    .line 48
    if-eqz v3, :cond_6

    .line 49
    .line 50
    invoke-virtual {p1, p2, v2}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, p3}, Lcc/h;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    sget-object p0, Lcc/j;->i:Lfc/s;

    .line 60
    .line 61
    invoke-virtual {p1, p2, p0}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    return p0

    .line 66
    :cond_4
    sget-object p0, Lcc/j;->k:Lfc/s;

    .line 67
    .line 68
    iget-object p3, p1, Lcc/p;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 69
    .line 70
    mul-int/lit8 p4, p2, 0x2

    .line 71
    .line 72
    add-int/2addr p4, v1

    .line 73
    invoke-virtual {p3, p4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-eq p3, p0, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lcc/p;->m(IZ)V

    .line 80
    .line 81
    .line 82
    :cond_5
    const/4 p0, 0x5

    .line 83
    return p0

    .line 84
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lcc/h;->I(Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    return p0
.end method

.method public static r(Lcc/h;)V
    .locals 8

    .line 1
    sget-object v0, Lcc/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 10
    .line 11
    and-long/2addr v1, v3

    .line 12
    const-wide/16 v5, 0x0

    .line 13
    .line 14
    cmp-long v7, v1, v5

    .line 15
    .line 16
    if-eqz v7, :cond_0

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    and-long/2addr v1, v3

    .line 23
    cmp-long v7, v1, v5

    .line 24
    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public final A(JLcc/p;)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p3, Lfc/q;->c:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-gez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p3}, Lfc/b;->c()Lfc/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcc/p;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    move-object p3, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    invoke-virtual {p3}, Lfc/q;->d()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p3}, Lfc/b;->c()Lfc/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcc/p;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move-object p3, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    :goto_2
    sget-object p1, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lfc/q;

    .line 42
    .line 43
    iget-wide v0, p2, Lfc/q;->c:J

    .line 44
    .line 45
    iget-wide v2, p3, Lfc/q;->c:J

    .line 46
    .line 47
    cmp-long v4, v0, v2

    .line 48
    .line 49
    if-ltz v4, :cond_4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {p3}, Lfc/q;->j()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, Lfc/q;->f()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p2}, Lfc/b;->e()V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_3
    return-void

    .line 75
    :cond_7
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eq v0, p2, :cond_5

    .line 80
    .line 81
    invoke-virtual {p3}, Lfc/q;->f()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p3}, Lfc/b;->e()V

    .line 88
    .line 89
    .line 90
    goto :goto_2
.end method

.method public final B(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Lac/i;

    .line 2
    .line 3
    invoke-static {p2}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-direct {p1, v0, p2}, Lac/i;-><init>(ILw8/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lac/i;->q()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p2}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lac/i;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lac/i;->p()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object p2, Lx8/a;->a:Lx8/a;

    .line 30
    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    sget-object p1, Lr8/z;->a:Lr8/z;

    .line 35
    .line 36
    return-object p1
.end method

.method public final D(Lcc/p;IJLy8/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object/from16 v0, p5

    .line 2
    .line 3
    instance-of v1, v0, Lcc/g;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcc/g;

    .line 9
    .line 10
    iget v2, v1, Lcc/g;->f:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcc/g;->f:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcc/g;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcc/g;-><init>(Lcc/h;Ly8/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcc/g;->d:Ljava/lang/Object;

    .line 28
    .line 29
    iget v2, v1, Lcc/g;->f:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_2
    invoke-static {v0}, Lr8/a;->e(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iput v3, v1, Lcc/g;->f:I

    .line 53
    .line 54
    invoke-static {v1}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lac/z;->m(Lw8/c;)Lac/i;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :try_start_0
    new-instance v7, Lcc/v;

    .line 63
    .line 64
    invoke-direct {v7, v1}, Lcc/v;-><init>(Lac/i;)V

    .line 65
    .line 66
    .line 67
    move-object v2, p0

    .line 68
    move-object v3, p1

    .line 69
    move v4, p2

    .line 70
    move-wide/from16 v5, p3

    .line 71
    .line 72
    invoke-virtual/range {v2 .. v7}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-object v5, Lcc/j;->m:Lfc/s;

    .line 77
    .line 78
    if-ne v0, v5, :cond_3

    .line 79
    .line 80
    invoke-virtual {v7, p1, p2}, Lcc/v;->a(Lfc/q;I)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_4

    .line 84
    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object p1, v0

    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :cond_3
    sget-object p2, Lcc/j;->o:Lfc/s;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    if-ne v0, p2, :cond_c

    .line 93
    .line 94
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    cmp-long p2, p3, v4

    .line 99
    .line 100
    if-gez p2, :cond_4

    .line 101
    .line 102
    invoke-virtual {p1}, Lfc/b;->a()V

    .line 103
    .line 104
    .line 105
    :cond_4
    sget-object p1, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lcc/p;

    .line 112
    .line 113
    :goto_1
    invoke-virtual {p0}, Lcc/h;->v()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance p2, Lcc/m;

    .line 124
    .line 125
    invoke-direct {p2, p1}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Lcc/o;

    .line 129
    .line 130
    invoke-direct {p1, p2}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lac/i;->f(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_4

    .line 137
    .line 138
    :cond_5
    sget-object p2, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 139
    .line 140
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v5

    .line 144
    sget p2, Lcc/j;->b:I

    .line 145
    .line 146
    int-to-long v3, p2

    .line 147
    div-long v9, v5, v3

    .line 148
    .line 149
    rem-long v3, v5, v3

    .line 150
    .line 151
    long-to-int v4, v3

    .line 152
    iget-wide v11, p1, Lfc/q;->c:J

    .line 153
    .line 154
    cmp-long p2, v11, v9

    .line 155
    .line 156
    if-eqz p2, :cond_7

    .line 157
    .line 158
    invoke-virtual {p0, v9, v10, p1}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    if-nez p2, :cond_6

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    move-object v3, p2

    .line 166
    :goto_2
    move-object v2, p0

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    move-object v3, p1

    .line 169
    goto :goto_2

    .line 170
    :goto_3
    invoke-virtual/range {v2 .. v7}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    move-object p2, v3

    .line 175
    sget-object v0, Lcc/j;->m:Lfc/s;

    .line 176
    .line 177
    if-ne p1, v0, :cond_8

    .line 178
    .line 179
    invoke-virtual {v7, p2, v4}, Lcc/v;->a(Lfc/q;I)V

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_8
    sget-object v0, Lcc/j;->o:Lfc/s;

    .line 184
    .line 185
    if-ne p1, v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    cmp-long p1, v5, v2

    .line 192
    .line 193
    if-gez p1, :cond_9

    .line 194
    .line 195
    invoke-virtual {p2}, Lfc/b;->a()V

    .line 196
    .line 197
    .line 198
    :cond_9
    move-object p1, p2

    .line 199
    goto :goto_1

    .line 200
    :cond_a
    sget-object v0, Lcc/j;->n:Lfc/s;

    .line 201
    .line 202
    if-eq p1, v0, :cond_b

    .line 203
    .line 204
    invoke-virtual {p2}, Lfc/b;->a()V

    .line 205
    .line 206
    .line 207
    new-instance p2, Lcc/o;

    .line 208
    .line 209
    invoke-direct {p2, p1}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p2, v8}, Lac/i;->z(Ljava/lang/Object;Lf9/o;)V

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 217
    .line 218
    const-string p2, "unexpected"

    .line 219
    .line 220
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_c
    invoke-virtual {p1}, Lfc/b;->a()V

    .line 225
    .line 226
    .line 227
    new-instance p1, Lcc/o;

    .line 228
    .line 229
    invoke-direct {p1, v0}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, p1, v8}, Lac/i;->z(Ljava/lang/Object;Lf9/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    .line 235
    :goto_4
    invoke-virtual {v1}, Lac/i;->p()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    sget-object p1, Lx8/a;->a:Lx8/a;

    .line 240
    .line 241
    if-ne v0, p1, :cond_d

    .line 242
    .line 243
    return-object p1

    .line 244
    :cond_d
    :goto_5
    check-cast v0, Lcc/o;

    .line 245
    .line 246
    iget-object p1, v0, Lcc/o;->a:Ljava/lang/Object;

    .line 247
    .line 248
    return-object p1

    .line 249
    :goto_6
    invoke-virtual {v1}, Lac/i;->y()V

    .line 250
    .line 251
    .line 252
    throw p1
.end method

.method public final E(Lac/u1;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lac/g;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lw8/c;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcc/h;->o()Ljava/lang/Throwable;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-static {p2}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p1, p2}, Lw8/c;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    instance-of p2, p1, Lcc/v;

    .line 27
    .line 28
    if-eqz p2, :cond_2

    .line 29
    .line 30
    check-cast p1, Lcc/v;

    .line 31
    .line 32
    iget-object p1, p1, Lcc/v;->a:Lac/i;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v0, Lcc/m;

    .line 39
    .line 40
    invoke-direct {v0, p2}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcc/o;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lac/i;->f(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    instance-of p2, p1, Lcc/c;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    check-cast p1, Lcc/c;

    .line 57
    .line 58
    iget-object p2, p1, Lcc/c;->b:Lac/i;

    .line 59
    .line 60
    invoke-static {p2}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    iput-object v0, p1, Lcc/c;->b:Lac/i;

    .line 65
    .line 66
    sget-object v0, Lcc/j;->l:Lfc/s;

    .line 67
    .line 68
    iput-object v0, p1, Lcc/c;->a:Ljava/lang/Object;

    .line 69
    .line 70
    iget-object p1, p1, Lcc/c;->c:Lcc/h;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lac/i;->f(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    invoke-static {p1}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Lac/i;->f(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    instance-of p2, p1, Lic/f;

    .line 93
    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    check-cast p1, Lic/f;

    .line 97
    .line 98
    sget-object p2, Lcc/j;->l:Lfc/s;

    .line 99
    .line 100
    check-cast p1, Lic/e;

    .line 101
    .line 102
    invoke-virtual {p1, p0, p2}, Lic/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v1, "Unexpected waiter: "

    .line 111
    .line 112
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p2
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lic/f;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lic/f;

    .line 6
    .line 7
    check-cast p1, Lic/e;

    .line 8
    .line 9
    invoke-virtual {p1, p0, p2}, Lic/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_1
    instance-of v0, p1, Lcc/v;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p1, Lcc/v;

    .line 25
    .line 26
    iget-object p1, p1, Lcc/v;->a:Lac/i;

    .line 27
    .line 28
    new-instance v0, Lcc/o;

    .line 29
    .line 30
    invoke-direct {v0, p2}, Lcc/o;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0, v1}, Lcc/j;->a(Lac/g;Ljava/lang/Object;Lf9/o;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    instance-of v0, p1, Lcc/c;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p1, Lcc/c;

    .line 43
    .line 44
    iget-object v0, p1, Lcc/c;->b:Lac/i;

    .line 45
    .line 46
    invoke-static {v0}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p1, Lcc/c;->b:Lac/i;

    .line 50
    .line 51
    iput-object p2, p1, Lcc/c;->a:Ljava/lang/Object;

    .line 52
    .line 53
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    iget-object p1, p1, Lcc/c;->c:Lcc/h;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {v0, p2, v1}, Lcc/j;->a(Lac/g;Ljava/lang/Object;Lf9/o;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1

    .line 65
    :cond_3
    instance-of v0, p1, Lac/g;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    check-cast p1, Lac/g;

    .line 70
    .line 71
    invoke-static {p1, p2, v1}, Lcc/j;->a(Lac/g;Ljava/lang/Object;Lf9/o;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v1, "Unexpected receiver type: "

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method

.method public final G(Ljava/lang/Object;Lcc/p;I)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lac/g;

    .line 2
    .line 3
    sget-object v1, Lr8/z;->a:Lr8/z;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lac/g;

    .line 9
    .line 10
    invoke-static {p1, v1, v2}, Lcc/j;->a(Lac/g;Ljava/lang/Object;Lf9/o;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    instance-of v0, p1, Lic/f;

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    check-cast p1, Lic/e;

    .line 20
    .line 21
    invoke-virtual {p1, p0, v1}, Lic/e;->g(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    sget-object v0, Lic/i;->a:Lic/i;

    .line 26
    .line 27
    sget-object v1, Lic/i;->b:Lic/i;

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz p1, :cond_4

    .line 31
    .line 32
    if-eq p1, v3, :cond_3

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-eq p1, v4, :cond_2

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-ne p1, v4, :cond_1

    .line 39
    .line 40
    sget-object p1, Lic/i;->d:Lic/i;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "Unexpected internal result: "

    .line 48
    .line 49
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p2

    .line 67
    :cond_2
    sget-object p1, Lic/i;->c:Lic/i;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object p1, v1

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move-object p1, v0

    .line 73
    :goto_0
    if-ne p1, v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {p2, p3, v2}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_5
    if-ne p1, v0, :cond_6

    .line 79
    .line 80
    return v3

    .line 81
    :cond_6
    const/4 p1, 0x0

    .line 82
    return p1

    .line 83
    :cond_7
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    new-instance p3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v0, "Unexpected waiter: "

    .line 88
    .line 89
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p2
.end method

.method public final H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1, p2}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p1, Lcc/p;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide v3, 0xfffffffffffffffL

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sget-object v5, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    and-long/2addr v6, v3

    .line 22
    cmp-long v8, p3, v6

    .line 23
    .line 24
    if-ltz v8, :cond_2

    .line 25
    .line 26
    if-nez p5, :cond_0

    .line 27
    .line 28
    sget-object p1, Lcc/j;->n:Lfc/s;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lcc/j;->m:Lfc/s;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    sget-object v6, Lcc/j;->d:Lfc/s;

    .line 44
    .line 45
    if-ne v0, v6, :cond_2

    .line 46
    .line 47
    sget-object v6, Lcc/j;->i:Lfc/s;

    .line 48
    .line 49
    invoke-virtual {p1, p2, v0, v6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 56
    .line 57
    .line 58
    mul-int/lit8 p3, p2, 0x2

    .line 59
    .line 60
    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p1, p2, v2}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object p3

    .line 68
    :cond_2
    invoke-virtual {p1, p2}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_b

    .line 73
    .line 74
    sget-object v6, Lcc/j;->e:Lfc/s;

    .line 75
    .line 76
    if-ne v0, v6, :cond_3

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    sget-object v6, Lcc/j;->d:Lfc/s;

    .line 80
    .line 81
    if-ne v0, v6, :cond_4

    .line 82
    .line 83
    sget-object v6, Lcc/j;->i:Lfc/s;

    .line 84
    .line 85
    invoke-virtual {p1, p2, v0, v6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 92
    .line 93
    .line 94
    mul-int/lit8 p3, p2, 0x2

    .line 95
    .line 96
    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p1, p2, v2}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return-object p3

    .line 104
    :cond_4
    sget-object v6, Lcc/j;->j:Lfc/s;

    .line 105
    .line 106
    if-ne v0, v6, :cond_5

    .line 107
    .line 108
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_5
    sget-object v7, Lcc/j;->h:Lfc/s;

    .line 112
    .line 113
    if-ne v0, v7, :cond_6

    .line 114
    .line 115
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_6
    sget-object v7, Lcc/j;->l:Lfc/s;

    .line 119
    .line 120
    if-ne v0, v7, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 123
    .line 124
    .line 125
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 126
    .line 127
    return-object p1

    .line 128
    :cond_7
    sget-object v7, Lcc/j;->g:Lfc/s;

    .line 129
    .line 130
    if-eq v0, v7, :cond_2

    .line 131
    .line 132
    sget-object v7, Lcc/j;->f:Lfc/s;

    .line 133
    .line 134
    invoke-virtual {p1, p2, v0, v7}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_2

    .line 139
    .line 140
    instance-of p3, v0, Lcc/y;

    .line 141
    .line 142
    if-eqz p3, :cond_8

    .line 143
    .line 144
    check-cast v0, Lcc/y;

    .line 145
    .line 146
    iget-object v0, v0, Lcc/y;->a:Lac/u1;

    .line 147
    .line 148
    :cond_8
    invoke-virtual {p0, v0, p1, p2}, Lcc/h;->G(Ljava/lang/Object;Lcc/p;I)Z

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    if-eqz p4, :cond_9

    .line 153
    .line 154
    sget-object p3, Lcc/j;->i:Lfc/s;

    .line 155
    .line 156
    invoke-virtual {p1, p2, p3}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 160
    .line 161
    .line 162
    mul-int/lit8 p3, p2, 0x2

    .line 163
    .line 164
    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p1, p2, v2}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-object p3

    .line 172
    :cond_9
    invoke-virtual {p1, p2, v6}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Lfc/q;->i()V

    .line 176
    .line 177
    .line 178
    if-eqz p3, :cond_a

    .line 179
    .line 180
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 181
    .line 182
    .line 183
    :cond_a
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 184
    .line 185
    return-object p1

    .line 186
    :cond_b
    :goto_0
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v6

    .line 190
    and-long/2addr v6, v3

    .line 191
    cmp-long v8, p3, v6

    .line 192
    .line 193
    if-gez v8, :cond_c

    .line 194
    .line 195
    sget-object v6, Lcc/j;->h:Lfc/s;

    .line 196
    .line 197
    invoke-virtual {p1, p2, v0, v6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_2

    .line 202
    .line 203
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 204
    .line 205
    .line 206
    sget-object p1, Lcc/j;->o:Lfc/s;

    .line 207
    .line 208
    return-object p1

    .line 209
    :cond_c
    if-nez p5, :cond_d

    .line 210
    .line 211
    sget-object p1, Lcc/j;->n:Lfc/s;

    .line 212
    .line 213
    return-object p1

    .line 214
    :cond_d
    invoke-virtual {p1, p2, v0, p5}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_2

    .line 219
    .line 220
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 221
    .line 222
    .line 223
    sget-object p1, Lcc/j;->m:Lfc/s;

    .line 224
    .line 225
    return-object p1
.end method

.method public final I(Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p4, p5}, Lcc/h;->e(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-nez p7, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcc/j;->d:Lfc/s;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v3, v0}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    if-eqz p7, :cond_2

    .line 28
    .line 29
    sget-object v0, Lcc/j;->j:Lfc/s;

    .line 30
    .line 31
    invoke-virtual {p1, p2, v3, v0}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lfc/q;->i()V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    if-nez p6, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    return p1

    .line 45
    :cond_3
    invoke-virtual {p1, p2, v3, p6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 p1, 0x2

    .line 52
    return p1

    .line 53
    :cond_4
    sget-object v4, Lcc/j;->e:Lfc/s;

    .line 54
    .line 55
    if-ne v0, v4, :cond_5

    .line 56
    .line 57
    sget-object v1, Lcc/j;->d:Lfc/s;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0, v1}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    :goto_0
    return v2

    .line 66
    :cond_5
    sget-object p4, Lcc/j;->k:Lfc/s;

    .line 67
    .line 68
    const/4 p5, 0x5

    .line 69
    if-ne v0, p4, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1, p2, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return p5

    .line 75
    :cond_6
    sget-object p6, Lcc/j;->h:Lfc/s;

    .line 76
    .line 77
    if-ne v0, p6, :cond_7

    .line 78
    .line 79
    invoke-virtual {p1, p2, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return p5

    .line 83
    :cond_7
    sget-object p6, Lcc/j;->l:Lfc/s;

    .line 84
    .line 85
    if-ne v0, p6, :cond_8

    .line 86
    .line 87
    invoke-virtual {p1, p2, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcc/h;->i()V

    .line 91
    .line 92
    .line 93
    return v1

    .line 94
    :cond_8
    invoke-virtual {p1, p2, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    instance-of p6, v0, Lcc/y;

    .line 98
    .line 99
    if-eqz p6, :cond_9

    .line 100
    .line 101
    check-cast v0, Lcc/y;

    .line 102
    .line 103
    iget-object v0, v0, Lcc/y;->a:Lac/u1;

    .line 104
    .line 105
    :cond_9
    invoke-virtual {p0, v0, p3}, Lcc/h;->F(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    if-eqz p3, :cond_a

    .line 110
    .line 111
    sget-object p3, Lcc/j;->i:Lfc/s;

    .line 112
    .line 113
    invoke-virtual {p1, p2, p3}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x0

    .line 117
    return p1

    .line 118
    :cond_a
    iget-object p3, p1, Lcc/p;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 119
    .line 120
    mul-int/lit8 p6, p2, 0x2

    .line 121
    .line 122
    add-int/2addr p6, v2

    .line 123
    invoke-virtual {p3, p6, p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    if-eq p3, p4, :cond_b

    .line 128
    .line 129
    invoke-virtual {p1, p2, v2}, Lcc/p;->m(IZ)V

    .line 130
    .line 131
    .line 132
    :cond_b
    return p5
.end method

.method public final J(J)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lcc/h;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    :goto_0
    sget-object v6, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    cmp-long v0, v2, p1

    .line 18
    .line 19
    if-lez v0, :cond_8

    .line 20
    .line 21
    sget v0, Lcc/j;->c:I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_1
    sget-object v3, Lcc/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 26
    .line 27
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-ge v2, v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v10

    .line 42
    and-long/2addr v8, v10

    .line 43
    cmp-long v3, v4, v8

    .line 44
    .line 45
    if-nez v3, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v8

    .line 51
    cmp-long v3, v4, v8

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    goto :goto_6

    .line 56
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object v0, v3

    .line 60
    :goto_2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    and-long v4, v2, v8

    .line 65
    .line 66
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 67
    .line 68
    add-long/2addr v4, v10

    .line 69
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    move-wide v4, v2

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    and-long v12, v2, v8

    .line 85
    .line 86
    and-long v14, v2, v10

    .line 87
    .line 88
    const-wide/16 v16, 0x0

    .line 89
    .line 90
    cmp-long v18, v14, v16

    .line 91
    .line 92
    if-eqz v18, :cond_3

    .line 93
    .line 94
    const/4 v14, 0x1

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    const/4 v14, 0x0

    .line 97
    :goto_4
    cmp-long v15, v4, v12

    .line 98
    .line 99
    if-nez v15, :cond_5

    .line 100
    .line 101
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v15

    .line 105
    cmp-long v17, v4, v15

    .line 106
    .line 107
    if-nez v17, :cond_5

    .line 108
    .line 109
    :goto_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    and-long v4, v2, v8

    .line 114
    .line 115
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    :goto_6
    return-void

    .line 122
    :cond_4
    move-object/from16 v1, p0

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    if-nez v14, :cond_6

    .line 126
    .line 127
    add-long v4, v10, v12

    .line 128
    .line 129
    move-object/from16 v1, p0

    .line 130
    .line 131
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    move-object/from16 v1, p0

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    move-object/from16 v1, p0

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    move-object/from16 v1, p0

    .line 142
    .line 143
    goto/16 :goto_0
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v0, "Channel was cancelled"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcc/h;->f(Ljava/lang/Throwable;Z)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e(J)Z
    .locals 4

    .line 1
    sget-object v0, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-ltz v2, :cond_1

    .line 10
    .line 11
    sget-object v0, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iget v2, p0, Lcc/h;->a:I

    .line 18
    .line 19
    int-to-long v2, v2

    .line 20
    add-long/2addr v0, v2

    .line 21
    cmp-long v2, p1, v0

    .line 22
    .line 23
    if-gez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public final f(Ljava/lang/Throwable;Z)Z
    .locals 12

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    const-wide v1, 0xfffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v3, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    const/4 v9, 0x1

    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v5

    .line 17
    shr-long v7, v5, v0

    .line 18
    .line 19
    long-to-int v4, v7

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    and-long v7, v5, v1

    .line 23
    .line 24
    sget-object v4, Lcc/j;->a:Lcc/p;

    .line 25
    .line 26
    int-to-long v10, v9

    .line 27
    shl-long/2addr v10, v0

    .line 28
    add-long/2addr v7, v10

    .line 29
    move-object v4, p0

    .line 30
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object v4, p0

    .line 38
    :goto_0
    sget-object v5, Lcc/j;->s:Lfc/s;

    .line 39
    .line 40
    :cond_2
    sget-object v6, Lcc/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 41
    .line 42
    invoke-virtual {v6, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_3

    .line 47
    .line 48
    const/4 v10, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eq v6, v5, :cond_2

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    const/4 v10, 0x0

    .line 58
    :goto_1
    const/4 v11, 0x3

    .line 59
    if-eqz p2, :cond_5

    .line 60
    .line 61
    :cond_4
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    and-long p1, v5, v1

    .line 66
    .line 67
    int-to-long v7, v11

    .line 68
    shl-long/2addr v7, v0

    .line 69
    add-long/2addr v7, p1

    .line 70
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_5
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    shr-long p1, v5, v0

    .line 82
    .line 83
    long-to-int p2, p1

    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    if-eq p2, v9, :cond_6

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    and-long p1, v5, v1

    .line 90
    .line 91
    int-to-long v7, v11

    .line 92
    :goto_2
    shl-long/2addr v7, v0

    .line 93
    add-long/2addr v7, p1

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    and-long p1, v5, v1

    .line 96
    .line 97
    const/4 v7, 0x2

    .line 98
    int-to-long v7, v7

    .line 99
    goto :goto_2

    .line 100
    :goto_3
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    :goto_4
    invoke-virtual {p0}, Lcc/h;->i()V

    .line 107
    .line 108
    .line 109
    if-eqz v10, :cond_c

    .line 110
    .line 111
    :goto_5
    sget-object p1, Lcc/h;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 112
    .line 113
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-nez p2, :cond_8

    .line 118
    .line 119
    sget-object v0, Lcc/j;->q:Lfc/s;

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_8
    sget-object v0, Lcc/j;->r:Lfc/s;

    .line 123
    .line 124
    :cond_9
    :goto_6
    invoke-virtual {p1, p0, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_b

    .line 129
    .line 130
    if-nez p2, :cond_a

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_a
    invoke-static {v9, p2}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    check-cast p2, Lf9/k;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p2, p1}, Lf9/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    return v10

    .line 146
    :cond_b
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eq v1, p2, :cond_9

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_c
    :goto_7
    return v10
.end method

.method public final g(J)Lcc/p;
    .locals 13

    .line 1
    sget-object v0, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcc/p;

    .line 14
    .line 15
    iget-wide v2, v1, Lfc/q;->c:J

    .line 16
    .line 17
    move-object v4, v0

    .line 18
    check-cast v4, Lcc/p;

    .line 19
    .line 20
    iget-wide v4, v4, Lfc/q;->c:J

    .line 21
    .line 22
    cmp-long v6, v2, v4

    .line 23
    .line 24
    if-lez v6, :cond_0

    .line 25
    .line 26
    move-object v0, v1

    .line 27
    :cond_0
    sget-object v1, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcc/p;

    .line 34
    .line 35
    iget-wide v2, v1, Lfc/q;->c:J

    .line 36
    .line 37
    move-object v4, v0

    .line 38
    check-cast v4, Lcc/p;

    .line 39
    .line 40
    iget-wide v4, v4, Lfc/q;->c:J

    .line 41
    .line 42
    cmp-long v6, v2, v4

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    move-object v0, v1

    .line 47
    :cond_1
    check-cast v0, Lfc/b;

    .line 48
    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    sget-object v1, Lfc/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    sget-object v3, Lfc/a;->a:Lfc/s;

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    if-ne v2, v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    check-cast v2, Lfc/b;

    .line 65
    .line 66
    if-nez v2, :cond_15

    .line 67
    .line 68
    :cond_3
    invoke-virtual {v1, v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_14

    .line 73
    .line 74
    :goto_1
    check-cast v0, Lcc/p;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcc/h;->y()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    const/4 v3, -0x1

    .line 82
    if-eqz v1, :cond_a

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    :cond_4
    sget v5, Lcc/j;->b:I

    .line 86
    .line 87
    sub-int/2addr v5, v2

    .line 88
    :goto_2
    const-wide/16 v6, -0x1

    .line 89
    .line 90
    if-ge v3, v5, :cond_9

    .line 91
    .line 92
    iget-wide v8, v1, Lfc/q;->c:J

    .line 93
    .line 94
    sget v10, Lcc/j;->b:I

    .line 95
    .line 96
    int-to-long v10, v10

    .line 97
    mul-long v8, v8, v10

    .line 98
    .line 99
    int-to-long v10, v5

    .line 100
    add-long/2addr v8, v10

    .line 101
    sget-object v10, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 102
    .line 103
    invoke-virtual {v10, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    cmp-long v12, v8, v10

    .line 108
    .line 109
    if-gez v12, :cond_5

    .line 110
    .line 111
    :goto_3
    move-wide v8, v6

    .line 112
    goto :goto_5

    .line 113
    :cond_5
    invoke-virtual {v1, v5}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    if-eqz v10, :cond_7

    .line 118
    .line 119
    sget-object v11, Lcc/j;->e:Lfc/s;

    .line 120
    .line 121
    if-ne v10, v11, :cond_6

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    sget-object v11, Lcc/j;->d:Lfc/s;

    .line 125
    .line 126
    if-ne v10, v11, :cond_8

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_7
    :goto_4
    sget-object v11, Lcc/j;->l:Lfc/s;

    .line 130
    .line 131
    invoke-virtual {v1, v5, v10, v11}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    if-eqz v10, :cond_5

    .line 136
    .line 137
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 138
    .line 139
    .line 140
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_9
    sget-object v5, Lfc/b;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 144
    .line 145
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lfc/b;

    .line 150
    .line 151
    check-cast v1, Lcc/p;

    .line 152
    .line 153
    if-nez v1, :cond_4

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :goto_5
    cmp-long v1, v8, v6

    .line 157
    .line 158
    if-eqz v1, :cond_a

    .line 159
    .line 160
    invoke-virtual {p0, v8, v9}, Lcc/h;->k(J)V

    .line 161
    .line 162
    .line 163
    :cond_a
    move-object v1, v0

    .line 164
    :goto_6
    if-eqz v1, :cond_11

    .line 165
    .line 166
    sget v5, Lcc/j;->b:I

    .line 167
    .line 168
    sub-int/2addr v5, v2

    .line 169
    :goto_7
    if-ge v3, v5, :cond_10

    .line 170
    .line 171
    iget-wide v6, v1, Lfc/q;->c:J

    .line 172
    .line 173
    sget v8, Lcc/j;->b:I

    .line 174
    .line 175
    int-to-long v8, v8

    .line 176
    mul-long v6, v6, v8

    .line 177
    .line 178
    int-to-long v8, v5

    .line 179
    add-long/2addr v6, v8

    .line 180
    cmp-long v8, v6, p1

    .line 181
    .line 182
    if-ltz v8, :cond_11

    .line 183
    .line 184
    :cond_b
    invoke-virtual {v1, v5}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    if-eqz v6, :cond_e

    .line 189
    .line 190
    sget-object v7, Lcc/j;->e:Lfc/s;

    .line 191
    .line 192
    if-ne v6, v7, :cond_c

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_c
    instance-of v7, v6, Lcc/y;

    .line 196
    .line 197
    if-eqz v7, :cond_d

    .line 198
    .line 199
    sget-object v7, Lcc/j;->l:Lfc/s;

    .line 200
    .line 201
    invoke-virtual {v1, v5, v6, v7}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    if-eqz v7, :cond_b

    .line 206
    .line 207
    check-cast v6, Lcc/y;

    .line 208
    .line 209
    iget-object v6, v6, Lcc/y;->a:Lac/u1;

    .line 210
    .line 211
    invoke-static {v4, v6}, Lfc/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-virtual {v1, v5, v2}, Lcc/p;->m(IZ)V

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :cond_d
    instance-of v7, v6, Lac/u1;

    .line 220
    .line 221
    if-eqz v7, :cond_f

    .line 222
    .line 223
    sget-object v7, Lcc/j;->l:Lfc/s;

    .line 224
    .line 225
    invoke-virtual {v1, v5, v6, v7}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_b

    .line 230
    .line 231
    invoke-static {v4, v6}, Lfc/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v1, v5, v2}, Lcc/p;->m(IZ)V

    .line 236
    .line 237
    .line 238
    goto :goto_9

    .line 239
    :cond_e
    :goto_8
    sget-object v7, Lcc/j;->l:Lfc/s;

    .line 240
    .line 241
    invoke-virtual {v1, v5, v6, v7}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_b

    .line 246
    .line 247
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 248
    .line 249
    .line 250
    :cond_f
    :goto_9
    add-int/lit8 v5, v5, -0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_10
    sget-object v5, Lfc/b;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 254
    .line 255
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    check-cast v1, Lfc/b;

    .line 260
    .line 261
    check-cast v1, Lcc/p;

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_11
    if-eqz v4, :cond_13

    .line 265
    .line 266
    instance-of p1, v4, Ljava/util/ArrayList;

    .line 267
    .line 268
    if-nez p1, :cond_12

    .line 269
    .line 270
    check-cast v4, Lac/u1;

    .line 271
    .line 272
    invoke-virtual {p0, v4, v2}, Lcc/h;->E(Lac/u1;Z)V

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :cond_12
    check-cast v4, Ljava/util/ArrayList;

    .line 277
    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 279
    .line 280
    .line 281
    move-result p1

    .line 282
    sub-int/2addr p1, v2

    .line 283
    :goto_a
    if-ge v3, p1, :cond_13

    .line 284
    .line 285
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object p2

    .line 289
    check-cast p2, Lac/u1;

    .line 290
    .line 291
    invoke-virtual {p0, p2, v2}, Lcc/h;->E(Lac/u1;Z)V

    .line 292
    .line 293
    .line 294
    add-int/lit8 p1, p1, -0x1

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_13
    return-object v0

    .line 298
    :cond_14
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    if-eqz v2, :cond_3

    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :cond_15
    move-object v0, v2

    .line 307
    goto/16 :goto_0
.end method

.method public final h()Landroid/support/v4/media/session/t;
    .locals 3

    .line 1
    new-instance v0, Landroid/support/v4/media/session/t;

    .line 2
    .line 3
    sget-object v1, Lcc/d;->i:Lcc/d;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2, v1}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcc/e;->i:Lcc/e;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lg9/b0;->d(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/t;-><init>(Lcc/h;Lcc/b;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final i()V
    .locals 3

    .line 1
    sget-object v0, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lcc/h;->u(JZ)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final iterator()Lcc/c;
    .locals 1

    .line 1
    new-instance v0, Lcc/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcc/c;-><init>(Lcc/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    sget-object v3, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-virtual {p0, v3, v4, v5}, Lcc/h;->u(JZ)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcc/m;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    const-wide v5, 0xfffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v3, v5

    .line 36
    sget-object v5, Lcc/o;->b:Lcc/n;

    .line 37
    .line 38
    cmp-long v6, v1, v3

    .line 39
    .line 40
    if-ltz v6, :cond_1

    .line 41
    .line 42
    return-object v5

    .line 43
    :cond_1
    sget-object v12, Lcc/j;->k:Lfc/s;

    .line 44
    .line 45
    sget-object v1, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcc/p;

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Lcc/h;->v()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Lcc/m;

    .line 64
    .line 65
    invoke-direct {v1, v0}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v10

    .line 73
    sget v2, Lcc/j;->b:I

    .line 74
    .line 75
    int-to-long v2, v2

    .line 76
    div-long v6, v10, v2

    .line 77
    .line 78
    rem-long v2, v10, v2

    .line 79
    .line 80
    long-to-int v9, v2

    .line 81
    iget-wide v2, v1, Lfc/q;->c:J

    .line 82
    .line 83
    cmp-long v4, v2, v6

    .line 84
    .line 85
    if-eqz v4, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, v6, v7, v1}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-nez v2, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object v8, v2

    .line 95
    :goto_1
    move-object v7, p0

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move-object v8, v1

    .line 98
    goto :goto_1

    .line 99
    :goto_2
    invoke-virtual/range {v7 .. v12}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    move-object v2, v8

    .line 104
    sget-object v3, Lcc/j;->m:Lfc/s;

    .line 105
    .line 106
    if-ne v1, v3, :cond_7

    .line 107
    .line 108
    instance-of v0, v12, Lac/u1;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    check-cast v12, Lac/u1;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_5
    const/4 v12, 0x0

    .line 116
    :goto_3
    if-eqz v12, :cond_6

    .line 117
    .line 118
    invoke-interface {v12, v2, v9}, Lac/u1;->a(Lfc/q;I)V

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-virtual {p0, v10, v11}, Lcc/h;->J(J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lfc/q;->i()V

    .line 125
    .line 126
    .line 127
    return-object v5

    .line 128
    :cond_7
    sget-object v3, Lcc/j;->o:Lfc/s;

    .line 129
    .line 130
    if-ne v1, v3, :cond_9

    .line 131
    .line 132
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 133
    .line 134
    .line 135
    move-result-wide v3

    .line 136
    cmp-long v1, v10, v3

    .line 137
    .line 138
    if-gez v1, :cond_8

    .line 139
    .line 140
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 141
    .line 142
    .line 143
    :cond_8
    move-object v1, v2

    .line 144
    goto :goto_0

    .line 145
    :cond_9
    sget-object v0, Lcc/j;->n:Lfc/s;

    .line 146
    .line 147
    if-eq v1, v0, :cond_a

    .line 148
    .line 149
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 150
    .line 151
    .line 152
    return-object v1

    .line 153
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    const-string v1, "unexpected"

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw v0
.end method

.method public final k(J)V
    .locals 10

    .line 1
    sget-object v0, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcc/p;

    .line 8
    .line 9
    :cond_0
    :goto_0
    sget-object v1, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget v2, p0, Lcc/h;->a:I

    .line 16
    .line 17
    int-to-long v5, v2

    .line 18
    add-long/2addr v5, v3

    .line 19
    sget-object v2, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    cmp-long v2, p1, v5

    .line 30
    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-wide/16 v5, 0x1

    .line 35
    .line 36
    add-long/2addr v5, v3

    .line 37
    move-object v2, p0

    .line 38
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    sget v1, Lcc/j;->b:I

    .line 45
    .line 46
    int-to-long v5, v1

    .line 47
    div-long v7, v3, v5

    .line 48
    .line 49
    rem-long v5, v3, v5

    .line 50
    .line 51
    long-to-int v1, v5

    .line 52
    iget-wide v5, v0, Lfc/q;->c:J

    .line 53
    .line 54
    cmp-long v9, v5, v7

    .line 55
    .line 56
    if-eqz v9, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v7, v8, v0}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    if-nez v5, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v0, v5

    .line 66
    :cond_3
    const/4 v7, 0x0

    .line 67
    move-wide v5, v3

    .line 68
    move-object v3, v0

    .line 69
    move v4, v1

    .line 70
    invoke-virtual/range {v2 .. v7}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Lcc/j;->o:Lfc/s;

    .line 75
    .line 76
    if-ne v0, v1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    cmp-long v2, v5, v0

    .line 83
    .line 84
    if-gez v2, :cond_5

    .line 85
    .line 86
    invoke-virtual {v3}, Lfc/b;->a()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {v3}, Lfc/b;->a()V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    move-object v0, v3

    .line 94
    goto :goto_0
.end method

.method public final l()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Lcc/h;->z()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v6, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    .line 12
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcc/p;

    .line 17
    .line 18
    move-object v7, v0

    .line 19
    :goto_0
    sget-object v0, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    sget v0, Lcc/j;->b:I

    .line 26
    .line 27
    int-to-long v2, v0

    .line 28
    div-long v2, v8, v2

    .line 29
    .line 30
    invoke-virtual {v1}, Lcc/h;->q()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v4, v8

    .line 35
    .line 36
    if-gtz v0, :cond_2

    .line 37
    .line 38
    iget-wide v4, v7, Lfc/q;->c:J

    .line 39
    .line 40
    cmp-long v0, v4, v2

    .line 41
    .line 42
    if-gez v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v7}, Lfc/b;->c()Lfc/b;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3, v7}, Lcc/h;->A(JLcc/p;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    invoke-static {v1}, Lcc/h;->r(Lcc/h;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-wide v4, v7, Lfc/q;->c:J

    .line 58
    .line 59
    cmp-long v0, v4, v2

    .line 60
    .line 61
    if-eqz v0, :cond_d

    .line 62
    .line 63
    sget-object v0, Lcc/i;->i:Lcc/i;

    .line 64
    .line 65
    :goto_1
    invoke-static {v7, v2, v3, v0}, Lfc/a;->b(Lfc/q;JLf9/n;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_7

    .line 74
    .line 75
    invoke-static {v4}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    :cond_3
    :goto_2
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    check-cast v10, Lfc/q;

    .line 84
    .line 85
    iget-wide v11, v10, Lfc/q;->c:J

    .line 86
    .line 87
    iget-wide v13, v5, Lfc/q;->c:J

    .line 88
    .line 89
    cmp-long v15, v11, v13

    .line 90
    .line 91
    if-ltz v15, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v5}, Lfc/q;->j()Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v6, v1, v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_6

    .line 106
    .line 107
    invoke-virtual {v10}, Lfc/q;->f()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    invoke-virtual {v10}, Lfc/b;->e()V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    if-eq v11, v10, :cond_5

    .line 122
    .line 123
    invoke-virtual {v5}, Lfc/q;->f()Z

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-eqz v10, :cond_3

    .line 128
    .line 129
    invoke-virtual {v5}, Lfc/b;->e()V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    :goto_3
    invoke-static {v4}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v10, 0x0

    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    invoke-virtual {v1}, Lcc/h;->i()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2, v3, v7}, Lcc/h;->A(JLcc/p;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Lcc/h;->r(Lcc/h;)V

    .line 147
    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_8
    invoke-static {v4}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcc/p;

    .line 155
    .line 156
    iget-wide v4, v0, Lfc/q;->c:J

    .line 157
    .line 158
    cmp-long v11, v4, v2

    .line 159
    .line 160
    if-lez v11, :cond_a

    .line 161
    .line 162
    const-wide/16 v2, 0x1

    .line 163
    .line 164
    add-long/2addr v2, v8

    .line 165
    sget v0, Lcc/j;->b:I

    .line 166
    .line 167
    int-to-long v11, v0

    .line 168
    mul-long v4, v4, v11

    .line 169
    .line 170
    sget-object v0, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 171
    .line 172
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    sub-long/2addr v4, v8

    .line 179
    sget-object v0, Lcc/h;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 180
    .line 181
    invoke-virtual {v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v2

    .line 185
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 186
    .line 187
    and-long/2addr v2, v4

    .line 188
    const-wide/16 v11, 0x0

    .line 189
    .line 190
    cmp-long v13, v2, v11

    .line 191
    .line 192
    if-eqz v13, :cond_b

    .line 193
    .line 194
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v2

    .line 198
    and-long/2addr v2, v4

    .line 199
    cmp-long v13, v2, v11

    .line 200
    .line 201
    if-eqz v13, :cond_b

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_9
    invoke-static {v1}, Lcc/h;->r(Lcc/h;)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_a
    move-object v10, v0

    .line 209
    :cond_b
    :goto_5
    if-nez v10, :cond_c

    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_c
    move-object v7, v10

    .line 214
    :cond_d
    sget v0, Lcc/j;->b:I

    .line 215
    .line 216
    int-to-long v2, v0

    .line 217
    rem-long v2, v8, v2

    .line 218
    .line 219
    long-to-int v0, v2

    .line 220
    invoke-virtual {v7, v0}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    instance-of v3, v2, Lac/u1;

    .line 225
    .line 226
    sget-object v4, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 227
    .line 228
    if-eqz v3, :cond_f

    .line 229
    .line 230
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    cmp-long v3, v8, v10

    .line 235
    .line 236
    if-ltz v3, :cond_f

    .line 237
    .line 238
    sget-object v3, Lcc/j;->g:Lfc/s;

    .line 239
    .line 240
    invoke-virtual {v7, v0, v2, v3}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_f

    .line 245
    .line 246
    invoke-virtual {v1, v2, v7, v0}, Lcc/h;->G(Ljava/lang/Object;Lcc/p;I)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_e

    .line 251
    .line 252
    sget-object v2, Lcc/j;->d:Lfc/s;

    .line 253
    .line 254
    invoke-virtual {v7, v0, v2}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_8

    .line 258
    .line 259
    :cond_e
    sget-object v2, Lcc/j;->j:Lfc/s;

    .line 260
    .line 261
    invoke-virtual {v7, v0, v2}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7}, Lfc/q;->i()V

    .line 265
    .line 266
    .line 267
    goto :goto_7

    .line 268
    :cond_f
    :goto_6
    invoke-virtual {v7, v0}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    instance-of v3, v2, Lac/u1;

    .line 273
    .line 274
    if-eqz v3, :cond_12

    .line 275
    .line 276
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 277
    .line 278
    .line 279
    move-result-wide v10

    .line 280
    cmp-long v3, v8, v10

    .line 281
    .line 282
    if-gez v3, :cond_10

    .line 283
    .line 284
    new-instance v3, Lcc/y;

    .line 285
    .line 286
    move-object v5, v2

    .line 287
    check-cast v5, Lac/u1;

    .line 288
    .line 289
    invoke-direct {v3, v5}, Lcc/y;-><init>(Lac/u1;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7, v0, v2, v3}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_f

    .line 297
    .line 298
    goto/16 :goto_8

    .line 299
    .line 300
    :cond_10
    sget-object v3, Lcc/j;->g:Lfc/s;

    .line 301
    .line 302
    invoke-virtual {v7, v0, v2, v3}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_f

    .line 307
    .line 308
    invoke-virtual {v1, v2, v7, v0}, Lcc/h;->G(Ljava/lang/Object;Lcc/p;I)Z

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    if-eqz v2, :cond_11

    .line 313
    .line 314
    sget-object v2, Lcc/j;->d:Lfc/s;

    .line 315
    .line 316
    invoke-virtual {v7, v0, v2}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_11
    sget-object v2, Lcc/j;->j:Lfc/s;

    .line 321
    .line 322
    invoke-virtual {v7, v0, v2}, Lcc/p;->o(ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v7}, Lfc/q;->i()V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_12
    sget-object v3, Lcc/j;->j:Lfc/s;

    .line 330
    .line 331
    if-ne v2, v3, :cond_13

    .line 332
    .line 333
    :goto_7
    invoke-static {v1}, Lcc/h;->r(Lcc/h;)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :cond_13
    if-nez v2, :cond_14

    .line 339
    .line 340
    sget-object v3, Lcc/j;->e:Lfc/s;

    .line 341
    .line 342
    invoke-virtual {v7, v0, v2, v3}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_f

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :cond_14
    sget-object v3, Lcc/j;->d:Lfc/s;

    .line 350
    .line 351
    if-ne v2, v3, :cond_15

    .line 352
    .line 353
    goto :goto_8

    .line 354
    :cond_15
    sget-object v3, Lcc/j;->h:Lfc/s;

    .line 355
    .line 356
    if-eq v2, v3, :cond_19

    .line 357
    .line 358
    sget-object v3, Lcc/j;->i:Lfc/s;

    .line 359
    .line 360
    if-eq v2, v3, :cond_19

    .line 361
    .line 362
    sget-object v3, Lcc/j;->k:Lfc/s;

    .line 363
    .line 364
    if-ne v2, v3, :cond_16

    .line 365
    .line 366
    goto :goto_8

    .line 367
    :cond_16
    sget-object v3, Lcc/j;->l:Lfc/s;

    .line 368
    .line 369
    if-ne v2, v3, :cond_17

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_17
    sget-object v3, Lcc/j;->f:Lfc/s;

    .line 373
    .line 374
    if-ne v2, v3, :cond_18

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 378
    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v4, "Unexpected cell state: "

    .line 382
    .line 383
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0

    .line 401
    :cond_19
    :goto_8
    invoke-static {v1}, Lcc/h;->r(Lcc/h;)V

    .line 402
    .line 403
    .line 404
    return-void
.end method

.method public final m(JLcc/p;)Lcc/p;
    .locals 10

    .line 1
    sget-object v0, Lcc/j;->a:Lcc/p;

    .line 2
    .line 3
    sget-object v0, Lcc/i;->i:Lcc/i;

    .line 4
    .line 5
    :goto_0
    invoke-static {p3, p1, p2, v0}, Lfc/a;->b(Lfc/q;JLf9/n;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    invoke-static {v1}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_0
    :goto_1
    sget-object v3, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lfc/q;

    .line 26
    .line 27
    iget-wide v5, v4, Lfc/q;->c:J

    .line 28
    .line 29
    iget-wide v7, v2, Lfc/q;->c:J

    .line 30
    .line 31
    cmp-long v9, v5, v7

    .line 32
    .line 33
    if-ltz v9, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    invoke-virtual {v2}, Lfc/q;->j()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3, p0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {v4}, Lfc/q;->f()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v4}, Lfc/b;->e()V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eq v5, v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2}, Lfc/q;->f()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {v2}, Lfc/b;->e()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_2
    invoke-static {v1}, Lfc/a;->e(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v2, 0x0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0}, Lcc/h;->i()V

    .line 83
    .line 84
    .line 85
    iget-wide p1, p3, Lfc/q;->c:J

    .line 86
    .line 87
    sget v0, Lcc/j;->b:I

    .line 88
    .line 89
    int-to-long v0, v0

    .line 90
    mul-long p1, p1, v0

    .line 91
    .line 92
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    cmp-long v3, p1, v0

    .line 97
    .line 98
    if-gez v3, :cond_c

    .line 99
    .line 100
    invoke-virtual {p3}, Lfc/b;->a()V

    .line 101
    .line 102
    .line 103
    return-object v2

    .line 104
    :cond_5
    invoke-static {v1}, Lfc/a;->c(Ljava/lang/Object;)Lfc/q;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    check-cast p3, Lcc/p;

    .line 109
    .line 110
    iget-wide v0, p3, Lfc/q;->c:J

    .line 111
    .line 112
    invoke-virtual {p0}, Lcc/h;->z()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_9

    .line 117
    .line 118
    sget-object v3, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 119
    .line 120
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    sget v5, Lcc/j;->b:I

    .line 125
    .line 126
    int-to-long v5, v5

    .line 127
    div-long/2addr v3, v5

    .line 128
    cmp-long v5, p1, v3

    .line 129
    .line 130
    if-gtz v5, :cond_9

    .line 131
    .line 132
    :cond_6
    :goto_3
    sget-object v3, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 133
    .line 134
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lfc/q;

    .line 139
    .line 140
    iget-wide v5, v4, Lfc/q;->c:J

    .line 141
    .line 142
    cmp-long v7, v5, v0

    .line 143
    .line 144
    if-gez v7, :cond_9

    .line 145
    .line 146
    invoke-virtual {p3}, Lfc/q;->j()Z

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-eqz v5, :cond_9

    .line 151
    .line 152
    :cond_7
    invoke-virtual {v3, p0, v4, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    invoke-virtual {v4}, Lfc/q;->f()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_9

    .line 163
    .line 164
    invoke-virtual {v4}, Lfc/b;->e()V

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_8
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    if-eq v5, v4, :cond_7

    .line 173
    .line 174
    invoke-virtual {p3}, Lfc/q;->f()Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_6

    .line 179
    .line 180
    invoke-virtual {p3}, Lfc/b;->e()V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_9
    :goto_4
    cmp-long v3, v0, p1

    .line 185
    .line 186
    if-lez v3, :cond_d

    .line 187
    .line 188
    sget p1, Lcc/j;->b:I

    .line 189
    .line 190
    int-to-long p1, p1

    .line 191
    mul-long v7, v0, p1

    .line 192
    .line 193
    :cond_a
    sget-object p1, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 194
    .line 195
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    cmp-long p1, v5, v7

    .line 200
    .line 201
    if-ltz p1, :cond_b

    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_b
    sget-object v3, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 205
    .line 206
    move-object v4, p0

    .line 207
    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_a

    .line 212
    .line 213
    :goto_5
    sget p1, Lcc/j;->b:I

    .line 214
    .line 215
    int-to-long p1, p1

    .line 216
    mul-long v0, v0, p1

    .line 217
    .line 218
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 219
    .line 220
    .line 221
    move-result-wide p1

    .line 222
    cmp-long v3, v0, p1

    .line 223
    .line 224
    if-gez v3, :cond_c

    .line 225
    .line 226
    invoke-virtual {p3}, Lfc/b;->a()V

    .line 227
    .line 228
    .line 229
    :cond_c
    return-object v2

    .line 230
    :cond_d
    return-object p3
.end method

.method public final n()Ljava/lang/Throwable;
    .locals 1

    .line 1
    sget-object v0, Lcc/h;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Throwable;

    .line 8
    .line 9
    return-object v0
.end method

.method public final o()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcc/q;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final p()Ljava/lang/Throwable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcc/h;->n()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcc/r;

    .line 8
    .line 9
    const-string v1, "Channel was closed"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final q()J
    .locals 4

    .line 1
    sget-object v0, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide v2, 0xfffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long/2addr v0, v2

    .line 13
    return-wide v0
.end method

.method public s(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lcc/p;

    .line 10
    .line 11
    :cond_0
    :goto_0
    sget-object v9, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 12
    .line 13
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const-wide v10, 0xfffffffffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long v5, v3, v10

    .line 23
    .line 24
    const/4 v12, 0x0

    .line 25
    invoke-virtual {v1, v3, v4, v12}, Lcc/h;->u(JZ)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    sget v13, Lcc/j;->b:I

    .line 30
    .line 31
    int-to-long v3, v13

    .line 32
    div-long v14, v5, v3

    .line 33
    .line 34
    rem-long v3, v5, v3

    .line 35
    .line 36
    long-to-int v3, v3

    .line 37
    move-wide/from16 v16, v10

    .line 38
    .line 39
    iget-wide v10, v2, Lfc/q;->c:J

    .line 40
    .line 41
    sget-object v4, Lx8/a;->a:Lx8/a;

    .line 42
    .line 43
    sget-object v7, Lr8/z;->a:Lr8/z;

    .line 44
    .line 45
    cmp-long v18, v10, v14

    .line 46
    .line 47
    if-eqz v18, :cond_3

    .line 48
    .line 49
    invoke-static {v1, v14, v15, v2}, Lcc/h;->b(Lcc/h;JLcc/p;)Lcc/p;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    if-nez v10, :cond_2

    .line 54
    .line 55
    if-eqz v8, :cond_0

    .line 56
    .line 57
    invoke-virtual/range {p0 .. p2}, Lcc/h;->B(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-ne v0, v4, :cond_1

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_1
    move-object v4, v1

    .line 65
    move-object v10, v7

    .line 66
    goto/16 :goto_9

    .line 67
    .line 68
    :cond_2
    move-object v2, v10

    .line 69
    :cond_3
    move-object v10, v7

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v11, v4

    .line 72
    move-object/from16 v4, p1

    .line 73
    .line 74
    invoke-static/range {v1 .. v8}, Lcc/h;->d(Lcc/h;Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_1c

    .line 79
    .line 80
    const/4 v14, 0x1

    .line 81
    if-eq v7, v14, :cond_7

    .line 82
    .line 83
    const/4 v15, 0x2

    .line 84
    if-eq v7, v15, :cond_1a

    .line 85
    .line 86
    sget-object v4, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 87
    .line 88
    const/4 v8, 0x5

    .line 89
    const/4 v12, 0x4

    .line 90
    const/4 v15, 0x3

    .line 91
    if-eq v7, v15, :cond_8

    .line 92
    .line 93
    if-eq v7, v12, :cond_5

    .line 94
    .line 95
    if-eq v7, v8, :cond_4

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    cmp-long v0, v5, v3

    .line 107
    .line 108
    if-gez v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 111
    .line 112
    .line 113
    :cond_6
    invoke-virtual/range {p0 .. p2}, Lcc/h;->B(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-ne v0, v11, :cond_7

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_7
    move-object v4, v1

    .line 121
    goto/16 :goto_9

    .line 122
    .line 123
    :cond_8
    invoke-static/range {p2 .. p2}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v7}, Lac/z;->m(Lw8/c;)Lac/i;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const/16 v19, 0x5

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    move-object/from16 v20, v4

    .line 135
    .line 136
    const/4 v15, 0x5

    .line 137
    move-object/from16 v4, p1

    .line 138
    .line 139
    :try_start_0
    invoke-static/range {v1 .. v8}, Lcc/h;->d(Lcc/h;Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 140
    .line 141
    .line 142
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    if-eqz v8, :cond_18

    .line 144
    .line 145
    if-eq v8, v14, :cond_17

    .line 146
    .line 147
    const/4 v14, 0x2

    .line 148
    if-eq v8, v14, :cond_16

    .line 149
    .line 150
    if-eq v8, v12, :cond_15

    .line 151
    .line 152
    const-string v13, "unexpected"

    .line 153
    .line 154
    if-ne v8, v15, :cond_14

    .line 155
    .line 156
    :try_start_1
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcc/p;

    .line 164
    .line 165
    :goto_1
    invoke-virtual {v9, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    and-long v5, v2, v16

    .line 170
    .line 171
    const/4 v14, 0x0

    .line 172
    invoke-virtual {v1, v2, v3, v14}, Lcc/h;->u(JZ)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    sget v2, Lcc/j;->b:I

    .line 177
    .line 178
    int-to-long v14, v2

    .line 179
    move-object/from16 v21, v13

    .line 180
    .line 181
    div-long v12, v5, v14

    .line 182
    .line 183
    rem-long v14, v5, v14

    .line 184
    .line 185
    long-to-int v3, v14

    .line 186
    iget-wide v14, v0, Lfc/q;->c:J

    .line 187
    .line 188
    cmp-long v22, v14, v12

    .line 189
    .line 190
    if-eqz v22, :cond_b

    .line 191
    .line 192
    invoke-static {v1, v12, v13, v0}, Lcc/h;->b(Lcc/h;JLcc/p;)Lcc/p;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    if-nez v12, :cond_a

    .line 197
    .line 198
    if-eqz v8, :cond_9

    .line 199
    .line 200
    invoke-static {v1, v4, v7}, Lcc/h;->c(Lcc/h;Ljava/lang/Object;Lac/i;)V

    .line 201
    .line 202
    .line 203
    move-object v4, v1

    .line 204
    goto/16 :goto_6

    .line 205
    .line 206
    :catchall_0
    move-exception v0

    .line 207
    move-object v4, v1

    .line 208
    goto/16 :goto_8

    .line 209
    .line 210
    :cond_9
    move-object/from16 v13, v21

    .line 211
    .line 212
    const/4 v12, 0x4

    .line 213
    const/4 v15, 0x5

    .line 214
    goto :goto_1

    .line 215
    :cond_a
    move v0, v2

    .line 216
    move-object v2, v12

    .line 217
    goto :goto_2

    .line 218
    :cond_b
    move/from16 v23, v2

    .line 219
    .line 220
    move-object v2, v0

    .line 221
    move/from16 v0, v23

    .line 222
    .line 223
    :goto_2
    invoke-static/range {v1 .. v8}, Lcc/h;->d(Lcc/h;Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 224
    .line 225
    .line 226
    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    move-object/from16 v23, v4

    .line 228
    .line 229
    move-object v4, v1

    .line 230
    move-object v1, v2

    .line 231
    move v2, v3

    .line 232
    move-object/from16 v3, v23

    .line 233
    .line 234
    if-eqz v12, :cond_13

    .line 235
    .line 236
    const/4 v13, 0x1

    .line 237
    if-eq v12, v13, :cond_12

    .line 238
    .line 239
    const/4 v14, 0x2

    .line 240
    if-eq v12, v14, :cond_10

    .line 241
    .line 242
    const/4 v15, 0x3

    .line 243
    if-eq v12, v15, :cond_f

    .line 244
    .line 245
    const/4 v0, 0x4

    .line 246
    if-eq v12, v0, :cond_d

    .line 247
    .line 248
    const/4 v2, 0x5

    .line 249
    if-eq v12, v2, :cond_c

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_c
    :try_start_2
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 253
    .line 254
    .line 255
    :goto_3
    move-object v0, v1

    .line 256
    move-object v1, v4

    .line 257
    move-object/from16 v13, v21

    .line 258
    .line 259
    const/4 v12, 0x4

    .line 260
    const/4 v15, 0x5

    .line 261
    move-object v4, v3

    .line 262
    goto :goto_1

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto/16 :goto_8

    .line 265
    .line 266
    :cond_d
    move-object/from16 v0, v20

    .line 267
    .line 268
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 269
    .line 270
    .line 271
    move-result-wide v8

    .line 272
    cmp-long v0, v5, v8

    .line 273
    .line 274
    if-gez v0, :cond_e

    .line 275
    .line 276
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 277
    .line 278
    .line 279
    :cond_e
    :goto_4
    invoke-static {v4, v3, v7}, Lcc/h;->c(Lcc/h;Ljava/lang/Object;Lac/i;)V

    .line 280
    .line 281
    .line 282
    goto :goto_6

    .line 283
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 284
    .line 285
    move-object/from16 v1, v21

    .line 286
    .line 287
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw v0

    .line 291
    :cond_10
    if-eqz v8, :cond_11

    .line 292
    .line 293
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_11
    add-int v3, v2, v0

    .line 298
    .line 299
    invoke-virtual {v7, v1, v3}, Lac/i;->a(Lfc/q;I)V

    .line 300
    .line 301
    .line 302
    goto :goto_6

    .line 303
    :cond_12
    :goto_5
    invoke-virtual {v7, v10}, Lac/i;->f(Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_13
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :cond_14
    move-object v4, v1

    .line 312
    move-object v1, v13

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 314
    .line 315
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_15
    move-object v3, v4

    .line 320
    move-object/from16 v0, v20

    .line 321
    .line 322
    move-object v4, v1

    .line 323
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 324
    .line 325
    .line 326
    move-result-wide v0

    .line 327
    cmp-long v8, v5, v0

    .line 328
    .line 329
    if-gez v8, :cond_e

    .line 330
    .line 331
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 332
    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_16
    move-object v4, v1

    .line 336
    add-int/2addr v3, v13

    .line 337
    invoke-virtual {v7, v2, v3}, Lac/i;->a(Lfc/q;I)V

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_17
    move-object v4, v1

    .line 342
    invoke-virtual {v7, v10}, Lac/i;->f(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_18
    move-object v4, v1

    .line 347
    invoke-virtual {v2}, Lfc/b;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    .line 349
    .line 350
    goto :goto_5

    .line 351
    :goto_6
    invoke-virtual {v7}, Lac/i;->p()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    if-ne v7, v11, :cond_19

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_19
    move-object v7, v10

    .line 359
    :goto_7
    if-ne v7, v11, :cond_1b

    .line 360
    .line 361
    return-object v7

    .line 362
    :goto_8
    invoke-virtual {v7}, Lac/i;->y()V

    .line 363
    .line 364
    .line 365
    throw v0

    .line 366
    :cond_1a
    move-object/from16 v3, p1

    .line 367
    .line 368
    move-object v4, v1

    .line 369
    if-eqz v8, :cond_1b

    .line 370
    .line 371
    invoke-virtual {v2}, Lfc/q;->i()V

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {p0 .. p2}, Lcc/h;->B(Ljava/lang/Object;Lw8/c;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    if-ne v0, v11, :cond_1b

    .line 379
    .line 380
    return-object v0

    .line 381
    :cond_1b
    :goto_9
    return-object v10

    .line 382
    :cond_1c
    move-object v4, v1

    .line 383
    invoke-virtual {v2}, Lfc/b;->a()V

    .line 384
    .line 385
    .line 386
    return-object v10
.end method

.method public final t(Lw8/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcc/p;

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lcc/h;->v()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_10

    .line 14
    .line 15
    sget-object v2, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    sget v3, Lcc/j;->b:I

    .line 22
    .line 23
    int-to-long v3, v3

    .line 24
    div-long v8, v6, v3

    .line 25
    .line 26
    rem-long v3, v6, v3

    .line 27
    .line 28
    long-to-int v5, v3

    .line 29
    iget-wide v3, v1, Lfc/q;->c:J

    .line 30
    .line 31
    cmp-long v10, v3, v8

    .line 32
    .line 33
    if-eqz v10, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v8, v9, v1}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move-object v4, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v4, v1

    .line 45
    :goto_1
    const/4 v8, 0x0

    .line 46
    move-object v3, p0

    .line 47
    invoke-virtual/range {v3 .. v8}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    sget-object v9, Lcc/j;->m:Lfc/s;

    .line 52
    .line 53
    const-string v11, "unexpected"

    .line 54
    .line 55
    if-eq v1, v9, :cond_f

    .line 56
    .line 57
    sget-object v10, Lcc/j;->o:Lfc/s;

    .line 58
    .line 59
    if-ne v1, v10, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    cmp-long v3, v6, v1

    .line 66
    .line 67
    if-gez v3, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 70
    .line 71
    .line 72
    :cond_2
    move-object v1, v4

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object v3, Lcc/j;->n:Lfc/s;

    .line 75
    .line 76
    if-ne v1, v3, :cond_e

    .line 77
    .line 78
    invoke-static {p1}, Lp9/x1;->y(Lw8/c;)Lw8/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lac/z;->m(Lw8/c;)Lac/i;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    move-object v3, p0

    .line 87
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v9, :cond_4

    .line 92
    .line 93
    invoke-virtual {v8, v4, v5}, Lac/i;->a(Lfc/q;I)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :catchall_0
    move-exception v0

    .line 99
    :goto_2
    move-object p1, v0

    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_4
    const/4 v1, 0x0

    .line 103
    if-ne p1, v10, :cond_d

    .line 104
    .line 105
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    cmp-long p1, v6, v9

    .line 110
    .line 111
    if-gez p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Lcc/p;

    .line 121
    .line 122
    :goto_3
    invoke-virtual {p0}, Lcc/h;->v()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {p0}, Lcc/h;->o()Ljava/lang/Throwable;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Lr8/a;->b(Ljava/lang/Throwable;)Lr8/l;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {v8, p1}, Lac/i;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_6
    move-object v10, v8

    .line 142
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    sget v0, Lcc/j;->b:I

    .line 147
    .line 148
    int-to-long v4, v0

    .line 149
    div-long v6, v8, v4

    .line 150
    .line 151
    rem-long v4, v8, v4

    .line 152
    .line 153
    long-to-int v0, v4

    .line 154
    iget-wide v4, p1, Lfc/q;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 155
    .line 156
    cmp-long v12, v4, v6

    .line 157
    .line 158
    if-eqz v12, :cond_8

    .line 159
    .line 160
    :try_start_2
    invoke-virtual {p0, v6, v7, p1}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 161
    .line 162
    .line 163
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-nez v4, :cond_7

    .line 165
    .line 166
    move-object v8, v10

    .line 167
    goto :goto_3

    .line 168
    :cond_7
    move-object v6, v4

    .line 169
    :goto_4
    move v7, v0

    .line 170
    move-object v5, v3

    .line 171
    goto :goto_5

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    move-object p1, v0

    .line 174
    move-object v8, v10

    .line 175
    goto :goto_8

    .line 176
    :cond_8
    move-object v6, p1

    .line 177
    goto :goto_4

    .line 178
    :goto_5
    :try_start_3
    invoke-virtual/range {v5 .. v10}, Lcc/h;->H(Lcc/p;IJLjava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 182
    move-object v4, v6

    .line 183
    move-wide v5, v8

    .line 184
    move-object v8, v10

    .line 185
    :try_start_4
    sget-object v0, Lcc/j;->m:Lfc/s;

    .line 186
    .line 187
    if-ne p1, v0, :cond_9

    .line 188
    .line 189
    invoke-virtual {v8, v4, v7}, Lac/i;->a(Lfc/q;I)V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_9
    sget-object v0, Lcc/j;->o:Lfc/s;

    .line 194
    .line 195
    if-ne p1, v0, :cond_b

    .line 196
    .line 197
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 198
    .line 199
    .line 200
    move-result-wide v9

    .line 201
    cmp-long p1, v5, v9

    .line 202
    .line 203
    if-gez p1, :cond_a

    .line 204
    .line 205
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 206
    .line 207
    .line 208
    :cond_a
    move-object v3, p0

    .line 209
    move-object p1, v4

    .line 210
    goto :goto_3

    .line 211
    :cond_b
    sget-object v0, Lcc/j;->n:Lfc/s;

    .line 212
    .line 213
    if-eq p1, v0, :cond_c

    .line 214
    .line 215
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 216
    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 220
    .line 221
    invoke-direct {p1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1

    .line 225
    :catchall_2
    move-exception v0

    .line 226
    move-object v8, v10

    .line 227
    goto/16 :goto_2

    .line 228
    .line 229
    :cond_d
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 230
    .line 231
    .line 232
    :goto_6
    invoke-virtual {v8, p1, v1}, Lac/i;->z(Ljava/lang/Object;Lf9/o;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    .line 234
    .line 235
    :goto_7
    invoke-virtual {v8}, Lac/i;->p()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    return-object p1

    .line 240
    :goto_8
    invoke-virtual {v8}, Lac/i;->y()V

    .line 241
    .line 242
    .line 243
    throw p1

    .line 244
    :cond_e
    invoke-virtual {v4}, Lfc/b;->a()V

    .line 245
    .line 246
    .line 247
    return-object v1

    .line 248
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 249
    .line 250
    invoke-direct {p1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_10
    invoke-virtual {p0}, Lcc/h;->o()Ljava/lang/Throwable;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    sget v0, Lfc/r;->a:I

    .line 259
    .line 260
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    const/16 v4, 0x3c

    .line 15
    .line 16
    shr-long/2addr v2, v4

    .line 17
    long-to-int v3, v2

    .line 18
    const/4 v2, 0x3

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v3, v4, :cond_1

    .line 21
    .line 22
    if-eq v3, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "cancelled,"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v3, "closed,"

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v5, "capacity="

    .line 39
    .line 40
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v5, v0, Lcc/h;->a:I

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v5, 0x2c

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v3, "data=["

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [Lcc/p;

    .line 66
    .line 67
    sget-object v3, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const/4 v6, 0x0

    .line 74
    aput-object v3, v2, v6

    .line 75
    .line 76
    sget-object v3, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v7, 0x1

    .line 83
    aput-object v3, v2, v7

    .line 84
    .line 85
    sget-object v3, Lcc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    aput-object v3, v2, v4

    .line 92
    .line 93
    invoke-static {v2}, Lp9/x1;->C([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    move-object v8, v4

    .line 117
    check-cast v8, Lcc/p;

    .line 118
    .line 119
    sget-object v9, Lcc/j;->a:Lcc/p;

    .line 120
    .line 121
    if-eq v8, v9, :cond_2

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_19

    .line 136
    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    move-object v4, v3

    .line 149
    check-cast v4, Lcc/p;

    .line 150
    .line 151
    iget-wide v8, v4, Lfc/q;->c:J

    .line 152
    .line 153
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    move-object v10, v4

    .line 158
    check-cast v10, Lcc/p;

    .line 159
    .line 160
    iget-wide v10, v10, Lfc/q;->c:J

    .line 161
    .line 162
    cmp-long v12, v8, v10

    .line 163
    .line 164
    if-lez v12, :cond_6

    .line 165
    .line 166
    move-object v3, v4

    .line 167
    move-wide v8, v10

    .line 168
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_5

    .line 173
    .line 174
    :goto_2
    check-cast v3, Lcc/p;

    .line 175
    .line 176
    sget-object v2, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v10

    .line 182
    invoke-virtual {v0}, Lcc/h;->q()J

    .line 183
    .line 184
    .line 185
    move-result-wide v12

    .line 186
    :goto_3
    sget v2, Lcc/j;->b:I

    .line 187
    .line 188
    const/4 v4, 0x0

    .line 189
    :goto_4
    if-ge v4, v2, :cond_16

    .line 190
    .line 191
    iget-wide v8, v3, Lfc/q;->c:J

    .line 192
    .line 193
    sget v14, Lcc/j;->b:I

    .line 194
    .line 195
    int-to-long v14, v14

    .line 196
    mul-long v8, v8, v14

    .line 197
    .line 198
    int-to-long v14, v4

    .line 199
    add-long/2addr v8, v14

    .line 200
    cmp-long v14, v8, v12

    .line 201
    .line 202
    if-ltz v14, :cond_8

    .line 203
    .line 204
    cmp-long v15, v8, v10

    .line 205
    .line 206
    if-gez v15, :cond_7

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_7
    const/16 v16, 0x1

    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :cond_8
    :goto_5
    invoke-virtual {v3, v4}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v15

    .line 217
    iget-object v6, v3, Lcc/p;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 218
    .line 219
    const/16 v16, 0x1

    .line 220
    .line 221
    mul-int/lit8 v7, v4, 0x2

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    instance-of v7, v15, Lac/g;

    .line 228
    .line 229
    if-eqz v7, :cond_b

    .line 230
    .line 231
    cmp-long v7, v8, v10

    .line 232
    .line 233
    if-gez v7, :cond_9

    .line 234
    .line 235
    if-ltz v14, :cond_9

    .line 236
    .line 237
    const-string v7, "receive"

    .line 238
    .line 239
    goto/16 :goto_7

    .line 240
    .line 241
    :cond_9
    if-gez v14, :cond_a

    .line 242
    .line 243
    if-ltz v7, :cond_a

    .line 244
    .line 245
    const-string v7, "send"

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_a
    const-string v7, "cont"

    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    :cond_b
    instance-of v7, v15, Lic/f;

    .line 254
    .line 255
    if-eqz v7, :cond_e

    .line 256
    .line 257
    cmp-long v7, v8, v10

    .line 258
    .line 259
    if-gez v7, :cond_c

    .line 260
    .line 261
    if-ltz v14, :cond_c

    .line 262
    .line 263
    const-string v7, "onReceive"

    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :cond_c
    if-gez v14, :cond_d

    .line 268
    .line 269
    if-ltz v7, :cond_d

    .line 270
    .line 271
    const-string v7, "onSend"

    .line 272
    .line 273
    goto/16 :goto_7

    .line 274
    .line 275
    :cond_d
    const-string v7, "select"

    .line 276
    .line 277
    goto/16 :goto_7

    .line 278
    .line 279
    :cond_e
    instance-of v7, v15, Lcc/v;

    .line 280
    .line 281
    if-eqz v7, :cond_f

    .line 282
    .line 283
    const-string v7, "receiveCatching"

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_f
    instance-of v7, v15, Lcc/y;

    .line 287
    .line 288
    if-eqz v7, :cond_10

    .line 289
    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v8, "EB("

    .line 293
    .line 294
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const/16 v8, 0x29

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    goto :goto_7

    .line 310
    :cond_10
    sget-object v7, Lcc/j;->f:Lfc/s;

    .line 311
    .line 312
    invoke-static {v15, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_13

    .line 317
    .line 318
    sget-object v7, Lcc/j;->g:Lfc/s;

    .line 319
    .line 320
    invoke-static {v15, v7}, Lg9/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_11

    .line 325
    .line 326
    goto :goto_6

    .line 327
    :cond_11
    if-eqz v15, :cond_15

    .line 328
    .line 329
    sget-object v7, Lcc/j;->e:Lfc/s;

    .line 330
    .line 331
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    if-nez v7, :cond_15

    .line 336
    .line 337
    sget-object v7, Lcc/j;->i:Lfc/s;

    .line 338
    .line 339
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v7

    .line 343
    if-nez v7, :cond_15

    .line 344
    .line 345
    sget-object v7, Lcc/j;->h:Lfc/s;

    .line 346
    .line 347
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_15

    .line 352
    .line 353
    sget-object v7, Lcc/j;->k:Lfc/s;

    .line 354
    .line 355
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    if-nez v7, :cond_15

    .line 360
    .line 361
    sget-object v7, Lcc/j;->j:Lfc/s;

    .line 362
    .line 363
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-nez v7, :cond_15

    .line 368
    .line 369
    sget-object v7, Lcc/j;->l:Lfc/s;

    .line 370
    .line 371
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    if-eqz v7, :cond_12

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_12
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    goto :goto_7

    .line 383
    :cond_13
    :goto_6
    const-string v7, "resuming_sender"

    .line 384
    .line 385
    :goto_7
    if-eqz v6, :cond_14

    .line 386
    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    .line 388
    .line 389
    const-string v9, "("

    .line 390
    .line 391
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v6, "),"

    .line 404
    .line 405
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v6

    .line 412
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    :cond_15
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 435
    .line 436
    const/4 v6, 0x0

    .line 437
    const/4 v7, 0x1

    .line 438
    goto/16 :goto_4

    .line 439
    .line 440
    :cond_16
    const/16 v16, 0x1

    .line 441
    .line 442
    invoke-virtual {v3}, Lfc/b;->c()Lfc/b;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    move-object v3, v2

    .line 447
    check-cast v3, Lcc/p;

    .line 448
    .line 449
    if-nez v3, :cond_18

    .line 450
    .line 451
    :goto_9
    invoke-static {v1}, Lxb/i;->R(Ljava/lang/CharSequence;)C

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    if-ne v2, v5, :cond_17

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    add-int/lit8 v2, v2, -0x1

    .line 462
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    const-string v3, "deleteCharAt(...)"

    .line 468
    .line 469
    invoke-static {v2, v3}, Lg9/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :cond_17
    const-string v2, "]"

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    return-object v1

    .line 482
    :cond_18
    const/4 v6, 0x0

    .line 483
    const/4 v7, 0x1

    .line 484
    goto/16 :goto_3

    .line 485
    .line 486
    :cond_19
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 487
    .line 488
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 489
    .line 490
    .line 491
    throw v1
.end method

.method public final u(JZ)Z
    .locals 14

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    shr-long v0, p1, v0

    .line 4
    .line 5
    long-to-int v1, v0

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz v1, :cond_1d

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v1, v2, :cond_1d

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    sget-object v4, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    const-wide v5, 0xfffffffffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    if-eq v1, v3, :cond_d

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne v1, v3, :cond_c

    .line 24
    .line 25
    and-long/2addr v5, p1

    .line 26
    invoke-virtual {p0, v5, v6}, Lcc/h;->g(J)Lcc/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v5, v3

    .line 32
    :cond_0
    sget v6, Lcc/j;->b:I

    .line 33
    .line 34
    sub-int/2addr v6, v2

    .line 35
    :goto_0
    const/4 v7, -0x1

    .line 36
    if-ge v7, v6, :cond_9

    .line 37
    .line 38
    iget-wide v8, v1, Lfc/q;->c:J

    .line 39
    .line 40
    sget v10, Lcc/j;->b:I

    .line 41
    .line 42
    int-to-long v10, v10

    .line 43
    mul-long v8, v8, v10

    .line 44
    .line 45
    int-to-long v10, v6

    .line 46
    add-long/2addr v8, v10

    .line 47
    :cond_1
    invoke-virtual {v1, v6}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    sget-object v11, Lcc/j;->i:Lfc/s;

    .line 52
    .line 53
    if-eq v10, v11, :cond_a

    .line 54
    .line 55
    sget-object v11, Lcc/j;->d:Lfc/s;

    .line 56
    .line 57
    if-ne v10, v11, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v11

    .line 63
    cmp-long v13, v8, v11

    .line 64
    .line 65
    if-ltz v13, :cond_a

    .line 66
    .line 67
    sget-object v11, Lcc/j;->l:Lfc/s;

    .line 68
    .line 69
    invoke-virtual {v1, v6, v10, v11}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-eqz v10, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1, v6, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_2
    sget-object v11, Lcc/j;->e:Lfc/s;

    .line 83
    .line 84
    if-eq v10, v11, :cond_8

    .line 85
    .line 86
    if-nez v10, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    instance-of v11, v10, Lac/u1;

    .line 90
    .line 91
    if-nez v11, :cond_6

    .line 92
    .line 93
    instance-of v11, v10, Lcc/y;

    .line 94
    .line 95
    if-eqz v11, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    sget-object v11, Lcc/j;->g:Lfc/s;

    .line 99
    .line 100
    if-eq v10, v11, :cond_a

    .line 101
    .line 102
    sget-object v12, Lcc/j;->f:Lfc/s;

    .line 103
    .line 104
    if-ne v10, v12, :cond_5

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_5
    if-eq v10, v11, :cond_1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_6
    :goto_1
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v11

    .line 114
    cmp-long v13, v8, v11

    .line 115
    .line 116
    if-ltz v13, :cond_a

    .line 117
    .line 118
    instance-of v11, v10, Lcc/y;

    .line 119
    .line 120
    if-eqz v11, :cond_7

    .line 121
    .line 122
    move-object v11, v10

    .line 123
    check-cast v11, Lcc/y;

    .line 124
    .line 125
    iget-object v11, v11, Lcc/y;->a:Lac/u1;

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    move-object v11, v10

    .line 129
    check-cast v11, Lac/u1;

    .line 130
    .line 131
    :goto_2
    sget-object v12, Lcc/j;->l:Lfc/s;

    .line 132
    .line 133
    invoke-virtual {v1, v6, v10, v12}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v10

    .line 137
    if-eqz v10, :cond_1

    .line 138
    .line 139
    invoke-static {v5, v11}, Lfc/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v1, v6, v3}, Lcc/p;->n(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_8
    :goto_3
    sget-object v11, Lcc/j;->l:Lfc/s;

    .line 151
    .line 152
    invoke-virtual {v1, v6, v10, v11}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_1

    .line 157
    .line 158
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 159
    .line 160
    .line 161
    :goto_4
    add-int/lit8 v6, v6, -0x1

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_9
    sget-object v6, Lfc/b;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 166
    .line 167
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    check-cast v1, Lfc/b;

    .line 172
    .line 173
    check-cast v1, Lcc/p;

    .line 174
    .line 175
    if-nez v1, :cond_0

    .line 176
    .line 177
    :cond_a
    :goto_5
    if-eqz v5, :cond_1c

    .line 178
    .line 179
    instance-of v1, v5, Ljava/util/ArrayList;

    .line 180
    .line 181
    if-nez v1, :cond_b

    .line 182
    .line 183
    check-cast v5, Lac/u1;

    .line 184
    .line 185
    invoke-virtual {p0, v5, v0}, Lcc/h;->E(Lac/u1;Z)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_a

    .line 189
    .line 190
    :cond_b
    check-cast v5, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    sub-int/2addr v1, v2

    .line 197
    :goto_6
    if-ge v7, v1, :cond_1c

    .line 198
    .line 199
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, Lac/u1;

    .line 204
    .line 205
    invoke-virtual {p0, v3, v0}, Lcc/h;->E(Lac/u1;Z)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v1, v1, -0x1

    .line 209
    .line 210
    goto :goto_6

    .line 211
    :cond_c
    const-string v0, "unexpected close status: "

    .line 212
    .line 213
    invoke-static {v1, v0}, La2/f;->D(ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v1

    .line 227
    :cond_d
    and-long/2addr v5, p1

    .line 228
    invoke-virtual {p0, v5, v6}, Lcc/h;->g(J)Lcc/p;

    .line 229
    .line 230
    .line 231
    if-eqz p3, :cond_1c

    .line 232
    .line 233
    :cond_e
    :goto_7
    sget-object v1, Lcc/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 234
    .line 235
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    check-cast v3, Lcc/p;

    .line 240
    .line 241
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 242
    .line 243
    .line 244
    move-result-wide v7

    .line 245
    invoke-virtual {p0}, Lcc/h;->q()J

    .line 246
    .line 247
    .line 248
    move-result-wide v5

    .line 249
    cmp-long v9, v5, v7

    .line 250
    .line 251
    if-gtz v9, :cond_f

    .line 252
    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :cond_f
    sget v5, Lcc/j;->b:I

    .line 256
    .line 257
    int-to-long v5, v5

    .line 258
    div-long v9, v7, v5

    .line 259
    .line 260
    iget-wide v11, v3, Lfc/q;->c:J

    .line 261
    .line 262
    cmp-long v13, v11, v9

    .line 263
    .line 264
    if-eqz v13, :cond_10

    .line 265
    .line 266
    invoke-virtual {p0, v9, v10, v3}, Lcc/h;->m(JLcc/p;)Lcc/p;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    if-nez v3, :cond_10

    .line 271
    .line 272
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    check-cast v1, Lcc/p;

    .line 277
    .line 278
    iget-wide v5, v1, Lfc/q;->c:J

    .line 279
    .line 280
    cmp-long v1, v5, v9

    .line 281
    .line 282
    if-gez v1, :cond_e

    .line 283
    .line 284
    goto :goto_a

    .line 285
    :cond_10
    invoke-virtual {v3}, Lfc/b;->a()V

    .line 286
    .line 287
    .line 288
    rem-long v5, v7, v5

    .line 289
    .line 290
    long-to-int v1, v5

    .line 291
    :cond_11
    invoke-virtual {v3, v1}, Lcc/p;->l(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    if-eqz v5, :cond_1a

    .line 296
    .line 297
    sget-object v6, Lcc/j;->e:Lfc/s;

    .line 298
    .line 299
    if-ne v5, v6, :cond_12

    .line 300
    .line 301
    goto :goto_8

    .line 302
    :cond_12
    sget-object v1, Lcc/j;->d:Lfc/s;

    .line 303
    .line 304
    if-ne v5, v1, :cond_13

    .line 305
    .line 306
    goto :goto_b

    .line 307
    :cond_13
    sget-object v1, Lcc/j;->j:Lfc/s;

    .line 308
    .line 309
    if-ne v5, v1, :cond_14

    .line 310
    .line 311
    goto :goto_9

    .line 312
    :cond_14
    sget-object v1, Lcc/j;->l:Lfc/s;

    .line 313
    .line 314
    if-ne v5, v1, :cond_15

    .line 315
    .line 316
    goto :goto_9

    .line 317
    :cond_15
    sget-object v1, Lcc/j;->i:Lfc/s;

    .line 318
    .line 319
    if-ne v5, v1, :cond_16

    .line 320
    .line 321
    goto :goto_9

    .line 322
    :cond_16
    sget-object v1, Lcc/j;->h:Lfc/s;

    .line 323
    .line 324
    if-ne v5, v1, :cond_17

    .line 325
    .line 326
    goto :goto_9

    .line 327
    :cond_17
    sget-object v1, Lcc/j;->g:Lfc/s;

    .line 328
    .line 329
    if-ne v5, v1, :cond_18

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_18
    sget-object v1, Lcc/j;->f:Lfc/s;

    .line 333
    .line 334
    if-ne v5, v1, :cond_19

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_19
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 338
    .line 339
    .line 340
    move-result-wide v5

    .line 341
    cmp-long v1, v7, v5

    .line 342
    .line 343
    if-nez v1, :cond_1b

    .line 344
    .line 345
    goto :goto_b

    .line 346
    :cond_1a
    :goto_8
    sget-object v6, Lcc/j;->h:Lfc/s;

    .line 347
    .line 348
    invoke-virtual {v3, v1, v5, v6}, Lcc/p;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    if-eqz v5, :cond_11

    .line 353
    .line 354
    invoke-virtual {p0}, Lcc/h;->l()V

    .line 355
    .line 356
    .line 357
    :cond_1b
    :goto_9
    const-wide/16 v5, 0x1

    .line 358
    .line 359
    add-long v9, v7, v5

    .line 360
    .line 361
    sget-object v5, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 362
    .line 363
    move-object v6, p0

    .line 364
    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 365
    .line 366
    .line 367
    goto/16 :goto_7

    .line 368
    .line 369
    :cond_1c
    :goto_a
    return v2

    .line 370
    :cond_1d
    :goto_b
    return v0
.end method

.method public final v()Z
    .locals 3

    .line 1
    sget-object v0, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lcc/h;->u(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final w(Lec/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcc/h;->C(Lcc/h;Ly8/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v8, Lcc/h;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v9, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v9}, Lcc/h;->u(JZ)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v10, 0x1

    .line 13
    const-wide v11, 0xfffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    and-long/2addr v1, v11

    .line 23
    invoke-virtual {p0, v1, v2}, Lcc/h;->e(J)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    xor-int/2addr v1, v10

    .line 28
    :goto_0
    sget-object v13, Lcc/o;->b:Lcc/n;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    return-object v13

    .line 33
    :cond_1
    sget-object v6, Lcc/j;->j:Lfc/s;

    .line 34
    .line 35
    sget-object v1, Lcc/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcc/p;

    .line 42
    .line 43
    :goto_1
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    and-long v4, v2, v11

    .line 48
    .line 49
    invoke-virtual {p0, v2, v3, v9}, Lcc/h;->u(JZ)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    sget v14, Lcc/j;->b:I

    .line 54
    .line 55
    int-to-long v2, v14

    .line 56
    div-long v11, v4, v2

    .line 57
    .line 58
    rem-long v2, v4, v2

    .line 59
    .line 60
    long-to-int v2, v2

    .line 61
    iget-wide v9, v1, Lfc/q;->c:J

    .line 62
    .line 63
    cmp-long v3, v9, v11

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    invoke-static {p0, v11, v12, v1}, Lcc/h;->b(Lcc/h;JLcc/p;)Lcc/p;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v2, Lcc/m;

    .line 80
    .line 81
    invoke-direct {v2, v1}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :cond_2
    const/4 v9, 0x0

    .line 86
    const/4 v10, 0x1

    .line 87
    :goto_2
    const-wide v11, 0xfffffffffffffffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v1, v3

    .line 94
    :cond_4
    move-object v0, p0

    .line 95
    move-object/from16 v3, p1

    .line 96
    .line 97
    invoke-static/range {v0 .. v7}, Lcc/h;->d(Lcc/h;Lcc/p;ILjava/lang/Object;JLjava/lang/Object;Z)I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    sget-object v3, Lr8/z;->a:Lr8/z;

    .line 102
    .line 103
    if-eqz v9, :cond_e

    .line 104
    .line 105
    const/4 v10, 0x1

    .line 106
    if-eq v9, v10, :cond_d

    .line 107
    .line 108
    const/4 v3, 0x2

    .line 109
    if-eq v9, v3, :cond_9

    .line 110
    .line 111
    const/4 v2, 0x3

    .line 112
    if-eq v9, v2, :cond_8

    .line 113
    .line 114
    const/4 v2, 0x4

    .line 115
    if-eq v9, v2, :cond_6

    .line 116
    .line 117
    const/4 v2, 0x5

    .line 118
    if-eq v9, v2, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 122
    .line 123
    .line 124
    :goto_3
    const/4 v9, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    sget-object v2, Lcc/h;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 127
    .line 128
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    cmp-long v6, v4, v2

    .line 133
    .line 134
    if-gez v6, :cond_7

    .line 135
    .line 136
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v2, Lcc/m;

    .line 144
    .line 145
    invoke-direct {v2, v1}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    return-object v2

    .line 149
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 150
    .line 151
    const-string v2, "unexpected"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_9
    if-eqz v7, :cond_a

    .line 158
    .line 159
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcc/h;->p()Ljava/lang/Throwable;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    new-instance v2, Lcc/m;

    .line 167
    .line 168
    invoke-direct {v2, v1}, Lcc/m;-><init>(Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    return-object v2

    .line 172
    :cond_a
    instance-of v3, v6, Lac/u1;

    .line 173
    .line 174
    if-eqz v3, :cond_b

    .line 175
    .line 176
    check-cast v6, Lac/u1;

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_b
    const/4 v6, 0x0

    .line 180
    :goto_4
    if-eqz v6, :cond_c

    .line 181
    .line 182
    add-int/2addr v2, v14

    .line 183
    invoke-interface {v6, v1, v2}, Lac/u1;->a(Lfc/q;I)V

    .line 184
    .line 185
    .line 186
    :cond_c
    invoke-virtual {v1}, Lfc/q;->i()V

    .line 187
    .line 188
    .line 189
    return-object v13

    .line 190
    :cond_d
    return-object v3

    .line 191
    :cond_e
    invoke-virtual {v1}, Lfc/b;->a()V

    .line 192
    .line 193
    .line 194
    return-object v3
.end method

.method public y()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final z()Z
    .locals 5

    .line 1
    sget-object v0, Lcc/h;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    const-wide v2, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    return v0
.end method
