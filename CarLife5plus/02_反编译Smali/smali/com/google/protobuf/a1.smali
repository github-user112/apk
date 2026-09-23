.class public abstract Lcom/google/protobuf/a1;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final a:Lsun/misc/Unsafe;

.field public static final b:Z

.field public static final c:Z

.field public static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    invoke-static {}, Lcom/google/protobuf/a1;->e()Lsun/misc/Unsafe;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const-string v3, "copyMemory"

    .line 10
    .line 11
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 12
    .line 13
    const-string v5, "putByte"

    .line 14
    .line 15
    const-class v6, Ljava/lang/Object;

    .line 16
    .line 17
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const-string v8, "getByte"

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    const-string v10, "getLong"

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v12, "objectFieldOffset"

    .line 32
    .line 33
    new-array v13, v9, [Ljava/lang/Class;

    .line 34
    .line 35
    const-class v14, Ljava/lang/reflect/Field;

    .line 36
    .line 37
    aput-object v14, v13, v11

    .line 38
    .line 39
    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    new-array v12, v9, [Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v7, v12, v11

    .line 45
    .line 46
    invoke-virtual {v0, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    new-array v12, v2, [Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v6, v12, v11

    .line 52
    .line 53
    aput-object v7, v12, v9

    .line 54
    .line 55
    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    new-array v12, v2, [Ljava/lang/Class;

    .line 59
    .line 60
    aput-object v7, v12, v11

    .line 61
    .line 62
    aput-object v4, v12, v9

    .line 63
    .line 64
    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    new-array v12, v9, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v7, v12, v11

    .line 70
    .line 71
    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    new-array v12, v1, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v7, v12, v11

    .line 77
    .line 78
    aput-object v7, v12, v9

    .line 79
    .line 80
    aput-object v7, v12, v2

    .line 81
    .line 82
    invoke-virtual {v0, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    nop

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    sput-boolean v0, Lcom/google/protobuf/a1;->b:Z

    .line 90
    .line 91
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v12, "arrayBaseOffset"

    .line 100
    .line 101
    new-array v13, v9, [Ljava/lang/Class;

    .line 102
    .line 103
    const-class v14, Ljava/lang/Class;

    .line 104
    .line 105
    aput-object v14, v13, v11

    .line 106
    .line 107
    invoke-virtual {v0, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    new-array v12, v2, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object v6, v12, v11

    .line 113
    .line 114
    aput-object v7, v12, v9

    .line 115
    .line 116
    invoke-virtual {v0, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    .line 118
    .line 119
    new-array v8, v1, [Ljava/lang/Class;

    .line 120
    .line 121
    aput-object v6, v8, v11

    .line 122
    .line 123
    aput-object v7, v8, v9

    .line 124
    .line 125
    aput-object v4, v8, v2

    .line 126
    .line 127
    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    .line 129
    .line 130
    new-array v4, v2, [Ljava/lang/Class;

    .line 131
    .line 132
    aput-object v6, v4, v11

    .line 133
    .line 134
    aput-object v7, v4, v9

    .line 135
    .line 136
    invoke-virtual {v0, v10, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x5

    .line 140
    new-array v4, v4, [Ljava/lang/Class;

    .line 141
    .line 142
    aput-object v6, v4, v11

    .line 143
    .line 144
    aput-object v7, v4, v9

    .line 145
    .line 146
    aput-object v6, v4, v2

    .line 147
    .line 148
    aput-object v7, v4, v1

    .line 149
    .line 150
    const/4 v1, 0x4

    .line 151
    aput-object v7, v4, v1

    .line 152
    .line 153
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .line 155
    .line 156
    const/4 v11, 0x1

    .line 157
    :catchall_1
    :cond_1
    sput-boolean v11, Lcom/google/protobuf/a1;->c:Z

    .line 158
    .line 159
    invoke-static {}, Lcom/google/protobuf/a1;->a()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    int-to-long v0, v0

    .line 164
    sput-wide v0, Lcom/google/protobuf/a1;->d:J

    .line 165
    .line 166
    const-class v0, Ljava/nio/Buffer;

    .line 167
    .line 168
    const-string v1, "address"

    .line 169
    .line 170
    :try_start_2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :catchall_2
    const/4 v0, 0x0

    .line 179
    :goto_1
    invoke-static {v0}, Lcom/google/protobuf/a1;->b(Ljava/lang/reflect/Field;)V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/google/protobuf/a1;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 6
    .line 7
    const-class v1, [B

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    return v0
.end method

.method public static b(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public static c([BJ)B
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static d([BJ)J
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public static e()Lsun/misc/Unsafe;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/protobuf/z0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    return-object v0
.end method

.method public static f([BJB)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/a1;->a:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
