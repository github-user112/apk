.class public La/a/b/n/h$l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/s/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h$l;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:La/a/b/n/h$l;


# direct methods
.method public constructor <init>(La/a/b/n/h$l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$l$a;->b:La/a/b/n/h$l;

    iput-object p2, p0, La/a/b/n/h$l$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, La/a/b/n/h$l$a;->b:La/a/b/n/h$l;

    iget-object v0, v0, La/a/b/n/h$l;->d:La/a/b/n/h;

    .line 1
    iget-object v0, v0, La/a/b/n/h;->e0:La/a/b/s/b;

    .line 2
    invoke-virtual {v0}, La/a/b/s/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u952e\u503c:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v1

    iget-object v2, p0, La/a/b/n/h$l$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    iget-object v1, p0, La/a/b/n/h$l$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, La/a/b/n/h;->a0:Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/l/a;->a()V

    return-void
.end method
