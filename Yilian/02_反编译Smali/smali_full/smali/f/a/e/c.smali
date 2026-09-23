.class public Lf/a/e/c;
.super Ljava/util/TimerTask;
.source ""


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/util/LinkedHashMap;

.field public final synthetic c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Lf/a/e/c;->b:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lf/a/e/c;->c:Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf/a/e/c;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lf/a/e/c;->a:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lf/a/e/c;->a:Z

    iget-object v1, p0, Lf/a/e/c;->b:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dummay"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/s/y;->j:Ljavax/jmdns/ServiceInfo;

    iget-object v1, p0, Lf/a/e/c;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    iget-object v0, p0, Lf/a/e/c;->c:Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lf/a/e/c;->a:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld/s/y;->i:Ljavax/jmdns/ServiceInfo;

    iget-object v1, p0, Lf/a/e/c;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljavax/jmdns/ServiceInfo;->setText(Ljava/util/Map;)V

    sget-object v0, Ld/s/y;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
