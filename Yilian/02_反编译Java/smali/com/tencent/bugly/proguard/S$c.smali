.class public Lcom/tencent/bugly/proguard/S$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/S$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/S$c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/S$c;->c:J

    iput-boolean p5, p0, Lcom/tencent/bugly/proguard/S$c;->d:Z

    iput-wide p6, p0, Lcom/tencent/bugly/proguard/S$c;->e:J

    iput-object p8, p0, Lcom/tencent/bugly/proguard/S$c;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/bugly/proguard/S$c;->g:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/bugly/proguard/S$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/bugly/proguard/S$c;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/S$c;->e:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/S$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/S$c;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/S$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/S$c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/S$c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/S$c;->d:Z

    return v0
.end method
