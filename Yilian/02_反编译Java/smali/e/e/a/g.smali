.class public final Le/e/a/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Le/e/a/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/e/a/h;

    invoke-direct {v0}, Le/e/a/h;-><init>()V

    sput-object v0, Le/e/a/g;->a:Le/e/a/h;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    if-nez p0, :cond_0

    const-string p0, "null"

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    instance-of v2, p0, [Z

    if-eqz v2, :cond_2

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v2, p0, [C

    if-eqz v2, :cond_4

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v2, p0, [S

    if-eqz v2, :cond_5

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v2, p0, [I

    if-eqz v2, :cond_6

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v2, p0, [J

    if-eqz v2, :cond_7

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    instance-of v2, p0, [F

    if-eqz v2, :cond_8

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_8
    instance-of v2, p0, [D

    if-eqz v2, :cond_9

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    instance-of v2, p0, [Ljava/lang/Object;

    if-eqz v2, :cond_a

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_a
    const-string p0, "Couldn\'t find a correct type for the object"

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    .line 2
    invoke-virtual {v0, v3, v1, p0, v2}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_b
    throw v1
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, p0, p1}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, p0, p1}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x6

    .line 1
    invoke-virtual {v0, v1, p0, p1, p2}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, p0, p1}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs f(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Le/e/a/g;->a:Le/e/a/h;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, p0, p1}, Le/e/a/h;->b(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
