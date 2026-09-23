.class public final Lf/a/j/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/j/d$b;,
        Lf/a/j/d$a;,
        Lf/a/j/d$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/a/j/k<",
            "*>;",
            "Lf/a/j/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ClassLoader;

.field public c:Le/a/b/b/c/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lf/a/j/d;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lf/a/j/h;I)Lf/a/j/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/h<",
            "**>;I)",
            "Lf/a/j/b;"
        }
    .end annotation

    iget-object v0, p1, Lf/a/j/h;->a:Lf/a/j/k;

    invoke-virtual {p0, v0}, Lf/a/j/d;->e(Lf/a/j/k;)Lf/a/j/d$c;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lf/a/j/d$c;->i:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    and-int/lit8 v1, p2, -0x40

    if-nez v1, :cond_3

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_0

    and-int/lit8 p2, p2, -0x21

    const/high16 v1, 0x20000

    or-int/2addr p2, v1

    .line 3
    :cond_0
    iget-object v1, p1, Lf/a/j/h;->c:Ljava/lang/String;

    const-string v2, "<init>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p1, Lf/a/j/h;->c:Ljava/lang/String;

    const-string v2, "<clinit>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    .line 5
    :cond_2
    new-instance v1, Lf/a/j/d$b;

    invoke-direct {v1, p1, p2}, Lf/a/j/d$b;-><init>(Lf/a/j/h;I)V

    .line 6
    iget-object p2, v0, Lf/a/j/d$c;->i:Ljava/util/Map;

    .line 7
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, v1, Lf/a/j/d$b;->c:Lf/a/j/b;

    return-object p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected flag: "

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already declared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Lf/a/j/e;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/e<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object p3, p1, Lf/a/j/e;->a:Lf/a/j/k;

    invoke-virtual {p0, p3}, Lf/a/j/d;->e(Lf/a/j/k;)Lf/a/j/d$c;

    move-result-object p3

    .line 1
    iget-object v0, p3, Lf/a/j/d$c;->h:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit16 v0, p2, -0xe0

    if-nez v0, :cond_0

    new-instance v0, Lf/a/j/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lf/a/j/d$a;-><init>(Lf/a/j/e;ILjava/lang/Object;)V

    .line 3
    iget-object p2, p3, Lf/a/j/d$c;->h:Ljava/util/Map;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unexpected flag: "

    invoke-static {p3}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already declared: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "dexmaker.dexcache"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v2, Lf/a/j/a;

    invoke-direct {v2}, Lf/a/j/a;-><init>()V

    .line 1
    :try_start_0
    const-class v4, Lf/a/j/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "dalvik.system.PathClassLoader"

    .line 2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lf/a/j/a;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lf/a/j/a;->b(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_1

    aget-object v2, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_2

    const-string v2, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    .line 3
    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    invoke-static {}, Lnet/easyconn/FrameworkApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "dx"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dexCache is null, getDir ret dexCache = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/e/a/g;->a(Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Ljava/io/File;

    .line 4
    iget-object v5, v1, Lf/a/j/d;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v7, v5, [I

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf/a/j/k;

    invoke-virtual {v1, v9}, Lf/a/j/d;->e(Lf/a/j/k;)Lf/a/j/d$c;

    move-result-object v9

    .line 5
    iget-object v10, v9, Lf/a/j/d$c;->i:Ljava/util/Map;

    .line 6
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 7
    iget-object v9, v9, Lf/a/j/d$c;->d:Lf/a/j/k;

    if-eqz v9, :cond_4

    add-int/lit8 v11, v8, 0x1

    .line 8
    invoke-virtual {v9}, Lf/a/j/k;->hashCode()I

    move-result v9

    mul-int/lit8 v9, v9, 0x1f

    invoke-interface {v10}, Ljava/util/Set;->hashCode()I

    move-result v10

    add-int/2addr v10, v9

    aput v10, v7, v8

    move v8, v11

    goto :goto_2

    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_3
    if-ge v6, v5, :cond_6

    aget v9, v7, v6

    mul-int/lit8 v8, v8, 0x1f

    add-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generated_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v2, v4, v0}, Lf/a/j/d;->d(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 10
    :cond_7
    iget-object v5, v1, Lf/a/j/d;->c:Le/a/b/b/c/m;

    const/16 v6, 0xd

    if-nez v5, :cond_8

    new-instance v5, Le/a/b/b/a;

    invoke-direct {v5}, Le/a/b/b/a;-><init>()V

    iput v6, v5, Le/a/b/b/a;->b:I

    new-instance v7, Le/a/b/b/c/m;

    invoke-direct {v7, v5}, Le/a/b/b/c/m;-><init>(Le/a/b/b/a;)V

    iput-object v7, v1, Lf/a/j/d;->c:Le/a/b/b/c/m;

    :cond_8
    iget-object v5, v1, Lf/a/j/d;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/a/j/d$c;

    iget-object v8, v1, Lf/a/j/d;->c:Le/a/b/b/c/m;

    .line 11
    iget-boolean v9, v7, Lf/a/j/d$c;->b:Z

    if-eqz v9, :cond_4c

    new-instance v9, Le/a/b/b/a;

    invoke-direct {v9}, Le/a/b/b/a;-><init>()V

    iput v6, v9, Le/a/b/b/a;->b:I

    iget-object v6, v7, Lf/a/j/d$c;->a:Lf/a/j/k;

    iget-object v11, v6, Lf/a/j/k;->c:Le/a/b/d/c/w;

    iget-object v6, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    if-nez v6, :cond_48

    new-instance v6, Le/a/b/b/c/f;

    iget v12, v7, Lf/a/j/d$c;->c:I

    iget-object v10, v7, Lf/a/j/d$c;->d:Lf/a/j/k;

    iget-object v13, v10, Lf/a/j/k;->c:Le/a/b/d/c/w;

    iget-object v10, v7, Lf/a/j/d$c;->f:Lf/a/j/l;

    iget-object v14, v10, Lf/a/j/l;->b:Le/a/b/d/d/b;

    new-instance v15, Le/a/b/d/c/v;

    iget-object v10, v7, Lf/a/j/d$c;->e:Ljava/lang/String;

    invoke-direct {v15, v10}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    move-object v10, v6

    invoke-direct/range {v10 .. v15}, Le/a/b/b/c/f;-><init>(Le/a/b/d/c/w;ILe/a/b/d/c/w;Le/a/b/d/d/e;Le/a/b/d/c/v;)V

    iput-object v6, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    iget-object v6, v7, Lf/a/j/d$c;->i:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lf/a/j/d$b;

    .line 12
    new-instance v11, Le/a/b/d/b/o;

    iget-object v12, v10, Lf/a/j/d$b;->c:Lf/a/j/b;

    .line 13
    iget-boolean v13, v12, Lf/a/j/b;->d:Z

    if-nez v13, :cond_9

    invoke-virtual {v12}, Lf/a/j/b;->g()V

    .line 14
    :cond_9
    iget-object v13, v12, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/a/j/f;

    invoke-virtual {v15}, Lf/a/j/f;->a()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_a
    move-object/from16 p2, v5

    .line 15
    :goto_7
    iget-object v5, v15, Lf/a/j/f;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    :goto_8
    iget-object v5, v15, Lf/a/j/f;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/a/j/f;

    invoke-virtual {v5}, Lf/a/j/f;->a()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v15, Lf/a/j/f;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lf/a/j/f;

    iget-object v6, v6, Lf/a/j/f;->e:Lf/a/j/f;

    invoke-interface {v5, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    goto :goto_8

    :cond_b
    move-object/from16 v17, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    move-object/from16 v17, v6

    :goto_9
    iget-object v3, v15, Lf/a/j/f;->e:Lf/a/j/f;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lf/a/j/f;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v15, Lf/a/j/f;->e:Lf/a/j/f;

    iget-object v3, v3, Lf/a/j/f;->e:Lf/a/j/f;

    iput-object v3, v15, Lf/a/j/f;->e:Lf/a/j/f;

    goto :goto_9

    :cond_d
    :goto_a
    iget-object v3, v15, Lf/a/j/f;->f:Lf/a/j/f;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lf/a/j/f;->a()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v15, Lf/a/j/f;->f:Lf/a/j/f;

    iget-object v3, v3, Lf/a/j/f;->e:Lf/a/j/f;

    iput-object v3, v15, Lf/a/j/f;->f:Lf/a/j/f;

    goto :goto_a

    :cond_e
    add-int/lit8 v3, v14, 0x1

    .line 16
    iput v14, v15, Lf/a/j/f;->g:I

    const/4 v5, 0x0

    move-object/from16 v5, p2

    move v14, v3

    move-object/from16 v6, v17

    const/4 v3, 0x0

    goto :goto_6

    :cond_f
    move-object/from16 p2, v5

    move-object/from16 v17, v6

    .line 17
    new-instance v3, Le/a/b/d/b/b;

    iget-object v5, v12, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Le/a/b/d/b/b;-><init>(I)V

    const/4 v5, 0x0

    :goto_b
    iget-object v6, v12, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_16

    iget-object v6, v12, Lf/a/j/b;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/a/j/f;

    .line 18
    new-instance v13, Le/a/b/d/b/f;

    iget-object v14, v6, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Le/a/b/d/b/f;-><init>(I)V

    const/4 v14, 0x0

    :goto_c
    iget-object v15, v6, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_10

    iget-object v15, v6, Lf/a/j/f;->a:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Le/a/b/d/b/e;

    .line 19
    invoke-virtual {v13, v14, v15}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_10
    const/4 v14, 0x0

    .line 20
    iput-boolean v14, v13, Le/a/b/f/i;->a:Z

    .line 21
    new-instance v14, Le/a/b/f/f;

    const/4 v15, 0x4

    .line 22
    invoke-direct {v14, v15}, Le/a/b/f/f;-><init>(I)V

    .line 23
    iget-object v15, v6, Lf/a/j/f;->d:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    check-cast v12, Lf/a/j/f;

    iget v12, v12, Lf/a/j/f;->g:I

    invoke-virtual {v14, v12}, Le/a/b/f/f;->f(I)V

    move-object/from16 v12, v18

    goto :goto_d

    :cond_11
    move-object/from16 v18, v12

    iget-object v12, v6, Lf/a/j/f;->e:Lf/a/j/f;

    if-eqz v12, :cond_12

    iget v12, v12, Lf/a/j/f;->g:I

    invoke-virtual {v14, v12}, Le/a/b/f/f;->f(I)V

    goto :goto_e

    :cond_12
    const/4 v12, -0x1

    :goto_e
    iget-object v15, v6, Lf/a/j/f;->f:Lf/a/j/f;

    if-eqz v15, :cond_13

    iget v15, v15, Lf/a/j/f;->g:I

    invoke-virtual {v14, v15}, Le/a/b/f/f;->f(I)V

    :cond_13
    const/4 v15, 0x0

    .line 24
    iput-boolean v15, v14, Le/a/b/f/i;->a:Z

    .line 25
    new-instance v15, Le/a/b/d/b/a;

    iget v6, v6, Lf/a/j/f;->g:I

    invoke-direct {v15, v6, v13, v14, v12}, Le/a/b/d/b/a;-><init>(ILe/a/b/d/b/f;Le/a/b/f/f;I)V

    .line 26
    iget-object v6, v3, Le/a/b/f/d;->b:[Ljava/lang/Object;

    aget-object v6, v6, v5

    .line 27
    check-cast v6, Le/a/b/f/g;

    invoke-virtual {v3, v5, v15}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    if-eqz v6, :cond_14

    invoke-interface {v6}, Le/a/b/f/g;->a()I

    move-result v6

    .line 28
    iget-object v12, v3, Le/a/b/f/h;->c:Le/a/b/f/f;

    const/4 v13, -0x1

    invoke-virtual {v12, v6, v13}, Le/a/b/f/f;->h(II)V

    .line 29
    :cond_14
    iget v6, v15, Le/a/b/d/b/a;->a:I

    .line 30
    iget-object v12, v3, Le/a/b/f/h;->c:Le/a/b/f/f;

    .line 31
    iget v12, v12, Le/a/b/f/f;->c:I

    const/4 v13, 0x0

    :goto_f
    sub-int v14, v6, v12

    if-gt v13, v14, :cond_15

    .line 32
    iget-object v14, v3, Le/a/b/f/h;->c:Le/a/b/f/f;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Le/a/b/f/f;->f(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_15
    const/4 v12, -0x1

    iget-object v13, v3, Le/a/b/f/h;->c:Le/a/b/f/f;

    invoke-virtual {v13, v6, v5}, Le/a/b/f/f;->h(II)V

    .line 33
    iput v12, v3, Le/a/b/d/b/b;->d:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v18

    goto/16 :goto_b

    :cond_16
    const/4 v5, 0x0

    .line 34
    invoke-direct {v11, v3, v5}, Le/a/b/d/b/o;-><init>(Le/a/b/d/b/b;I)V

    iget-object v3, v10, Lf/a/j/d$b;->c:Lf/a/j/b;

    .line 35
    iget-object v3, v3, Lf/a/j/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/a/j/g;

    .line 36
    iget-object v6, v6, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v6, v6, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-virtual {v6}, Le/a/b/d/d/c;->f()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_10

    .line 37
    :cond_17
    new-instance v3, Le/a/b/b/b/w;

    const/4 v6, 0x1

    invoke-direct {v3, v11, v6, v5, v9}, Le/a/b/b/b/w;-><init>(Le/a/b/d/b/o;IILe/a/b/b/a;)V

    .line 38
    iget-object v5, v3, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    .line 39
    iget-object v5, v5, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 40
    iget-object v6, v5, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v6, v6

    .line 41
    invoke-virtual {v5}, Le/a/b/f/h;->i()I

    move-result v11

    add-int/lit8 v11, v11, 0x1f

    shr-int/lit8 v11, v11, 0x5

    .line 42
    new-array v12, v11, [I

    new-array v13, v11, [I

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v6, :cond_18

    .line 43
    invoke-virtual {v5, v14}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v15

    .line 44
    iget v15, v15, Le/a/b/d/b/a;->a:I

    shr-int/lit8 v16, v15, 0x5

    and-int/lit8 v15, v15, 0x1f

    const/16 v18, 0x1

    shl-int v15, v18, v15

    .line 45
    aget v18, v12, v16

    or-int v15, v15, v18

    aput v15, v12, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 46
    :cond_18
    new-array v14, v6, [I

    iget-object v15, v3, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    .line 47
    iget v15, v15, Le/a/b/d/b/o;->b:I

    const/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v16, v9

    const/4 v0, 0x0

    const/4 v9, -0x1

    :goto_12
    if-eq v15, v9, :cond_33

    .line 48
    :goto_13
    iget-object v9, v3, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    move-object/from16 v18, v4

    .line 49
    iget-object v4, v9, Le/a/b/d/b/o;->d:Le/a/b/f/f;

    if-nez v4, :cond_22

    .line 50
    iget-object v4, v9, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    invoke-virtual {v4}, Le/a/b/f/h;->i()I

    move-result v4

    move-object/from16 v19, v2

    new-array v2, v4, [Le/a/b/f/f;

    new-instance v1, Le/a/b/f/f;

    move-object/from16 v20, v8

    const/16 v8, 0xa

    invoke-direct {v1, v8}, Le/a/b/f/f;-><init>(I)V

    iget-object v8, v9, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    .line 51
    iget-object v8, v8, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v8, v8

    const/16 v21, 0x0

    move-object/from16 v22, v7

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v8, :cond_1c

    move/from16 v21, v8

    .line 52
    iget-object v8, v9, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    invoke-virtual {v8, v7}, Le/a/b/d/b/b;->k(I)Le/a/b/d/b/a;

    move-result-object v8

    move-object/from16 v23, v10

    .line 53
    iget v10, v8, Le/a/b/d/b/a;->a:I

    .line 54
    iget-object v8, v8, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    move-object/from16 v24, v3

    .line 55
    iget v3, v8, Le/a/b/f/f;->c:I

    if-nez v3, :cond_19

    .line 56
    invoke-virtual {v1, v10}, Le/a/b/f/f;->f(I)V

    move/from16 v26, v0

    goto :goto_17

    :cond_19
    const/16 v25, 0x0

    move/from16 v26, v0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_1b

    invoke-virtual {v8, v0}, Le/a/b/f/f;->g(I)I

    move-result v25

    aget-object v27, v2, v25

    move/from16 v28, v3

    if-nez v27, :cond_1a

    new-instance v3, Le/a/b/f/f;

    move-object/from16 v29, v8

    const/16 v8, 0xa

    invoke-direct {v3, v8}, Le/a/b/f/f;-><init>(I)V

    aput-object v3, v2, v25

    goto :goto_16

    :cond_1a
    move-object/from16 v29, v8

    move-object/from16 v3, v27

    :goto_16
    invoke-virtual {v3, v10}, Le/a/b/f/f;->f(I)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v28

    move-object/from16 v8, v29

    goto :goto_15

    :cond_1b
    :goto_17
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v21

    move-object/from16 v10, v23

    move-object/from16 v3, v24

    move/from16 v0, v26

    goto :goto_14

    :cond_1c
    move/from16 v26, v0

    move-object/from16 v24, v3

    move-object/from16 v23, v10

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v4, :cond_1f

    aget-object v3, v2, v0

    if-eqz v3, :cond_1e

    .line 57
    invoke-virtual {v3}, Le/a/b/f/i;->d()V

    iget-boolean v7, v3, Le/a/b/f/f;->d:Z

    if-nez v7, :cond_1d

    iget-object v7, v3, Le/a/b/f/f;->b:[I

    iget v8, v3, Le/a/b/f/f;->c:I

    const/4 v10, 0x0

    invoke-static {v7, v10, v8}, Ljava/util/Arrays;->sort([III)V

    const/4 v7, 0x1

    iput-boolean v7, v3, Le/a/b/f/f;->d:Z

    goto :goto_19

    :cond_1d
    const/4 v10, 0x0

    .line 58
    :goto_19
    iput-boolean v10, v3, Le/a/b/f/i;->a:Z

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1f
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1}, Le/a/b/f/i;->d()V

    iget-boolean v3, v1, Le/a/b/f/f;->d:Z

    if-nez v3, :cond_20

    iget-object v3, v1, Le/a/b/f/f;->b:[I

    iget v4, v1, Le/a/b/f/f;->c:I

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->sort([III)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Le/a/b/f/f;->d:Z

    .line 60
    :cond_20
    iput-boolean v0, v1, Le/a/b/f/i;->a:Z

    .line 61
    iget v0, v9, Le/a/b/d/b/o;->b:I

    aget-object v3, v2, v0

    if-nez v3, :cond_21

    sget-object v3, Le/a/b/f/f;->e:Le/a/b/f/f;

    aput-object v3, v2, v0

    :cond_21
    iput-object v2, v9, Le/a/b/d/b/o;->c:[Le/a/b/f/f;

    iput-object v1, v9, Le/a/b/d/b/o;->d:Le/a/b/f/f;

    goto :goto_1a

    :cond_22
    move/from16 v26, v0

    move-object/from16 v19, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v10

    .line 62
    :goto_1a
    iget-object v0, v9, Le/a/b/d/b/o;->c:[Le/a/b/f/f;

    aget-object v0, v0, v15

    if-eqz v0, :cond_32

    .line 63
    iget v1, v0, Le/a/b/f/f;->c:I

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_26

    .line 64
    invoke-virtual {v0, v2}, Le/a/b/f/f;->g(I)I

    move-result v3

    invoke-static {v13, v3}, Ld/s/y;->z([II)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_1d

    :cond_23
    invoke-static {v12, v3}, Ld/s/y;->z([II)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_1c

    :cond_24
    invoke-virtual {v5, v3}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v4

    .line 65
    iget v4, v4, Le/a/b/d/b/a;->d:I

    if-ne v4, v15, :cond_25

    shr-int/lit8 v0, v3, 0x5

    and-int/lit8 v1, v3, 0x1f

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 66
    aget v2, v13, v0

    or-int/2addr v1, v2

    aput v1, v13, v0

    move-object/from16 v1, p0

    move v15, v3

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v10, v23

    move-object/from16 v3, v24

    move/from16 v0, v26

    goto/16 :goto_13

    :cond_25
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_26
    :goto_1d
    move/from16 v0, v26

    :goto_1e
    const/4 v1, -0x1

    :goto_1f
    if-eq v15, v1, :cond_2e

    shr-int/lit8 v2, v15, 0x5

    and-int/lit8 v3, v15, 0x1f

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 67
    aget v4, v12, v2

    xor-int/2addr v1, v3

    and-int v3, v1, v4

    aput v3, v12, v2

    aget v3, v13, v2

    and-int/2addr v1, v3

    aput v1, v13, v2

    .line 68
    aput v15, v14, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v15}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v1

    .line 69
    iget v2, v1, Le/a/b/d/b/a;->d:I

    .line 70
    iget-object v3, v1, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    .line 71
    iget v4, v3, Le/a/b/f/f;->c:I

    if-eqz v4, :cond_28

    const/4 v7, 0x1

    if-eq v4, v7, :cond_27

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    goto :goto_20

    :cond_27
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v3, v2}, Le/a/b/f/f;->g(I)I

    move-result v2

    :goto_20
    invoke-virtual {v5, v2}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v2

    goto :goto_21

    :cond_28
    const/4 v2, 0x0

    :goto_21
    if-nez v2, :cond_29

    goto :goto_23

    .line 73
    :cond_29
    iget v15, v2, Le/a/b/d/b/a;->a:I

    .line 74
    iget v2, v1, Le/a/b/d/b/a;->d:I

    .line 75
    invoke-static {v12, v15}, Ld/s/y;->z([II)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_1e

    :cond_2a
    if-eq v2, v15, :cond_2b

    if-ltz v2, :cond_2b

    invoke-static {v12, v2}, Ld/s/y;->z([II)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v15, v2

    goto :goto_1e

    .line 76
    :cond_2b
    iget-object v1, v1, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    .line 77
    iget v2, v1, Le/a/b/f/f;->c:I

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_2d

    .line 78
    invoke-virtual {v1, v3}, Le/a/b/f/f;->g(I)I

    move-result v15

    invoke-static {v12, v15}, Ld/s/y;->z([II)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_1e

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_2d
    const/4 v1, -0x1

    const/4 v15, -0x1

    goto :goto_1f

    :cond_2e
    :goto_23
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v11, :cond_31

    .line 79
    aget v2, v12, v1

    if-eqz v2, :cond_30

    and-int/lit8 v2, v2, -0x1

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2f

    const/4 v2, -0x1

    :cond_2f
    if-ltz v2, :cond_30

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v2

    move v15, v1

    goto :goto_25

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_31
    const/4 v1, -0x1

    const/4 v15, -0x1

    :goto_25
    const/4 v9, -0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v10, v23

    move-object/from16 v3, v24

    goto/16 :goto_12

    .line 81
    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no such block: "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Ld/s/y;->e0(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    move-object/from16 v19, v2

    move-object/from16 v24, v3

    move-object/from16 v18, v4

    move-object/from16 v22, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v10

    if-ne v0, v6, :cond_41

    move-object/from16 v0, v24

    .line 82
    iput-object v14, v0, Le/a/b/b/b/w;->h:[I

    .line 83
    iget-object v1, v0, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    .line 84
    iget-object v1, v1, Le/a/b/d/b/o;->a:Le/a/b/d/b/b;

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v6, :cond_3a

    add-int/lit8 v3, v2, 0x1

    if-ne v3, v6, :cond_34

    const/4 v4, -0x1

    goto :goto_27

    .line 85
    :cond_34
    aget v4, v14, v3

    :goto_27
    aget v2, v14, v2

    invoke-virtual {v1, v2}, Le/a/b/d/b/b;->l(I)Le/a/b/d/b/a;

    move-result-object v2

    .line 86
    iget-object v5, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 87
    iget-object v5, v5, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    .line 88
    iget v7, v2, Le/a/b/d/b/a;->a:I

    .line 89
    aget-object v5, v5, v7

    .line 90
    iget-object v7, v0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    .line 91
    iget-object v7, v7, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {v7, v5}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    .line 92
    iget-object v5, v0, Le/a/b/b/b/w;->f:Le/a/b/b/b/w$a;

    iget-object v7, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 93
    iget-object v7, v7, Le/a/b/b/b/a;->b:[Le/a/b/b/b/e;

    .line 94
    iget v8, v2, Le/a/b/d/b/a;->a:I

    .line 95
    aget-object v7, v7, v8

    .line 96
    iput-object v2, v5, Le/a/b/b/b/w$a;->b:Le/a/b/d/b/a;

    iput-object v7, v5, Le/a/b/b/b/w$a;->c:Le/a/b/b/b/e;

    .line 97
    iget-object v7, v2, Le/a/b/d/b/a;->b:Le/a/b/d/b/f;

    .line 98
    iget-object v8, v7, Le/a/b/f/d;->b:[Ljava/lang/Object;

    array-length v8, v8

    const/4 v9, 0x0

    :goto_28
    if-ge v9, v8, :cond_35

    .line 99
    invoke-virtual {v7, v9}, Le/a/b/d/b/f;->i(I)Le/a/b/d/b/e;

    move-result-object v10

    invoke-virtual {v10, v5}, Le/a/b/d/b/e;->b(Le/a/b/d/b/e$b;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 100
    :cond_35
    iget-object v5, v0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    iget-object v7, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 101
    iget-object v7, v7, Le/a/b/b/b/a;->c:[Le/a/b/b/b/e;

    .line 102
    iget v8, v2, Le/a/b/d/b/a;->a:I

    .line 103
    aget-object v7, v7, v8

    .line 104
    iget-object v5, v5, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {v5, v7}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    .line 105
    iget v5, v2, Le/a/b/d/b/a;->d:I

    .line 106
    invoke-virtual {v2}, Le/a/b/d/b/a;->b()Le/a/b/d/b/e;

    move-result-object v7

    if-ltz v5, :cond_39

    if-eq v5, v4, :cond_39

    .line 107
    iget-object v8, v7, Le/a/b/d/b/e;->a:Le/a/b/d/b/n;

    .line 108
    iget v8, v8, Le/a/b/d/b/n;->e:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_38

    .line 109
    iget-object v8, v2, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    .line 110
    iget v9, v8, Le/a/b/f/f;->c:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_37

    const/4 v9, 0x0

    .line 111
    invoke-virtual {v8, v9}, Le/a/b/f/f;->g(I)I

    move-result v8

    iget v9, v2, Le/a/b/d/b/a;->d:I

    if-ne v8, v9, :cond_36

    iget-object v2, v2, Le/a/b/d/b/a;->c:Le/a/b/f/f;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Le/a/b/f/f;->g(I)I

    move-result v2

    move v8, v2

    :cond_36
    const/4 v2, 0x1

    if-ne v8, v4, :cond_38

    .line 112
    iget-object v4, v0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    iget-object v7, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 113
    iget-object v7, v7, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    aget-object v5, v7, v5

    .line 114
    iget-object v4, v4, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    .line 115
    iget-object v7, v4, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    :try_start_1
    iget-object v2, v4, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b/b/b/z;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, v4, Le/a/b/b/b/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Le/a/b/b/b/z;->n(Le/a/b/b/b/e;)Le/a/b/b/b/z;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non-reversible instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too few instructions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_38
    new-instance v2, Le/a/b/b/b/z;

    sget-object v4, Le/a/b/b/b/k;->Q:Le/a/b/b/b/j;

    .line 118
    iget-object v7, v7, Le/a/b/d/b/e;->b:Le/a/b/d/b/q;

    .line 119
    sget-object v8, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    iget-object v9, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    .line 120
    iget-object v9, v9, Le/a/b/b/b/a;->a:[Le/a/b/b/b/e;

    aget-object v5, v9, v5

    .line 121
    invoke-direct {v2, v4, v7, v8, v5}, Le/a/b/b/b/z;-><init>(Le/a/b/b/b/j;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/b/b/e;)V

    iget-object v4, v0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    .line 122
    iget-object v4, v4, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    invoke-virtual {v4, v2}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    :cond_39
    :goto_29
    move v2, v3

    goto/16 :goto_26

    .line 123
    :cond_3a
    new-instance v1, Le/a/b/b/b/y;

    iget-object v2, v0, Le/a/b/b/b/w;->a:Le/a/b/d/b/o;

    iget-object v3, v0, Le/a/b/b/b/w;->h:[I

    iget-object v4, v0, Le/a/b/b/b/w;->d:Le/a/b/b/b/a;

    invoke-direct {v1, v2, v3, v4}, Le/a/b/b/b/y;-><init>(Le/a/b/d/b/o;[ILe/a/b/b/b/a;)V

    new-instance v2, Le/a/b/b/b/g;

    iget v3, v0, Le/a/b/b/b/w;->b:I

    iget-object v0, v0, Le/a/b/b/b/w;->e:Le/a/b/b/b/r;

    .line 124
    iget-object v4, v0, Le/a/b/b/b/r;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_40

    .line 125
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2a
    if-ge v5, v4, :cond_3b

    iget-object v6, v0, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    iget-object v7, v0, Le/a/b/b/b/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b/b/b/h;

    invoke-virtual {v6, v7}, Le/a/b/b/b/s;->a(Le/a/b/b/b/h;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_3b
    const/4 v4, 0x0

    iput-object v4, v0, Le/a/b/b/b/r;->b:Ljava/util/ArrayList;

    .line 126
    iget-object v0, v0, Le/a/b/b/b/r;->a:Le/a/b/b/b/s;

    .line 127
    invoke-direct {v2, v3, v0, v1}, Le/a/b/b/b/g;-><init>(ILe/a/b/b/b/s;Le/a/b/b/b/b;)V

    .line 128
    new-instance v0, Le/a/b/b/c/q;

    move-object/from16 v10, v23

    iget-object v1, v10, Lf/a/j/d$b;->a:Lf/a/j/h;

    iget-object v1, v1, Lf/a/j/h;->f:Le/a/b/d/c/s;

    iget v3, v10, Lf/a/j/d$b;->b:I

    sget-object v4, Le/a/b/d/d/b;->c:Le/a/b/d/d/b;

    invoke-direct {v0, v1, v3, v2, v4}, Le/a/b/b/c/q;-><init>(Le/a/b/d/c/s;ILe/a/b/b/b/g;Le/a/b/d/d/e;)V

    .line 129
    iget v1, v10, Lf/a/j/d$b;->b:I

    const v2, 0x1000a

    and-int/2addr v1, v2

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_2b

    :cond_3c
    const/4 v1, 0x0

    :goto_2b
    move-object/from16 v7, v22

    .line 130
    iget-object v2, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    if-eqz v1, :cond_3e

    .line 131
    iget-object v1, v2, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    if-eqz v1, :cond_3d

    .line 132
    iget-object v1, v1, Le/a/b/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_3d
    const/4 v0, 0x0

    throw v0

    :cond_3e
    const/4 v1, 0x0

    .line 133
    iget-object v2, v2, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    if-eqz v2, :cond_3f

    .line 134
    iget-object v1, v2, Le/a/b/b/c/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v9, v16

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v20

    goto/16 :goto_5

    :cond_3f
    throw v1

    .line 135
    :cond_40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    move-object/from16 p2, v5

    move-object/from16 v20, v8

    .line 137
    iget-object v0, v7, Lf/a/j/d$c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/j/d$a;

    .line 138
    new-instance v2, Le/a/b/b/c/o;

    iget-object v3, v1, Lf/a/j/d$a;->a:Lf/a/j/e;

    iget-object v3, v3, Lf/a/j/e;->d:Le/a/b/d/c/j;

    iget v4, v1, Lf/a/j/d$a;->b:I

    invoke-direct {v2, v3, v4}, Le/a/b/b/c/o;-><init>(Le/a/b/d/c/j;I)V

    .line 139
    iget v3, v1, Lf/a/j/d$a;->b:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_43

    const/4 v3, 0x1

    goto :goto_2e

    :cond_43
    const/4 v3, 0x0

    :goto_2e
    if-eqz v3, :cond_46

    .line 140
    iget-object v3, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    .line 141
    iget-object v1, v1, Lf/a/j/d$a;->c:Ljava/lang/Object;

    .line 142
    invoke-static {v1}, Ld/s/y;->C(Ljava/lang/Object;)Le/a/b/d/c/x;

    move-result-object v1

    .line 143
    iget-object v3, v3, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    if-eqz v3, :cond_45

    .line 144
    iget-object v4, v3, Le/a/b/b/c/e;->k:Le/a/b/d/c/c;

    if-nez v4, :cond_44

    iget-object v4, v3, Le/a/b/b/c/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Le/a/b/b/c/e;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "static fields already sorted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/4 v0, 0x0

    throw v0

    :cond_46
    const/4 v1, 0x0

    .line 145
    iget-object v3, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    .line 146
    iget-object v3, v3, Le/a/b/b/c/f;->g:Le/a/b/b/c/e;

    if-eqz v3, :cond_47

    .line 147
    iget-object v1, v3, Le/a/b/b/c/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_47
    throw v1

    :cond_48
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    move-object/from16 p2, v5

    move-object/from16 v20, v8

    .line 148
    :cond_49
    iget-object v0, v7, Lf/a/j/d$c;->g:Le/a/b/b/c/f;

    move-object/from16 v1, v20

    .line 149
    iget-object v1, v1, Le/a/b/b/c/m;->k:Le/a/b/b/c/g;

    if-eqz v1, :cond_4b

    .line 150
    :try_start_2
    iget-object v2, v0, Le/a/b/b/c/f;->b:Le/a/b/d/c/w;

    .line 151
    iget-object v2, v2, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 152
    invoke-virtual {v1}, Le/a/b/b/c/l0;->h()V

    iget-object v3, v1, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4a

    iget-object v1, v1, Le/a/b/b/c/g;->f:Ljava/util/TreeMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v6, 0xd

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    goto/16 :goto_4

    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already added: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "clazz == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v0, 0x0

    throw v0

    .line 153
    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Undeclared type "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lf/a/j/d$c;->a:Lf/a/j/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lf/a/j/d$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lf/a/j/d$c;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    move-object/from16 v19, v2

    move-object/from16 v18, v4

    move-object/from16 v1, p0

    .line 154
    :try_start_3
    iget-object v0, v1, Lf/a/j/d;->c:Le/a/b/b/c/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Le/a/b/b/c/m;->b(Ljava/io/Writer;Z)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 155
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/jar/JarEntry;

    const-string v5, "classes.dex"

    invoke-direct {v3, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/util/jar/JarEntry;->setSize(J)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v2, v0}, Ljava/util/jar/JarOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->close()V

    move-object/from16 v0, p1

    move-object/from16 v2, v18

    invoke-virtual {v1, v4, v2, v0}, Lf/a/j/d;->d(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    .line 156
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method public final d(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 8

    const-class v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lf/a/j/d;->b:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lf/a/j/d;->b:Ljava/lang/ClassLoader;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v1, "addDexPath"

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v0, v4, v3

    invoke-virtual {p2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_1
    const-string v1, "dalvik.system.DexClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v3

    aput-object v0, v5, v2

    const/4 v6, 0x2

    aput-object v0, v5, v6

    const-class v0, Ljava/lang/ClassLoader;

    const/4 v7, 0x3

    aput-object v0, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x0

    aput-object p1, v1, v6

    aput-object p3, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "load() requires a Dalvik VM"

    invoke-direct {p2, p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Lf/a/j/k;)Lf/a/j/d$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/k<",
            "*>;)",
            "Lf/a/j/d$c;"
        }
    .end annotation

    iget-object v0, p0, Lf/a/j/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/j/d$c;

    if-nez v0, :cond_0

    new-instance v0, Lf/a/j/d$c;

    invoke-direct {v0, p1}, Lf/a/j/d$c;-><init>(Lf/a/j/k;)V

    iget-object v1, p0, Lf/a/j/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
