.class public La/a/b/n/h$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/s/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/n/h$d;


# direct methods
.method public constructor <init>(La/a/b/n/h$d;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/h$d$a;->a:La/a/b/n/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, La/a/b/n/h$d$a;->a:La/a/b/n/h$d;

    iget-object v0, v0, La/a/b/n/h$d;->b:La/a/b/n/h;

    .line 1
    iget-object v0, v0, La/a/b/n/h;->f0:La/a/b/s/c;

    .line 2
    invoke-virtual {v0}, La/a/b/s/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LOGCAT_TIMEJG"

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v0}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    sget v2, La/a/a/a/l/b;->p:I

    invoke-virtual {v0, v1, v2}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    :goto_0
    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/l/a;->a()V

    return-void
.end method
