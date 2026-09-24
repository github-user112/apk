.class public La/a/a/a/a/i/b/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/i/b/a$a;
    }
.end annotation


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:Ljava/nio/FloatBuffer;

.field public static final d:Ljava/nio/FloatBuffer;

.field public static final e:[F

.field public static final f:[F

.field public static final g:Ljava/nio/FloatBuffer;

.field public static final h:Ljava/nio/FloatBuffer;

.field public static final i:[F

.field public static final j:[F

.field public static final k:Ljava/nio/FloatBuffer;

.field public static final l:Ljava/nio/FloatBuffer;


# instance fields
.field public m:Ljava/nio/FloatBuffer;

.field public n:Ljava/nio/FloatBuffer;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:La/a/a/a/a/i/b/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, La/a/a/a/a/i/b/a;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, La/a/a/a/a/i/b/a;->b:[F

    invoke-static {v1}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, La/a/a/a/a/i/b/a;->c:Ljava/nio/FloatBuffer;

    invoke-static {v0}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, La/a/a/a/a/i/b/a;->d:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, La/a/a/a/a/i/b/a;->e:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    sput-object v2, La/a/a/a/a/i/b/a;->f:[F

    invoke-static {v1}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, La/a/a/a/a/i/b/a;->g:Ljava/nio/FloatBuffer;

    invoke-static {v2}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, La/a/a/a/a/i/b/a;->h:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, La/a/a/a/a/i/b/a;->i:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, La/a/a/a/a/i/b/a;->j:[F

    invoke-static {v1}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, La/a/a/a/a/i/b/a;->k:Ljava/nio/FloatBuffer;

    invoke-static {v0}, La/a/a/a/a/i/b/c;->c([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, La/a/a/a/a/i/b/a;->l:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(La/a/a/a/a/i/b/a$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    sget-object v0, La/a/a/a/a/i/b/a;->k:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->m:Ljava/nio/FloatBuffer;

    sget-object v0, La/a/a/a/a/i/b/a;->l:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->n:Ljava/nio/FloatBuffer;

    iput v2, p0, La/a/a/a/a/i/b/a;->p:I

    iput v1, p0, La/a/a/a/a/i/b/a;->q:I

    sget-object v0, La/a/a/a/a/i/b/a;->i:[F

    array-length v0, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, La/a/a/a/a/i/b/a;->g:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->m:Ljava/nio/FloatBuffer;

    sget-object v0, La/a/a/a/a/i/b/a;->h:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->n:Ljava/nio/FloatBuffer;

    iput v2, p0, La/a/a/a/a/i/b/a;->p:I

    iput v1, p0, La/a/a/a/a/i/b/a;->q:I

    sget-object v0, La/a/a/a/a/i/b/a;->e:[F

    array-length v0, v0

    goto :goto_0

    :cond_2
    sget-object v0, La/a/a/a/a/i/b/a;->c:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->m:Ljava/nio/FloatBuffer;

    sget-object v0, La/a/a/a/a/i/b/a;->d:Ljava/nio/FloatBuffer;

    iput-object v0, p0, La/a/a/a/a/i/b/a;->n:Ljava/nio/FloatBuffer;

    iput v2, p0, La/a/a/a/a/i/b/a;->p:I

    iput v1, p0, La/a/a/a/a/i/b/a;->q:I

    sget-object v0, La/a/a/a/a/i/b/a;->a:[F

    array-length v0, v0

    :goto_0
    div-int/2addr v0, v2

    iput v0, p0, La/a/a/a/a/i/b/a;->o:I

    iput v1, p0, La/a/a/a/a/i/b/a;->r:I

    iput-object p1, p0, La/a/a/a/a/i/b/a;->s:La/a/a/a/a/i/b/a$a;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/a/a/a/a/i/b/a;->s:La/a/a/a/a/i/b/a$a;

    if-eqz v0, :cond_0

    const-string v0, "[Drawable2d: "

    invoke-static {v0}, La/b/a/a/a;->f(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/i/b/a;->s:La/a/a/a/a/i/b/a$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[Drawable2d: ...]"

    return-object v0
.end method
