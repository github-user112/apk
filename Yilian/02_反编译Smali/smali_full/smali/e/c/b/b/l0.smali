.class public final Le/c/b/b/l0;
.super Le/c/b/b/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/c/b/b/l0$b;,
        Le/c/b/b/l0$c;,
        Le/c/b/b/l0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Le/c/b/b/t<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final g:Le/c/b/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/t<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient d:[I

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Le/c/b/b/l0;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Le/c/b/b/l0;-><init>([I[Ljava/lang/Object;I)V

    sput-object v0, Le/c/b/b/l0;->g:Le/c/b/b/t;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Le/c/b/b/t;-><init>()V

    iput-object p1, p0, Le/c/b/b/l0;->d:[I

    iput-object p2, p0, Le/c/b/b/l0;->e:[Ljava/lang/Object;

    iput p3, p0, Le/c/b/b/l0;->f:I

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Le/c/b/b/l0;->d:[I

    iget-object v1, p0, Le/c/b/b/l0;->e:[Ljava/lang/Object;

    iget v2, p0, Le/c/b/b/l0;->f:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v0, 0x0

    .line 1
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object v3, v1, v4

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, v0

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Le/c/b/a/f;->p(I)I

    move-result v5

    :goto_0
    and-int/2addr v5, v2

    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    aget-object v3, v1, p1

    :cond_4
    :goto_1
    return-object v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Le/c/b/b/l0;->f:I

    return v0
.end method
