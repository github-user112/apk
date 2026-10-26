.class public Le/a/b/b/c/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/c/h;->k(Le/a/b/b/c/l0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/b/c/m;


# direct methods
.method public constructor <init>(Le/a/b/b/c/h;Le/a/b/b/c/m;)V
    .locals 0

    iput-object p2, p0, Le/a/b/b/c/h$a;->a:Le/a/b/b/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/b/d/c/a;)I
    .locals 5

    iget-object v0, p0, Le/a/b/b/c/h$a;->a:Le/a/b/b/c/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1
    instance-of v2, p1, Le/a/b/d/c/v;

    const-string v3, "not found"

    const-string v4, "cst == null"

    if-eqz v2, :cond_3

    iget-object v0, v0, Le/a/b/b/c/m;->f:Le/a/b/b/c/o0;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v0, v0, Le/a/b/b/c/o0;->f:Ljava/util/TreeMap;

    check-cast p1, Le/a/b/d/c/v;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Le/a/b/b/c/x;

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    throw v1

    .line 3
    :cond_3
    instance-of v2, p1, Le/a/b/d/c/w;

    if-eqz v2, :cond_7

    iget-object v0, v0, Le/a/b/b/c/m;->g:Le/a/b/b/c/q0;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    move-object v1, p1

    check-cast v1, Le/a/b/d/c/w;

    .line 5
    iget-object v1, v1, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 6
    iget-object v0, v0, Le/a/b/b/c/q0;->f:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/b/b/c/x;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    throw v1

    .line 7
    :cond_7
    instance-of v2, p1, Le/a/b/d/c/d;

    if-eqz v2, :cond_b

    iget-object v0, v0, Le/a/b/b/c/m;->j:Le/a/b/b/c/f0;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    .line 8
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v0, v0, Le/a/b/b/c/f0;->f:Ljava/util/TreeMap;

    check-cast p1, Le/a/b/d/c/d;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Le/a/b/b/c/x;

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    throw v1

    .line 9
    :cond_b
    instance-of v2, p1, Le/a/b/d/c/j;

    if-eqz v2, :cond_f

    iget-object v0, v0, Le/a/b/b/c/m;->i:Le/a/b/b/c/t;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_d

    .line 10
    invoke-virtual {v0}, Le/a/b/b/c/l0;->g()V

    iget-object v0, v0, Le/a/b/b/c/t;->f:Ljava/util/TreeMap;

    check-cast p1, Le/a/b/d/c/j;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Le/a/b/b/c/x;

    if-eqz v1, :cond_c

    goto :goto_0

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    throw v1

    :cond_f
    :goto_0
    if-nez v1, :cond_10

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_10
    invoke-virtual {v1}, Le/a/b/b/c/x;->e()I

    move-result p1

    return p1

    .line 12
    :cond_11
    throw v1
.end method
