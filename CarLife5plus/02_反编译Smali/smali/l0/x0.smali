.class public final enum Ll0/x0;
.super Ljava/lang/Enum;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final enum d:Ll0/x0;

.field public static final synthetic e:[Ll0/x0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ll0/x0;

    .line 2
    .line 3
    const v4, 0x1040003

    .line 4
    .line 5
    .line 6
    const v5, 0x1010311

    .line 7
    .line 8
    .line 9
    const-string v1, "Cut"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    sget-object v3, Lo0/e;->a:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Ll0/x0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ll0/x0;

    .line 18
    .line 19
    const v5, 0x1040001

    .line 20
    .line 21
    .line 22
    const v6, 0x1010312

    .line 23
    .line 24
    .line 25
    const-string v2, "Copy"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    sget-object v4, Lo0/e;->b:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct/range {v1 .. v6}, Ll0/x0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Ll0/x0;

    .line 34
    .line 35
    const v6, 0x104000b

    .line 36
    .line 37
    .line 38
    const v7, 0x1010313

    .line 39
    .line 40
    .line 41
    const-string v3, "Paste"

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    sget-object v5, Lo0/e;->c:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct/range {v2 .. v7}, Ll0/x0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ll0/x0;

    .line 50
    .line 51
    const v7, 0x104000d

    .line 52
    .line 53
    .line 54
    const v8, 0x101037e

    .line 55
    .line 56
    .line 57
    const-string v4, "SelectAll"

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    sget-object v6, Lo0/e;->d:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-direct/range {v3 .. v8}, Ll0/x0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Ll0/x0;

    .line 66
    .line 67
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 v6, 0x1a

    .line 70
    .line 71
    if-gt v5, v6, :cond_0

    .line 72
    .line 73
    const v5, 0x7f0e001f

    .line 74
    .line 75
    .line 76
    const v8, 0x7f0e001f

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const v5, 0x104001a

    .line 81
    .line 82
    .line 83
    const v8, 0x104001a

    .line 84
    .line 85
    .line 86
    :goto_0
    const/4 v9, 0x0

    .line 87
    const-string v5, "Autofill"

    .line 88
    .line 89
    const/4 v6, 0x4

    .line 90
    sget-object v7, Lo0/e;->e:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-direct/range {v4 .. v9}, Ll0/x0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    .line 93
    .line 94
    .line 95
    sput-object v4, Ll0/x0;->d:Ll0/x0;

    .line 96
    .line 97
    const/4 v5, 0x5

    .line 98
    new-array v5, v5, [Ll0/x0;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    aput-object v0, v5, v6

    .line 102
    .line 103
    const/4 v0, 0x1

    .line 104
    aput-object v1, v5, v0

    .line 105
    .line 106
    const/4 v0, 0x2

    .line 107
    aput-object v2, v5, v0

    .line 108
    .line 109
    const/4 v0, 0x3

    .line 110
    aput-object v3, v5, v0

    .line 111
    .line 112
    const/4 v0, 0x4

    .line 113
    aput-object v4, v5, v0

    .line 114
    .line 115
    sput-object v5, Ll0/x0;->e:[Ll0/x0;

    .line 116
    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Ll0/x0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput p4, p0, Ll0/x0;->b:I

    .line 7
    .line 8
    iput p5, p0, Ll0/x0;->c:I

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ll0/x0;
    .locals 1

    .line 1
    const-class v0, Ll0/x0;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ll0/x0;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Ll0/x0;
    .locals 1

    .line 1
    sget-object v0, Ll0/x0;->e:[Ll0/x0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Ll0/x0;

    .line 8
    .line 9
    return-object v0
.end method
