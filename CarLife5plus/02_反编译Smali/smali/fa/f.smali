.class public final Lfa/f;
.super Ljava/lang/Object;

# interfaces
.implements Lf9/a;


# static fields
.field public static final a:Lfa/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfa/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfa/f;->a:Lfa/f;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lfa/g;->g:[Lm9/u;

    .line 2
    .line 3
    sget-object v0, Lfa/c;->a:Lua/e;

    .line 4
    .line 5
    new-instance v1, Lza/w;

    .line 6
    .line 7
    const-string v2, "Deprecated in Java"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lza/g;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lr8/j;

    .line 13
    .line 14
    invoke-direct {v2, v0, v1}, Lr8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ls8/c0;->I(Lr8/j;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
