.class public La/a/b/n/h$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/a/b/s/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/h$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/a/b/n/h$b;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, La/a/b/n/h$b$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, La/a/a/a/l/a;->e:Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    iget-object v1, p0, La/a/b/n/h$b$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, La/a/a/a/l/a;->h(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/l/a;->a()V

    return-void
.end method
