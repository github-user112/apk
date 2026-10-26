.class public final Le/a/b/b/b/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/b/b/w$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/b/d/b/o;

.field public final b:I

.field public final c:Le/a/b/d/b/h;

.field public final d:Le/a/b/b/b/a;

.field public final e:Le/a/b/b/b/r;

.field public final f:Le/a/b/b/b/w$a;

.field public final g:I

.field public h:[I

.field public final i:I

.field public j:Z


# direct methods
.method public constructor <init>(Le/a/b/d/b/o;IILe/a/b/b/a;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    iput p2, p0, Le/a/b/b/b/w;->b:I

    const/4 p2, 0x0

    iput-object p2, p0, Le/a/b/b/b/w;->c:Le/a/b/d/b/h;

    new-instance v0, Le/a/b/b/b/a;

    invoke-direct {v0, p1}, Le/a/b/b/b/a;-><init>(Le/a/b/d/b/o;)V

    iput-object v0, p0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    iput p3, p0, Le/a/b/b/b/w;->i:I

    iput-object p2, p0, Le/a/b/b/b/w;->h:[I

    const/4 p2, 0x1

    new-array v0, p2, [Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 1
    iget-object p2, p1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 2
    iget v2, p2, Le/a/b/d/b/b;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Le/a/b/d/b/b$a;

    invoke-direct {v2}, Le/a/b/d/b/b$a;-><init>()V

    invoke-virtual {p2, v2}, Le/a/b/d/b/b;->j(Le/a/b/d/b/e$b;)V

    .line 3
    iget v2, v2, Le/a/b/d/b/b$a;->a:I

    .line 4
    iput v2, p2, Le/a/b/d/b/b;->d:I

    :cond_0
    iget p2, p2, Le/a/b/d/b/b;->d:I

    .line 5
    iget-object v2, p1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 6
    new-instance v4, Le/a/b/b/b/v;

    invoke-direct {v4, v0, p2, p3}, Le/a/b/b/b/v;-><init>([ZII)V

    invoke-virtual {v2, v4}, Le/a/b/d/b/b;->j(Le/a/b/d/b/e$b;)V

    aget-boolean p2, v0, v1

    .line 7
    iput-boolean p2, p0, Le/a/b/b/b/w;->j:Z

    .line 8
    iget-object p1, p1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 9
    iget-object p2, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v0, p2

    mul-int/lit8 v7, v0, 0x3

    .line 10
    array-length p2, p2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 11
    iget-object v4, p1, Le/a/b/f/d;->b:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 12
    check-cast v4, Le/a/b/d/b/a;

    if-eqz v4, :cond_1

    .line 13
    iget-object v4, v4, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 14
    iget-object v4, v4, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v4, v4

    add-int/2addr v2, v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int v6, v7, v2

    .line 15
    iget p2, p1, Le/a/b/d/b/b;->d:I

    if-ne p2, v3, :cond_3

    new-instance p2, Le/a/b/d/b/b$a;

    invoke-direct {p2}, Le/a/b/d/b/b$a;-><init>()V

    invoke-virtual {p1, p2}, Le/a/b/d/b/b;->j(Le/a/b/d/b/e$b;)V

    .line 16
    iget p2, p2, Le/a/b/d/b/b$a;->a:I

    .line 17
    iput p2, p1, Le/a/b/d/b/b;->d:I

    :cond_3
    iget p1, p1, Le/a/b/d/b/b;->d:I

    .line 18
    iget-boolean p2, p0, Le/a/b/b/b/w;->j:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Le/a/b/b/b/w;->i:I

    :goto_1
    add-int v8, p1, v1

    iput v8, p0, Le/a/b/b/b/w;->g:I

    new-instance p1, Le/a/b/b/b/r;

    move-object v4, p1

    move-object v5, p4

    move v9, p3

    invoke-direct/range {v4 .. v9}, Le/a/b/b/b/r;-><init>(Le/a/b/b/a;IIII)V

    iput-object p1, p0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    new-instance p2, Le/a/b/b/b/w$a;

    invoke-direct {p2, p0, p1}, Le/a/b/b/b/w$a;-><init>(Le/a/b/b/b/w;Le/a/b/b/b/r;)V

    iput-object p2, p0, Le/a/b/b/b/w;->f:Le/a/b/b/b/w$a;

    return-void
.end method

.method public static a(Le/a/b/d/b/e;Le/a/b/d/b/k;)Le/a/b/d/b/l;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/b/d/b/e;->d:Le/a/b/d/b/l;

    .line 2
    iget-object p0, p0, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 3
    iget p0, p0, Le/a/b/d/b/n;->a:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    .line 4
    iget-object p0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p0, p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 5
    iget p0, p1, Le/a/b/d/b/k;->a:I

    .line 6
    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v1

    .line 7
    iget v1, v1, Le/a/b/d/b/k;->a:I

    if-ne p0, v1, :cond_1

    .line 8
    invoke-virtual {v0, v3}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object p0

    invoke-virtual {v0, v2}, Le/a/b/d/b/l;->i(I)Le/a/b/d/b/k;

    move-result-object v0

    invoke-static {p0, v0}, Le/a/b/d/b/l;->l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v0

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 9
    :cond_2
    iget-object p0, v0, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length p0, p0

    .line 10
    new-instance v1, Le/a/b/d/b/l;

    add-int/lit8 v4, p0, 0x1

    invoke-direct {v1, v4}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p0, :cond_3

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Le/a/b/f/d;->f(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    move v4, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2, p1}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    .line 11
    iget-boolean p0, v0, Le/a/b/f/i;->a:Z

    xor-int/2addr p0, v3

    if-eqz p0, :cond_4

    .line 12
    iput-boolean v2, v1, Le/a/b/f/i;->a:Z

    :cond_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
