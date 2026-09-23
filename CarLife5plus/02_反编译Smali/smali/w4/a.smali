.class public Lw4/a;
.super Landroidx/lifecycle/o0;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final c:Ln6/a;


# instance fields
.field public final b:Ls/r0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln6/a;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln6/a;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lw4/a;->c:Ln6/a;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/o0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls/r0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ls/r0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lw4/a;->b:Ls/r0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw4/a;->b:Ls/r0;

    .line 2
    .line 3
    iget v1, v0, Ls/r0;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_1

    .line 7
    .line 8
    iget-object v3, v0, Ls/r0;->b:[Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v1, :cond_0

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v5, v3, v4

    .line 15
    .line 16
    add-int/lit8 v4, v4, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput v2, v0, Ls/r0;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0, v2}, Ls/r0;->f(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/lang/ClassCastException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
