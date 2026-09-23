.class public final Lf/a/j/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/j/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lf/a/j/k<",
            "*>;",
            "Lf/a/j/h<",
            "**>;>;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lf/a/j/h<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/ClassLoader;

.field public c:Ljava/lang/reflect/InvocationHandler;

.field public d:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public e:[Ljava/lang/Object;

.field public f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-class v0, Ljava/lang/Character;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Long;

    const-class v5, Ljava/lang/Byte;

    const-class v6, Ljava/lang/Integer;

    const-class v7, Ljava/lang/Boolean;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    sput-object v8, Lf/a/j/j;->g:Ljava/util/Map;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lf/a/j/j;->i:Ljava/util/Map;

    sget-object v8, Lf/a/j/j;->h:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    invoke-static {v11}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v11

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-static {v9}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v9

    const/4 v12, 0x1

    new-array v12, v12, [Lf/a/j/k;

    aput-object v11, v12, v10

    const-string v10, "valueOf"

    invoke-virtual {v9, v9, v10, v12}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v9

    sget-object v10, Lf/a/j/j;->i:Ljava/util/Map;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v7

    sget-object v11, Lf/a/j/k;->d:Lf/a/j/k;

    new-array v12, v10, [Lf/a/j/k;

    const-string v13, "booleanValue"

    invoke-virtual {v7, v11, v13, v12}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v6

    sget-object v9, Lf/a/j/k;->i:Lf/a/j/k;

    new-array v11, v10, [Lf/a/j/k;

    const-string v12, "intValue"

    invoke-virtual {v6, v9, v12, v11}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v5

    sget-object v7, Lf/a/j/k;->e:Lf/a/j/k;

    new-array v9, v10, [Lf/a/j/k;

    const-string v11, "byteValue"

    invoke-virtual {v5, v7, v11, v9}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v5

    invoke-virtual {v8, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v4

    sget-object v6, Lf/a/j/k;->j:Lf/a/j/k;

    new-array v7, v10, [Lf/a/j/k;

    const-string v9, "longValue"

    invoke-virtual {v4, v6, v9, v7}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v3

    sget-object v5, Lf/a/j/k;->k:Lf/a/j/k;

    new-array v6, v10, [Lf/a/j/k;

    const-string v7, "shortValue"

    invoke-virtual {v3, v5, v7, v6}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v2

    sget-object v4, Lf/a/j/k;->h:Lf/a/j/k;

    new-array v5, v10, [Lf/a/j/k;

    const-string v6, "floatValue"

    invoke-virtual {v2, v4, v6, v5}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v1

    sget-object v3, Lf/a/j/k;->g:Lf/a/j/k;

    new-array v4, v10, [Lf/a/j/k;

    const-string v5, "doubleValue"

    invoke-virtual {v1, v3, v5, v4}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v0

    sget-object v2, Lf/a/j/k;->f:Lf/a/j/k;

    new-array v3, v10, [Lf/a/j/k;

    const-string v4, "charValue"

    invoke-virtual {v0, v2, v4, v3}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v8, Lf/a/j/j;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lf/a/j/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lf/a/j/j;->b:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    iput-object v1, p0, Lf/a/j/j;->d:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf/a/j/j;->e:[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf/a/j/j;->f:Ljava/util/Set;

    iput-object p1, p0, Lf/a/j/j;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lf/a/j/j;->c:Ljava/lang/reflect/InvocationHandler;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_22

    iget-object v0, v1, Lf/a/j/j;->d:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v3, v1, Lf/a/j/j;->e:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_21

    .line 1
    sget-object v0, Lf/a/j/j;->g:Ljava/util/Map;

    iget-object v3, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v3, "$__handler"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v5, v1, Lf/a/j/j;->b:Ljava/lang/ClassLoader;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    iget-object v4, v1, Lf/a/j/j;->f:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 2
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v4, v6}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    move-object/from16 v22, v3

    goto/16 :goto_18

    :cond_3
    new-instance v0, Lf/a/j/d;

    invoke-direct {v0}, Lf/a/j/d;-><init>()V

    iget-object v4, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "."

    const-string v7, "/"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_Proxy"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "L"

    const-string v6, ";"

    .line 5
    invoke-static {v5, v4, v6}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lf/a/j/k;

    invoke-static {v5}, Le/a/b/d/d/c;->i(Ljava/lang/String;)Le/a/b/d/d/c;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lf/a/j/k;-><init>(Ljava/lang/String;Le/a/b/d/d/c;)V

    .line 7
    iget-object v5, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    invoke-static {v5}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v5

    iget-object v7, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    .line 8
    const-class v8, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v8}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v8

    const-class v9, [Ljava/lang/reflect/Method;

    invoke-static {v9}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v9

    .line 9
    new-instance v10, Lf/a/j/e;

    invoke-direct {v10, v6, v8, v3}, Lf/a/j/e;-><init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v11, 0x0

    .line 10
    invoke-virtual {v0, v10, v8, v11}, Lf/a/j/d;->b(Lf/a/j/e;ILjava/lang/Object;)V

    .line 11
    new-instance v8, Lf/a/j/e;

    const-string v10, "$__methodArray"

    invoke-direct {v8, v6, v9, v10}, Lf/a/j/e;-><init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;)V

    const/16 v9, 0xa

    .line 12
    invoke-virtual {v0, v8, v9, v11}, Lf/a/j/d;->b(Lf/a/j/e;ILjava/lang/Object;)V

    .line 13
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 14
    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v11, v7, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_4

    move-object/from16 v16, v7

    goto :goto_6

    :cond_4
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 15
    array-length v12, v11

    new-array v13, v12, [Lf/a/j/k;

    const/4 v14, 0x0

    :goto_4
    array-length v15, v11

    if-ge v14, v15, :cond_5

    aget-object v15, v11, v14

    invoke-static {v15}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 16
    :cond_5
    new-instance v11, Lf/a/j/h;

    sget-object v14, Lf/a/j/k;->l:Lf/a/j/k;

    new-instance v15, Lf/a/j/l;

    invoke-direct {v15, v13}, Lf/a/j/l;-><init>([Lf/a/j/k;)V

    move-object/from16 v16, v7

    const-string v7, "<init>"

    invoke-direct {v11, v6, v14, v7, v15}, Lf/a/j/h;-><init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;Lf/a/j/l;)V

    .line 17
    invoke-virtual {v0, v11, v2}, Lf/a/j/d;->a(Lf/a/j/h;I)Lf/a/j/b;

    move-result-object v2

    invoke-virtual {v2, v6}, Lf/a/j/b;->f(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v21

    new-array v11, v12, [Lf/a/j/g;

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v12, :cond_6

    aget-object v15, v13, v14

    invoke-virtual {v2, v14, v15}, Lf/a/j/b;->e(ILf/a/j/k;)Lf/a/j/g;

    move-result-object v15

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    .line 18
    new-instance v12, Lf/a/j/h;

    sget-object v14, Lf/a/j/k;->l:Lf/a/j/k;

    new-instance v15, Lf/a/j/l;

    invoke-direct {v15, v13}, Lf/a/j/l;-><init>([Lf/a/j/k;)V

    invoke-direct {v12, v5, v14, v7, v15}, Lf/a/j/h;-><init>(Lf/a/j/k;Lf/a/j/k;Ljava/lang/String;Lf/a/j/l;)V

    const/16 v20, 0x0

    const/4 v7, 0x1

    .line 19
    invoke-virtual {v12, v7}, Lf/a/j/h;->b(Z)Le/a/b/d/d/a;

    move-result-object v7

    invoke-static {v7}, Le/a/b/d/b/p;->g(Le/a/b/d/d/a;)Le/a/b/d/b/n;

    move-result-object v18

    move-object/from16 v17, v2

    move-object/from16 v19, v12

    move-object/from16 v22, v11

    invoke-virtual/range {v17 .. v22}, Lf/a/j/b;->h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    .line 20
    invoke-virtual {v2}, Lf/a/j/b;->n()V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x1

    move-object/from16 v7, v16

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 21
    throw v0

    .line 22
    :cond_8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iget-object v8, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    :goto_7
    if-eqz v8, :cond_9

    invoke-virtual {v1, v2, v7, v8}, Lf/a/j/j;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_7

    :cond_9
    iget-object v8, v1, Lf/a/j/j;->a:Ljava/lang/Class;

    :goto_8
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    array-length v11, v9

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_a

    aget-object v13, v9, v12

    invoke-virtual {v1, v2, v7, v13}, Lf/a/j/j;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_8

    :cond_b
    iget-object v8, v1, Lf/a/j/j;->f:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v1, v2, v7, v9}, Lf/a/j/j;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v8, v7, [Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/a/j/j$a;

    add-int/lit8 v12, v9, 0x1

    iget-object v11, v11, Lf/a/j/j$a;->d:Ljava/lang/reflect/Method;

    aput-object v11, v8, v9

    move v9, v12

    goto :goto_b

    .line 23
    :cond_d
    new-instance v2, Lf/a/j/i;

    invoke-direct {v2, v1}, Lf/a/j/i;-><init>(Lf/a/j/j;)V

    invoke-static {v8, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    const-class v2, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v2}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v2

    const-class v9, [Ljava/lang/reflect/Method;

    invoke-static {v9}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v9

    if-eqz v2, :cond_20

    .line 25
    new-instance v11, Le/a/b/d/c/t;

    new-instance v12, Le/a/b/d/c/v;

    invoke-direct {v12, v3}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    new-instance v13, Le/a/b/d/c/v;

    iget-object v14, v2, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-direct {v13, v14}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12, v13}, Le/a/b/d/c/t;-><init>(Le/a/b/d/c/v;Le/a/b/d/c/v;)V

    new-instance v12, Le/a/b/d/c/j;

    iget-object v13, v6, Lf/a/j/k;->c:Le/a/b/d/c/w;

    invoke-direct {v12, v13, v11}, Le/a/b/d/c/j;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    if-eqz v9, :cond_1f

    new-instance v11, Le/a/b/d/c/t;

    new-instance v13, Le/a/b/d/c/v;

    invoke-direct {v13, v10}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    new-instance v14, Le/a/b/d/c/v;

    iget-object v15, v9, Lf/a/j/k;->a:Ljava/lang/String;

    invoke-direct {v14, v15}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v13, v14}, Le/a/b/d/c/t;-><init>(Le/a/b/d/c/v;Le/a/b/d/c/v;)V

    new-instance v13, Le/a/b/d/c/j;

    iget-object v14, v6, Lf/a/j/k;->c:Le/a/b/d/c/w;

    invoke-direct {v13, v14, v11}, Le/a/b/d/c/j;-><init>(Le/a/b/d/c/w;Le/a/b/d/c/t;)V

    .line 26
    const-class v11, Ljava/lang/reflect/Method;

    invoke-static {v11}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v11

    const-class v14, [Ljava/lang/Object;

    invoke-static {v14}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v14

    sget-object v15, Lf/a/j/k;->m:Lf/a/j/k;

    move-object/from16 v22, v3

    const/4 v3, 0x3

    new-array v3, v3, [Lf/a/j/k;

    const/16 v16, 0x0

    aput-object v15, v3, v16

    const/16 v16, 0x1

    aput-object v11, v3, v16

    const/16 v16, 0x2

    aput-object v14, v3, v16

    move-object/from16 v23, v10

    const-string v10, "invoke"

    invoke-virtual {v2, v15, v10, v3}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v3

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v7, :cond_1a

    aget-object v24, v8, v10

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    move/from16 v25, v7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v26, v8

    array-length v8, v7

    new-array v1, v8, [Lf/a/j/k;

    const/16 v16, 0x0

    move-object/from16 v27, v4

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v8, :cond_e

    aget-object v16, v7, v4

    invoke-static/range {v16 .. v16}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v16

    aput-object v16, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v28, v3

    invoke-static {v4}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v3

    move-object/from16 v29, v12

    invoke-virtual {v5, v3, v15, v1}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v12

    invoke-virtual {v6, v3, v15, v1}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v15

    move-object/from16 v30, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v15, v5}, Lf/a/j/d;->a(Lf/a/j/h;I)Lf/a/j/b;

    move-result-object v5

    invoke-virtual {v5, v6}, Lf/a/j/b;->f(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v15

    move-object/from16 v31, v0

    invoke-virtual {v5, v2}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v0

    move-object/from16 v32, v6

    sget-object v6, Lf/a/j/k;->m:Lf/a/j/k;

    invoke-virtual {v5, v6}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v6

    move-object/from16 v33, v12

    sget-object v12, Lf/a/j/k;->i:Lf/a/j/k;

    invoke-virtual {v5, v12}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v12

    move-object/from16 v34, v6

    invoke-virtual {v5, v14}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v6

    move-object/from16 v35, v14

    sget-object v14, Lf/a/j/k;->i:Lf/a/j/k;

    invoke-virtual {v5, v14}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v14

    move-object/from16 v36, v1

    sget-object v1, Lf/a/j/k;->m:Lf/a/j/k;

    invoke-virtual {v5, v1}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v1

    move-object/from16 v37, v1

    invoke-virtual {v5, v3}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v1

    move-object/from16 v38, v1

    invoke-virtual {v5, v9}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v1

    move-object/from16 v39, v9

    invoke-virtual {v5, v11}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v9

    move-object/from16 v40, v11

    sget-object v11, Lf/a/j/k;->i:Lf/a/j/k;

    invoke-virtual {v5, v11}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v11

    move-object/from16 v41, v12

    sget-object v12, Lf/a/j/j;->h:Ljava/util/Map;

    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    if-eqz v12, :cond_f

    invoke-static {v12}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v12

    invoke-virtual {v5, v12}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v12

    goto :goto_e

    :cond_f
    const/4 v12, 0x0

    :goto_e
    move-object/from16 v42, v12

    array-length v12, v7

    move-object/from16 v43, v7

    new-array v7, v12, [Lf/a/j/g;

    move-object/from16 v44, v7

    invoke-virtual {v5, v3}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v7

    move-object/from16 v45, v3

    invoke-virtual {v5, v2}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v3

    move-object/from16 v46, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v11, v2}, Lf/a/j/b;->j(Lf/a/j/g;Ljava/lang/Object;)V

    .line 27
    new-instance v2, Le/a/b/d/b/r;

    move/from16 v47, v10

    iget-object v10, v1, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v10, v10, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v10}, Le/a/b/d/b/p;->f(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v17

    iget-object v10, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    sget-object v19, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    move-object/from16 v48, v7

    iget-object v7, v5, Lf/a/j/b;->j:Le/a/b/d/d/b;

    move-object/from16 v16, v2

    move-object/from16 v18, v10

    move-object/from16 v20, v7

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v21}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    const/4 v7, 0x0

    .line 28
    invoke-virtual {v5, v2, v7}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v5, v1, v2}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    .line 30
    new-instance v2, Le/a/b/d/b/s;

    iget-object v7, v9, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v7, v7, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v7}, Le/a/b/d/b/p;->a(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v7

    iget-object v10, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v1}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v1

    invoke-virtual {v11}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v11

    invoke-static {v1, v11}, Le/a/b/d/b/l;->l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v1

    iget-object v11, v5, Lf/a/j/b;->j:Le/a/b/d/d/b;

    invoke-direct {v2, v7, v10, v1, v11}, Le/a/b/d/b/s;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;)V

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v5, v2, v1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 v1, 0x1

    .line 32
    invoke-virtual {v5, v9, v1}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v14, v1}, Lf/a/j/b;->j(Lf/a/j/g;Ljava/lang/Object;)V

    .line 34
    new-instance v1, Le/a/b/d/b/r;

    iget-object v2, v6, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v2, v2, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v2}, Le/a/b/d/b/p;->l(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v17

    iget-object v2, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v14}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v7

    invoke-static {v7}, Le/a/b/d/b/l;->k(Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v19

    iget-object v7, v5, Lf/a/j/b;->j:Le/a/b/d/d/b;

    iget-object v10, v6, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v10, v10, Lf/a/j/k;->c:Le/a/b/d/c/w;

    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v5, v1, v2}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v5, v6, v1}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    .line 37
    new-instance v1, Le/a/b/d/b/r;

    iget-object v2, v0, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v2, v2, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v2}, Le/a/b/d/b/p;->e(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v16

    iget-object v2, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v15}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v7

    invoke-static {v7}, Le/a/b/d/b/l;->k(Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v18

    iget-object v7, v5, Lf/a/j/b;->j:Le/a/b/d/d/b;

    move-object v10, v15

    move-object v15, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v7

    move-object/from16 v20, v29

    invoke-direct/range {v15 .. v20}, Le/a/b/d/b/r;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;Le/a/b/d/c/a;)V

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v5, v1, v2}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v5, v0, v1}, Lf/a/j/b;->k(Lf/a/j/g;Z)V

    .line 40
    invoke-virtual {v5, v3, v2}, Lf/a/j/b;->j(Lf/a/j/g;Ljava/lang/Object;)V

    new-instance v1, Lf/a/j/f;

    invoke-direct {v1}, Lf/a/j/f;-><init>()V

    sget-object v2, Lf/a/j/c;->c:Lf/a/j/c;

    .line 41
    invoke-virtual {v5, v1}, Lf/a/j/b;->b(Lf/a/j/f;)V

    iget-object v7, v3, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v7, v7, Lf/a/j/k;->b:Le/a/b/d/d/c;

    iget-object v11, v0, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v11, v11, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v7, v11}, Le/a/b/d/d/b;->n(Le/a/b/d/d/c;Le/a/b/d/d/c;)Le/a/b/d/d/b;

    move-result-object v7

    invoke-virtual {v2, v7}, Lf/a/j/c;->a(Le/a/b/d/d/e;)Le/a/b/d/b/n;

    move-result-object v2

    new-instance v7, Le/a/b/d/b/j;

    iget-object v11, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v3}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v3

    invoke-virtual {v0}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v14

    invoke-static {v3, v14}, Le/a/b/d/b/l;->l(Le/a/b/d/b/k;Le/a/b/d/b/k;)Le/a/b/d/b/l;

    move-result-object v3

    const/4 v14, 0x0

    invoke-direct {v7, v2, v11, v14, v3}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    invoke-virtual {v5, v7, v1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v8, :cond_11

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v7, v41

    invoke-virtual {v5, v7, v3}, Lf/a/j/b;->j(Lf/a/j/g;Ljava/lang/Object;)V

    aget-object v3, v36, v2

    invoke-virtual {v5, v2, v3}, Lf/a/j/b;->e(ILf/a/j/k;)Lf/a/j/g;

    move-result-object v3

    .line 43
    sget-object v11, Lf/a/j/j;->i:Ljava/util/Map;

    .line 44
    iget-object v14, v3, Lf/a/j/g;->b:Lf/a/j/k;

    .line 45
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/a/j/h;

    if-nez v11, :cond_10

    move/from16 v41, v8

    move-object/from16 v49, v13

    goto :goto_10

    :cond_10
    const/4 v14, 0x1

    new-array v15, v14, [Lf/a/j/g;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    .line 46
    invoke-virtual {v11, v14}, Lf/a/j/h;->b(Z)Le/a/b/d/d/a;

    move-result-object v3

    .line 47
    new-instance v14, Le/a/b/d/b/n;

    invoke-virtual {v3}, Le/a/b/d/d/a;->b()Le/a/b/d/d/b;

    move-result-object v3

    move/from16 v41, v8

    sget-object v8, Le/a/b/d/d/b;->j:Le/a/b/d/d/b;

    move-object/from16 v49, v13

    const/16 v13, 0x31

    invoke-direct {v14, v13, v3, v8}, Le/a/b/d/b/n;-><init>(ILe/a/b/d/d/e;Le/a/b/d/d/e;)V

    const/16 v20, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v14

    move-object/from16 v18, v11

    move-object/from16 v19, v37

    move-object/from16 v21, v15

    .line 48
    invoke-virtual/range {v16 .. v21}, Lf/a/j/b;->h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    move-object/from16 v3, v37

    .line 49
    :goto_10
    new-instance v8, Le/a/b/d/b/s;

    iget-object v11, v3, Lf/a/j/g;->b:Lf/a/j/k;

    iget-object v11, v11, Lf/a/j/k;->b:Le/a/b/d/d/c;

    invoke-static {v11}, Le/a/b/d/b/p;->b(Le/a/b/d/d/d;)Le/a/b/d/b/n;

    move-result-object v11

    iget-object v13, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    invoke-virtual {v3}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v3

    invoke-virtual {v6}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v14

    invoke-virtual {v7}, Lf/a/j/g;->b()Le/a/b/d/b/k;

    move-result-object v15

    move-object/from16 v16, v7

    .line 50
    new-instance v7, Le/a/b/d/b/l;

    move/from16 v50, v12

    const/4 v12, 0x3

    invoke-direct {v7, v12}, Le/a/b/d/b/l;-><init>(I)V

    const/4 v12, 0x0

    .line 51
    invoke-virtual {v7, v12, v3}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v3, v14}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v7, v3, v15}, Le/a/b/f/d;->g(ILjava/lang/Object;)V

    .line 52
    iget-object v3, v5, Lf/a/j/b;->j:Le/a/b/d/d/b;

    invoke-direct {v8, v11, v13, v7, v3}, Le/a/b/d/b/s;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/l;Le/a/b/d/d/e;)V

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v5, v8, v3}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v41

    move-object/from16 v13, v49

    move/from16 v12, v50

    move-object/from16 v41, v16

    goto/16 :goto_f

    :cond_11
    move/from16 v50, v12

    move-object/from16 v49, v13

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v2, v2, [Lf/a/j/g;

    aput-object v10, v2, v7

    aput-object v9, v2, v3

    aput-object v6, v2, v8

    move-object/from16 v6, v28

    .line 54
    invoke-virtual {v6, v3}, Lf/a/j/h;->b(Z)Le/a/b/d/d/a;

    move-result-object v3

    .line 55
    new-instance v7, Le/a/b/d/b/n;

    invoke-virtual {v3}, Le/a/b/d/d/a;->b()Le/a/b/d/d/b;

    move-result-object v3

    sget-object v8, Le/a/b/d/d/b;->j:Le/a/b/d/d/b;

    const/16 v9, 0x35

    invoke-direct {v7, v9, v3, v8}, Le/a/b/d/b/n;-><init>(ILe/a/b/d/d/e;Le/a/b/d/d/e;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v6

    move-object/from16 v19, v34

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    .line 56
    invoke-virtual/range {v16 .. v21}, Lf/a/j/b;->h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    .line 57
    sget-object v0, Lf/a/j/j;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v34

    move-object/from16 v12, v42

    invoke-virtual {v5, v12, v0}, Lf/a/j/b;->c(Lf/a/j/g;Lf/a/j/g;)V

    .line 58
    sget-object v0, Lf/a/j/j;->j:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/j/h;

    const/4 v2, 0x0

    new-array v2, v2, [Lf/a/j/g;

    const/4 v3, 0x1

    .line 59
    invoke-virtual {v0, v3}, Lf/a/j/h;->b(Z)Le/a/b/d/d/a;

    move-result-object v3

    .line 60
    new-instance v7, Le/a/b/d/b/n;

    invoke-virtual {v3}, Le/a/b/d/d/a;->b()Le/a/b/d/d/b;

    move-result-object v3

    sget-object v8, Le/a/b/d/d/b;->j:Le/a/b/d/d/b;

    const/16 v9, 0x32

    invoke-direct {v7, v9, v3, v8}, Le/a/b/d/b/n;-><init>(ILe/a/b/d/d/e;Le/a/b/d/d/e;)V

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v0

    move-object/from16 v19, v38

    move-object/from16 v20, v12

    move-object/from16 v21, v2

    .line 61
    invoke-virtual/range {v16 .. v21}, Lf/a/j/b;->h(Le/a/b/d/b/n;Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    move-object/from16 v2, v38

    goto :goto_11

    :cond_12
    move-object/from16 v0, v34

    .line 62
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v5}, Lf/a/j/b;->n()V

    goto :goto_12

    :cond_13
    move-object/from16 v2, v38

    invoke-virtual {v5, v2, v0}, Lf/a/j/b;->c(Lf/a/j/g;Lf/a/j/g;)V

    :goto_11
    invoke-virtual {v5, v2}, Lf/a/j/b;->m(Lf/a/j/g;)V

    .line 63
    :goto_12
    invoke-virtual {v5, v1}, Lf/a/j/b;->b(Lf/a/j/f;)V

    iget-boolean v0, v1, Lf/a/j/f;->c:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, v1, Lf/a/j/f;->c:Z

    iget-object v0, v5, Lf/a/j/b;->c:Lf/a/j/f;

    if-eqz v0, :cond_14

    .line 64
    invoke-virtual {v5, v1}, Lf/a/j/b;->b(Lf/a/j/f;)V

    new-instance v0, Le/a/b/d/b/j;

    sget-object v2, Le/a/b/d/b/p;->r:Le/a/b/d/b/n;

    iget-object v3, v5, Lf/a/j/b;->h:Le/a/b/d/b/q;

    sget-object v7, Le/a/b/d/b/l;->c:Le/a/b/d/b/l;

    const/4 v8, 0x0

    invoke-direct {v0, v2, v3, v8, v7}, Le/a/b/d/b/j;-><init>(Le/a/b/d/b/n;Le/a/b/d/b/q;Le/a/b/d/b/k;Le/a/b/d/b/l;)V

    invoke-virtual {v5, v0, v1}, Lf/a/j/b;->a(Le/a/b/d/b/e;Lf/a/j/f;)V

    .line 65
    :cond_14
    iput-object v1, v5, Lf/a/j/b;->c:Lf/a/j/f;

    const/4 v0, 0x0

    move/from16 v1, v50

    :goto_13
    if-ge v0, v1, :cond_15

    .line 66
    aget-object v2, v36, v0

    invoke-virtual {v5, v0, v2}, Lf/a/j/b;->e(ILf/a/j/k;)Lf/a/j/g;

    move-result-object v2

    aput-object v2, v44, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_15
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    move-object/from16 v1, v33

    move-object/from16 v2, v44

    invoke-virtual {v5, v1, v0, v10, v2}, Lf/a/j/b;->i(Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    invoke-virtual {v5}, Lf/a/j/b;->n()V

    goto :goto_14

    :cond_16
    move-object/from16 v1, v33

    move-object/from16 v2, v44

    move-object/from16 v0, v48

    .line 67
    invoke-virtual {v5, v1, v0, v10, v2}, Lf/a/j/b;->i(Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    .line 68
    invoke-virtual {v5, v0}, Lf/a/j/b;->m(Lf/a/j/g;)V

    .line 69
    :goto_14
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "super$"

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    const/16 v5, 0x5f

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5b

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v32

    move-object/from16 v3, v36

    move-object/from16 v5, v45

    .line 70
    invoke-virtual {v2, v5, v0, v3}, Lf/a/j/k;->b(Lf/a/j/k;Ljava/lang/String;[Lf/a/j/k;)Lf/a/j/h;

    move-result-object v0

    const/4 v7, 0x1

    move-object/from16 v8, v31

    invoke-virtual {v8, v0, v7}, Lf/a/j/d;->a(Lf/a/j/h;I)Lf/a/j/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lf/a/j/b;->f(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v7

    move-object/from16 v9, v43

    array-length v9, v9

    new-array v10, v9, [Lf/a/j/g;

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v9, :cond_17

    aget-object v12, v3, v11

    invoke-virtual {v0, v11, v12}, Lf/a/j/b;->e(ILf/a/j/k;)Lf/a/j/g;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_17
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v7, v10}, Lf/a/j/b;->i(Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    invoke-virtual {v0}, Lf/a/j/b;->n()V

    goto :goto_16

    :cond_18
    invoke-virtual {v0, v5}, Lf/a/j/b;->l(Lf/a/j/k;)Lf/a/j/g;

    move-result-object v3

    .line 71
    invoke-virtual {v0, v1, v3, v7, v10}, Lf/a/j/b;->i(Lf/a/j/h;Lf/a/j/g;Lf/a/j/g;[Lf/a/j/g;)V

    .line 72
    invoke-virtual {v0, v3}, Lf/a/j/b;->m(Lf/a/j/g;)V

    :goto_16
    add-int/lit8 v10, v47, 0x1

    move-object/from16 v1, p0

    move-object v3, v6

    move-object v0, v8

    move/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v4, v27

    move-object/from16 v12, v29

    move-object/from16 v5, v30

    move-object/from16 v14, v35

    move-object/from16 v9, v39

    move-object/from16 v11, v40

    move-object/from16 v13, v49

    move-object v6, v2

    move-object/from16 v2, v46

    goto/16 :goto_c

    .line 73
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already marked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v27, v4

    move-object/from16 v30, v5

    move-object v2, v6

    move-object/from16 v26, v8

    move-object v8, v0

    const/4 v0, 0x0

    const-string v1, ".generated"

    move-object/from16 v3, v27

    .line 74
    invoke-static {v3, v1}, Le/a/c/a/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p0

    .line 75
    iget-object v5, v4, Lf/a/j/j;->f:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v5, v5, [Lf/a/j/k;

    iget-object v6, v4, Lf/a/j/j;->f:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    add-int/lit8 v9, v0, 0x1

    invoke-static {v7}, Lf/a/j/k;->a(Ljava/lang/Class;)Lf/a/j/k;

    move-result-object v7

    aput-object v7, v5, v0

    move v0, v9

    goto :goto_17

    .line 76
    :cond_1b
    invoke-virtual {v8, v2}, Lf/a/j/d;->e(Lf/a/j/k;)Lf/a/j/d$c;

    move-result-object v0

    .line 77
    iget-boolean v6, v0, Lf/a/j/d$c;->b:Z

    if-nez v6, :cond_1e

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, v0, Lf/a/j/d$c;->b:Z

    .line 79
    iput v2, v0, Lf/a/j/d$c;->c:I

    move-object/from16 v2, v30

    .line 80
    iput-object v2, v0, Lf/a/j/d$c;->d:Lf/a/j/k;

    .line 81
    iput-object v1, v0, Lf/a/j/d$c;->e:Ljava/lang/String;

    .line 82
    new-instance v1, Lf/a/j/l;

    invoke-direct {v1, v5}, Lf/a/j/l;-><init>([Lf/a/j/k;)V

    .line 83
    iput-object v1, v0, Lf/a/j/d$c;->f:Lf/a/j/l;

    .line 84
    iget-object v0, v4, Lf/a/j/j;->b:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lf/a/j/d;->c(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v1, v23

    .line 86
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    move-object/from16 v3, v26

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6

    .line 87
    sget-object v1, Lf/a/j/j;->g:Ljava/util/Map;

    iget-object v2, v4, Lf/a/j/j;->a:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_18
    :try_start_2
    iget-object v1, v4, Lf/a/j/j;->d:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v1, v4, Lf/a/j/j;->e:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v1, v4, Lf/a/j/j;->c:Ljava/lang/reflect/InvocationHandler;

    .line 89
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid proxy instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1d

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1c
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1d
    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_3
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No constructor for "

    invoke-static {v1}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lf/a/j/j;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with parameter types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lf/a/j/j;->d:[Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 93
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_9
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "cannot proxy inaccessible class "

    invoke-static {v2}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lf/a/j/j;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already declared: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-object v4, v1

    const/4 v0, 0x0

    .line 95
    throw v0

    :cond_20
    move-object v4, v1

    const/4 v0, 0x0

    throw v0

    :cond_21
    move-object v4, v1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "constructorArgValues.length != constructorArgTypes.length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object v4, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method public final b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lf/a/j/j$a;",
            ">;",
            "Ljava/util/Set<",
            "Lf/a/j/j$a;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_0

    new-instance v5, Lf/a/j/j$a;

    invoke-direct {v5, v4}, Lf/a/j/j$a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "finalize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Lf/a/j/j$a;

    invoke-direct {v5, v4}, Lf/a/j/j$a;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p3

    array-length v0, p3

    :goto_2
    if-ge v2, v0, :cond_6

    aget-object v1, p3, v2

    invoke-virtual {p0, p1, p2, v1}, Lf/a/j/j;->b(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method
