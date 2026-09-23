.class public final Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TextEmphasis$Position;
    }
.end annotation


# static fields
.field public static final MARK_FILL_VALUES:Le/c/b/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MARK_SHAPE_AUTO:I = -0x1

.field public static final MARK_SHAPE_VALUES:Le/c/b/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_OUTSIDE:I = -0x2

.field public static final POSITION_VALUES:Le/c/b/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SINGLE_STYLE_VALUES:Le/c/b/b/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/c/b/b/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITESPACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final markFill:I

.field public final markShape:I

.field public final position:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "none"

    aput-object v4, v1, v3

    .line 1
    invoke-static {v0, v1}, Le/c/b/b/u;->i(I[Ljava/lang/Object;)Le/c/b/b/u;

    move-result-object v1

    .line 2
    sput-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Le/c/b/b/u;

    const-string v1, "dot"

    const-string v4, "sesame"

    const-string v5, "circle"

    invoke-static {v1, v4, v5}, Le/c/b/b/u;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le/c/b/b/u;

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Le/c/b/b/u;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "filled"

    aput-object v4, v1, v2

    const-string v2, "open"

    aput-object v2, v1, v3

    .line 3
    invoke-static {v0, v1}, Le/c/b/b/u;->i(I[Ljava/lang/Object;)Le/c/b/b/u;

    move-result-object v0

    .line 4
    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Le/c/b/b/u;

    const-string v0, "after"

    const-string v1, "before"

    const-string v2, "outside"

    invoke-static {v0, v1, v2}, Le/c/b/b/u;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Le/c/b/b/u;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Le/c/b/b/u;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markShape:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->markFill:I

    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->position:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/s/y;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Le/c/b/b/u;->i(I[Ljava/lang/Object;)Le/c/b/b/u;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 2
    new-instance v0, Le/c/b/b/u0;

    invoke-direct {v0, p0}, Le/c/b/b/u0;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 3
    :cond_3
    sget-object p0, Le/c/b/b/m0;->h:Le/c/b/b/m0;

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->parseWords(Le/c/b/b/u;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    move-result-object p0

    return-object p0
.end method

.method public static parseWords(Le/c/b/b/u;)Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/c/b/b/u<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->POSITION_VALUES:Le/c/b/b/u;

    invoke-static {v0, p0}, Le/c/b/b/j;->c(Ljava/util/Set;Ljava/util/Set;)Le/c/b/b/t0;

    move-result-object v0

    const-string v1, "outside"

    invoke-static {v0, v1}, Le/c/b/a/f;->k(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5305c081

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2

    const v3, -0x41ecca5b

    if-eq v2, v3, :cond_1

    const v1, 0x58705dc

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, -0x2

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    :goto_2
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->SINGLE_STYLE_VALUES:Le/c/b/b/u;

    invoke-static {v1, p0}, Le/c/b/b/j;->c(Ljava/util/Set;Ljava/util/Set;)Le/c/b/b/t0;

    move-result-object v1

    check-cast v1, Le/c/b/b/r0;

    invoke-virtual {v1}, Le/c/b/b/r0;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1
    new-instance p0, Le/c/b/b/q0;

    invoke-direct {p0, v1}, Le/c/b/b/q0;-><init>(Le/c/b/b/r0;)V

    .line 2
    invoke-virtual {p0}, Le/c/b/b/b;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_7

    const v2, 0x33af38

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v7, -0x1

    :goto_4
    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object p0

    :cond_a
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_FILL_VALUES:Le/c/b/b/u;

    invoke-static {v1, p0}, Le/c/b/b/j;->c(Ljava/util/Set;Ljava/util/Set;)Le/c/b/b/t0;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;->MARK_SHAPE_VALUES:Le/c/b/b/u;

    invoke-static {v2, p0}, Le/c/b/b/j;->c(Ljava/util/Set;Ljava/util/Set;)Le/c/b/b/t0;

    move-result-object p0

    move-object v2, v1

    check-cast v2, Le/c/b/b/r0;

    invoke-virtual {v2}, Le/c/b/b/r0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, p0

    check-cast v2, Le/c/b/b/r0;

    invoke-virtual {v2}, Le/c/b/b/r0;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object p0

    :cond_b
    const-string v2, "filled"

    invoke-static {v1, v2}, Le/c/b/a/f;->k(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x4bf7529e

    if-eq v3, v8, :cond_d

    const v2, 0x34264a

    if-eq v3, v2, :cond_c

    goto :goto_6

    :cond_c
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v1, -0x1

    :goto_7
    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x2

    :goto_8
    const-string v2, "circle"

    invoke-static {p0, v2}, Le/c/b/a/f;->k(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x51134330

    if-eq v3, v8, :cond_12

    const v2, -0x35fdaa48    # -2135406.0f

    if-eq v3, v2, :cond_11

    const v2, 0x18549

    if-eq v3, v2, :cond_10

    goto :goto_9

    :cond_10
    const-string v2, "dot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v5, 0x0

    goto :goto_9

    :cond_11
    const-string v2, "sesame"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v5, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v5, 0x2

    :cond_13
    :goto_9
    if-eqz v5, :cond_15

    if-eq v5, v7, :cond_14

    const/4 v4, 0x1

    goto :goto_a

    :cond_14
    const/4 v4, 0x3

    :cond_15
    :goto_a
    new-instance p0, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;

    invoke-direct {p0, v4, v1, v0}, Lcom/google/android/exoplayer2/text/ttml/TextEmphasis;-><init>(III)V

    return-object p0
.end method
