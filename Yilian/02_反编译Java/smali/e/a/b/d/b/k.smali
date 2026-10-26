.class public final Le/a/b/d/b/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/b/d/d/d;
.implements Le/a/b/f/k;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b/d/b/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/b/d/d/d;",
        "Le/a/b/f/k;",
        "Ljava/lang/Comparable<",
        "Le/a/b/d/b/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Le/a/b/d/b/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Le/a/b/d/b/k$b;


# instance fields
.field public final a:I

.field public final b:Le/a/b/d/d/d;

.field public final c:Le/a/b/d/b/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Le/a/b/d/b/k;->d:Ljava/util/HashMap;

    new-instance v0, Le/a/b/d/b/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/b/d/b/k$b;-><init>(Le/a/b/d/b/k$a;)V

    sput-object v0, Le/a/b/d/b/k;->e:Le/a/b/d/b/k$b;

    return-void
.end method

.method public constructor <init>(ILe/a/b/d/d/d;Le/a/b/d/b/g;Le/a/b/d/b/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Le/a/b/d/b/k;->a:I

    iput-object p2, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/d/b/k;->c:Le/a/b/d/b/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reg < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Le/a/b/d/b/k;ILe/a/b/d/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le/a/b/d/b/k;->f(ILe/a/b/d/d/d;Le/a/b/d/b/g;)Z

    move-result p0

    return p0
.end method

.method public static d(ILe/a/b/d/d/d;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    mul-int/lit8 p1, p1, 0x1f

    add-int/2addr p1, p0

    return p1
.end method

.method public static i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;
    .locals 3

    sget-object v0, Le/a/b/d/b/k;->d:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/a/b/d/b/k;->e:Le/a/b/d/b/k$b;

    .line 1
    iput p0, v1, Le/a/b/d/b/k$b;->a:I

    iput-object p1, v1, Le/a/b/d/b/k$b;->b:Le/a/b/d/d/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    iput-object p0, v1, Le/a/b/d/b/k$b;->c:Le/a/b/d/b/g;

    .line 2
    :try_start_1
    sget-object p1, Le/a/b/d/b/k;->d:Ljava/util/HashMap;

    sget-object v1, Le/a/b/d/b/k;->e:Le/a/b/d/b/k$b;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b/d/b/k;

    if-eqz p1, :cond_0

    monitor-exit v0

    return-object p1

    :cond_0
    sget-object p1, Le/a/b/d/b/k;->e:Le/a/b/d/b/k$b;

    if-eqz p1, :cond_1

    .line 3
    new-instance v1, Le/a/b/d/b/k;

    iget v2, p1, Le/a/b/d/b/k$b;->a:I

    iget-object p1, p1, Le/a/b/d/b/k$b;->b:Le/a/b/d/d/d;

    invoke-direct {v1, v2, p1, p0, p0}, Le/a/b/d/b/k;-><init>(ILe/a/b/d/d/d;Le/a/b/d/b/g;Le/a/b/d/b/k$a;)V

    .line 4
    sget-object p0, Le/a/b/d/b/k;->d:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a/b/d/b/k;->m(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Le/a/b/d/b/k;

    invoke-virtual {p0, p1}, Le/a/b/d/b/k;->e(Le/a/b/d/b/k;)I

    move-result p1

    return p1
.end method

.method public e(Le/a/b/d/b/k;)I
    .locals 2

    iget v0, p0, Le/a/b/d/b/k;->a:I

    iget v1, p1, Le/a/b/d/b/k;->a:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    iget-object p1, p1, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {p1}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/b/d/d/c;->b(Le/a/b/d/d/c;)I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/d/b/k;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Le/a/b/d/b/k$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/b/d/b/k$b;

    .line 1
    iget v0, p1, Le/a/b/d/b/k$b;->a:I

    .line 2
    iget-object p1, p1, Le/a/b/d/b/k$b;->b:Le/a/b/d/d/d;

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Le/a/b/d/b/k;->f(ILe/a/b/d/d/d;Le/a/b/d/b/g;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Le/a/b/d/b/k;

    iget v0, p1, Le/a/b/d/b/k;->a:I

    iget-object p1, p1, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-virtual {p0, v0, p1, v1}, Le/a/b/d/b/k;->f(ILe/a/b/d/d/d;Le/a/b/d/b/g;)Z

    move-result p1

    return p1
.end method

.method public final f(ILe/a/b/d/d/d;Le/a/b/d/b/g;)Z
    .locals 0

    iget p3, p0, Le/a/b/d/b/k;->a:I

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Le/a/b/d/b/k;)Z
    .locals 2

    invoke-virtual {p0, p1}, Le/a/b/d/b/k;->k(Le/a/b/d/b/k;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Le/a/b/d/b/k;->a:I

    iget p1, p1, Le/a/b/d/b/k;->a:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b/d/d/c;->f()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Le/a/b/d/b/k;->a:I

    iget-object v1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    .line 1
    iget v0, v0, Le/a/b/d/d/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public k(Le/a/b/d/b/k;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v0}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v0

    iget-object p1, p1, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {p1}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/b/d/d/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget v0, p0, Le/a/b/d/b/k;->a:I

    const-string v1, "v"

    .line 1
    invoke-static {v1, v0}, Le/a/c/a/a;->K(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Le/a/b/d/b/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-interface {v1}, Le/a/b/d/d/d;->getType()Le/a/b/d/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    if-eq v1, v2, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    iget-object v1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    instance-of v2, v1, Le/a/b/d/c/v;

    if-eqz v2, :cond_0

    check-cast v1, Le/a/b/d/c/v;

    invoke-virtual {v1}, Le/a/b/d/c/v;->f()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    instance-of v1, p1, Le/a/b/d/c/a;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Le/a/b/f/k;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Le/a/b/d/b/k;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Le/a/b/d/b/k;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Le/a/b/d/b/k;->o(I)Le/a/b/d/b/k;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Le/a/b/d/b/k;
    .locals 1

    iget v0, p0, Le/a/b/d/b/k;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Le/a/b/d/b/k;->b:Le/a/b/d/d/d;

    .line 1
    invoke-static {p1, v0}, Le/a/b/d/b/k;->i(ILe/a/b/d/d/d;)Le/a/b/d/b/k;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le/a/b/d/b/k;->m(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
