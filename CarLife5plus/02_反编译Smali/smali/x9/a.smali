.class public final Lx9/a;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Lx9/b;
.implements Lx9/d;


# static fields
.field public static final b:Lx9/a;

.field public static final c:Lx9/a;

.field public static final d:Lx9/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lx9/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lx9/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx9/a;->b:Lx9/a;

    .line 8
    .line 9
    new-instance v0, Lx9/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lx9/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lx9/a;->c:Lx9/a;

    .line 16
    .line 17
    new-instance v0, Lx9/a;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lx9/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lx9/a;->d:Lx9/a;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lx9/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lv9/e;)Ljava/util/Collection;
    .locals 0

    .line 1
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object p1
.end method

.method public b(Lv9/e;Ljb/t;)Z
    .locals 1

    .line 1
    iget v0, p0, Lx9/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "classDescriptor"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lfb/a;->getAnnotations()Lw9/h;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object p2, Lx9/e;->a:Lua/c;

    .line 16
    .line 17
    invoke-interface {p1, p2}, Lw9/h;->g(Lua/c;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    xor-int/lit8 p1, p1, 0x1

    .line 22
    .line 23
    return p1

    .line 24
    :pswitch_0
    const-string p2, "classDescriptor"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lua/e;Lv9/e;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "classDescriptor"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 12
    .line 13
    return-object p1
.end method

.method public d(Lv9/e;)Ljava/util/Collection;
    .locals 1

    .line 1
    const-string v0, "classDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 7
    .line 8
    return-object p1
.end method

.method public e(Lv9/e;)Ljava/util/Collection;
    .locals 0

    .line 1
    sget-object p1, Ls8/w;->a:Ls8/w;

    .line 2
    .line 3
    return-object p1
.end method
