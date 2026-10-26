.class public final Le/a/b/b/b/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Le/a/b/b/b/n;

.field public final e:Z


# direct methods
.method public constructor <init>(IIILe/a/b/b/b/n;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld/s/y;->R(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ld/s/y;->R(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Ld/s/y;->R(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Le/a/b/b/b/j;->a:I

    iput p2, p0, Le/a/b/b/b/j;->b:I

    iput p3, p0, Le/a/b/b/b/j;->c:I

    iput-object p4, p0, Le/a/b/b/b/j;->d:Le/a/b/b/b/n;

    iput-boolean p5, p0, Le/a/b/b/b/j;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus nextOpcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus family"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget v0, p0, Le/a/b/b/b/j;->a:I

    invoke-static {v0}, Le/a/b/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Le/a/b/b/b/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
