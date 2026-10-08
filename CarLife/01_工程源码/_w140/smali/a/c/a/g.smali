.class public abstract La/c/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/g$d;,
        La/c/a/g$c;,
        La/c/a/g$a;,
        La/c/a/g$e;,
        La/c/a/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:La/c/a/g;

.field public static final c:La/c/a/g$b;


# instance fields
.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, La/c/a/g;

    new-instance v0, La/c/a/g$d;

    sget-object v1, La/c/a/r;->b:[B

    invoke-direct {v0, v1}, La/c/a/g$d;-><init>([B)V

    sput-object v0, La/c/a/g;->b:La/c/a/g;

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.content.Context"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, La/c/a/g$e;

    invoke-direct {v0, v1}, La/c/a/g$e;-><init>(La/c/a/f;)V

    goto :goto_1

    :cond_0
    new-instance v0, La/c/a/g$a;

    invoke-direct {v0, v1}, La/c/a/g$a;-><init>(La/c/a/f;)V

    :goto_1
    sput-object v0, La/c/a/g;->c:La/c/a/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/c/a/g;->d:I

    return-void
.end method

.method public static d(Ljava/lang/String;)La/c/a/g;
    .locals 2

    new-instance v0, La/c/a/g$d;

    sget-object v1, La/c/a/r;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, La/c/a/g$d;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract c(I)B
.end method

.method public abstract e()Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f()La/c/a/h;
.end method

.method public abstract g(III)I
.end method

.method public abstract h(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, La/c/a/g;->d:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, La/c/a/g;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, La/c/a/g;->g(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, La/c/a/g;->d:I

    :cond_1
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    sget-object v0, La/c/a/r;->a:Ljava/nio/charset/Charset;

    .line 1
    invoke-virtual {p0}, La/c/a/g;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, La/c/a/g;->h(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, La/c/a/f;

    invoke-direct {v0, p0}, La/c/a/f;-><init>(La/c/a/g;)V

    return-object v0
.end method

.method public abstract j(La/c/a/e;)V
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, La/c/a/g;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
