.class public final Le/a/b/d/c/w;
.super Le/a/b/d/c/x;
.source ""


# static fields
.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Le/a/b/d/d/c;",
            "Le/a/b/d/c/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Le/a/b/d/c/w;


# instance fields
.field public final a:Le/a/b/d/d/c;

.field public b:Le/a/b/d/c/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Le/a/b/d/c/w;->c:Ljava/util/HashMap;

    sget-object v0, Le/a/b/d/d/c;->s:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    move-result-object v0

    sput-object v0, Le/a/b/d/c/w;->d:Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->v:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->w:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->x:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->y:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->z:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->B:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->A:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->C:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->D:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->F:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->G:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->H:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->I:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->J:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->L:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->K:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    sget-object v0, Le/a/b/d/d/c;->N:Le/a/b/d/d/c;

    invoke-static {v0}, Le/a/b/d/c/w;->g(Le/a/b/d/d/c;)Le/a/b/d/c/w;

    return-void
.end method

.method public constructor <init>(Le/a/b/d/d/c;)V
    .locals 1

    invoke-direct {p0}, Le/a/b/d/c/x;-><init>()V

    if-eqz p1, :cond_1

    sget-object v0, Le/a/b/d/d/c;->p:Le/a/b/d/d/c;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a/b/d/c/w;->b:Le/a/b/d/c/v;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "KNOWN_NULL is not representable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(Le/a/b/d/d/c;)Le/a/b/d/c/w;
    .locals 3

    sget-object v0, Le/a/b/d/c/w;->c:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le/a/b/d/c/w;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b/d/c/w;

    if-nez v1, :cond_0

    new-instance v1, Le/a/b/d/c/w;

    invoke-direct {v1, p0}, Le/a/b/d/c/w;-><init>(Le/a/b/d/d/c;)V

    sget-object v2, Le/a/b/d/c/w;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    invoke-virtual {v0}, Le/a/b/d/d/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Le/a/b/d/c/a;)I
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 1
    iget-object v0, v0, Le/a/b/d/d/c;->a:Ljava/lang/String;

    .line 2
    check-cast p1, Le/a/b/d/c/w;

    iget-object p1, p1, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 3
    iget-object p1, p1, Le/a/b/d/d/c;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Le/a/b/d/c/w;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    check-cast p1, Le/a/b/d/c/w;

    iget-object p1, p1, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Le/a/b/d/c/v;
    .locals 2

    iget-object v0, p0, Le/a/b/d/c/w;->b:Le/a/b/d/c/v;

    if-nez v0, :cond_0

    new-instance v0, Le/a/b/d/c/v;

    iget-object v1, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    .line 1
    iget-object v1, v1, Le/a/b/d/d/c;->a:Ljava/lang/String;

    .line 2
    invoke-direct {v0, v1}, Le/a/b/d/c/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/a/b/d/c/w;->b:Le/a/b/d/c/v;

    :cond_0
    iget-object v0, p0, Le/a/b/d/c/w;->b:Le/a/b/d/c/v;

    return-object v0
.end method

.method public getType()Le/a/b/d/d/c;
    .locals 1

    sget-object v0, Le/a/b/d/d/c;->r:Le/a/b/d/d/c;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/b/d/c/w;->a:Le/a/b/d/d/c;

    invoke-virtual {v0}, Le/a/b/d/d/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "type{"

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/a/b/d/c/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
