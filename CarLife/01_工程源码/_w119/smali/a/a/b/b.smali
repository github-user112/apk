.class public final synthetic La/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/d/a/c/a;


# static fields
.field public static final synthetic a:La/a/b/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/b/b;

    invoke-direct {v0}, La/a/b/b;-><init>()V

    sput-object v0, La/a/b/b;->a:La/a/b/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/d/a/f/c;Ljava/util/List;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/baidu/carlifevehicle/CarlifeActivity;->o:Lcom/baidu/carlifevehicle/CarlifeActivity;

    const-string v0, "scope"

    .line 2
    invoke-static {p1, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p2, v0}, Lc/k/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u6253\u5f00\u6743\u9650"

    const-string v1, "\u786e\u5b9a"

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {p1, p2, v0, v1, v2}, La/d/a/f/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
