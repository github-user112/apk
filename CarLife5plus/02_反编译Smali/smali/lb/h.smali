.class public abstract Llb/h;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# static fields
.field public static final synthetic a:[Lm9/u;

.field public static final b:Lrb/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lg9/r;

    .line 2
    .line 3
    const-class v1, Llb/h;

    .line 4
    .line 5
    const-string v2, "annotationsAttribute"

    .line 6
    .line 7
    const-string v3, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lg9/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lg9/y;->a:Lg9/z;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lg9/z;->g(Lg9/r;)Lm9/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-array v2, v4, [Lm9/u;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v0, v2, v3

    .line 23
    .line 24
    sput-object v2, Llb/h;->a:[Lm9/u;

    .line 25
    .line 26
    sget-object v0, Llb/h0;->b:Lu0/j;

    .line 27
    .line 28
    const-class v2, Llb/g;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lg9/z;->b(Ljava/lang/Class;)Lm9/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v2, Lrb/p;

    .line 38
    .line 39
    invoke-interface {v1}, Lm9/c;->j()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lg9/l;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lu0/j;->s(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-direct {v2, v0}, Lrb/p;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v2, Llb/h;->b:Lrb/p;

    .line 54
    .line 55
    return-void
.end method

.method public static final a(Llb/h0;)Lw9/h;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Llb/h;->a:[Lm9/u;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    sget-object v1, Llb/h;->b:Lrb/p;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v2, "property"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lrb/d;->a:Lrb/a;

    .line 22
    .line 23
    iget v0, v1, Lrb/p;->a:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lrb/a;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Llb/g;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Llb/g;->a:Lw9/h;

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lw9/g;->a:Lw9/f;

    .line 40
    .line 41
    return-object p0
.end method
