.class public Lcom/tencent/bugly/proguard/S$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/S;->c(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/tencent/bugly/proguard/S;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/S;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/proguard/S$a;->b:Lcom/tencent/bugly/proguard/S;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/S$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/S$a;->b:Lcom/tencent/bugly/proguard/S;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/S$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/S;->a(Lcom/tencent/bugly/proguard/S;Ljava/util/List;)V

    return-void
.end method
