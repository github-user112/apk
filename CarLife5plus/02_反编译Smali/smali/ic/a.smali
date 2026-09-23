.class public final synthetic Lic/a;
.super Lg9/j;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lf9/o;


# static fields
.field public static final i:Lic/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lic/a;

    .line 2
    .line 3
    const-string v4, "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x3

    .line 7
    const-class v2, Lic/b;

    .line 8
    .line 9
    const-string v3, "register"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lg9/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lic/a;->i:Lic/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lic/b;

    .line 2
    .line 3
    check-cast p2, Lic/f;

    .line 4
    .line 5
    iget-wide v0, p1, Lic/b;->a:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    sget-object p3, Lr8/z;->a:Lr8/z;

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    check-cast p2, Lic/e;

    .line 16
    .line 17
    iput-object p3, p2, Lic/e;->e:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p3

    .line 20
    :cond_0
    new-instance v2, Lb4/a;

    .line 21
    .line 22
    const/16 v3, 0x8

    .line 23
    .line 24
    invoke-direct {v2, v3, p2, p1}, Lb4/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    .line 28
    .line 29
    invoke-static {p2, p1}, Lg9/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast p2, Lic/e;

    .line 33
    .line 34
    iget-object p1, p2, Lic/e;->a:Lw8/h;

    .line 35
    .line 36
    invoke-static {p1}, Lac/z;->j(Lw8/h;)Lac/c0;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3, v0, v1, v2, p1}, Lac/c0;->f(JLjava/lang/Runnable;Lw8/h;)Lac/h0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p2, Lic/e;->c:Ljava/lang/Object;

    .line 45
    .line 46
    return-object p3
.end method
