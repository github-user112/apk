.class public Le/d/c/a/a/a/d/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Le/d/c/a/a/a/d/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    if-gt p1, v5, :cond_0

    sub-int/2addr p1, v7

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    :goto_0
    iget-object v8, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_2

    if-gt v0, v5, :cond_2

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 6

    :goto_0
    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/c/a/a/a/d/b;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iput v0, p0, Le/d/c/a/a/a/d/b;->d:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_2

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    iput v0, p0, Le/d/c/a/a/a/d/b;->e:I

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_5

    :goto_2
    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_3

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/c/a/a/a/d/b;->c:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Le/d/c/a/a/a/d/b;->g:[C

    iget v1, p0, Le/d/c/a/a/a/d/b;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_4

    iget v0, p0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v1, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    :goto_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Le/d/c/a/a/a/d/b;->e:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_a

    iget-object v0, p0, Le/d/c/a/a/a/d/b;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_a

    :cond_7
    iget-object v0, p0, Le/d/c/a/a/a/d/b;->g:[C

    iget v1, p0, Le/d/c/a/a/a/d/b;->d:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_a

    :cond_8
    iget-object v0, p0, Le/d/c/a/a/a/d/b;->g:[C

    iget v1, p0, Le/d/c/a/a/a/d/b;->d:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_a

    :cond_9
    iget v0, p0, Le/d/c/a/a/a/d/b;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Le/d/c/a/a/a/d/b;->d:I

    :cond_a
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    iget v2, p0, Le/d/c/a/a/a/d/b;->d:I

    iget v3, p0, Le/d/c/a/a/a/d/b;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public final c()C
    .locals 8

    iget v0, p0, Le/d/c/a/a/a/d/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v1, p0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0x25

    if-eq v1, v2, :cond_7

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_7

    const/16 v3, 0x5f

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_7

    const/16 v3, 0x23

    if-eq v1, v3, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1
    invoke-virtual {p0, v0}, Le/d/c/a/a/a/d/b;->a(I)I

    move-result v0

    iget v1, p0, Le/d/c/a/a/a/d/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Le/d/c/a/a/a/d/b;->c:I

    const/16 v1, 0x80

    const/16 v3, 0x3f

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0xc0

    if-lt v0, v4, :cond_6

    const/16 v4, 0xf7

    if-gt v0, v4, :cond_6

    const/16 v4, 0xdf

    if-gt v0, v4, :cond_1

    and-int/lit8 v0, v0, 0x1f

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0xef

    if-gt v0, v4, :cond_2

    const/4 v4, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    iget v6, p0, Le/d/c/a/a/a/d/b;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Le/d/c/a/a/a/d/b;->c:I

    iget v7, p0, Le/d/c/a/a/a/d/b;->b:I

    if-eq v6, v7, :cond_6

    iget-object v7, p0, Le/d/c/a/a/a/d/b;->g:[C

    aget-char v7, v7, v6

    if-eq v7, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Le/d/c/a/a/a/d/b;->c:I

    invoke-virtual {p0, v6}, Le/d/c/a/a/a/d/b;->a(I)I

    move-result v6

    iget v7, p0, Le/d/c/a/a/a/d/b;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Le/d/c/a/a/a/d/b;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_4

    goto :goto_3

    :cond_4
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    int-to-char v3, v0

    :cond_6
    :goto_3
    return v3

    .line 2
    :cond_7
    :pswitch_0
    iget-object v0, p0, Le/d/c/a/a/a/d/b;->g:[C

    iget v1, p0, Le/d/c/a/a/a/d/b;->c:I

    aget-char v0, v0, v1

    return v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected end of DN: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/d/c/a/a/a/d/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
