.class public La/a/b/n/h$d$b;
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


# direct methods
.method public constructor <init>(La/a/b/n/h$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    sget v1, La/a/a/a/l/b;->p:I

    const-string v2, "LOGCAT_TIMEJG"

    invoke-virtual {v0, v2, v1}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/l/a;->a()V

    return-void
.end method
