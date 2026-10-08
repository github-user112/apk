.class public La/a/b/n/v$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/n/v;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La/a/b/n/v;


# direct methods
.method public constructor <init>(La/a/b/n/v;)V
    .locals 0

    iput-object p1, p0, La/a/b/n/v$f;->b:La/a/b/n/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    const-string v0, "MEDIAAPI_BB"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, La/a/a/a/l/a;->g(Ljava/lang/String;I)Z

    invoke-static {}, La/a/a/a/l/a;->b()La/a/a/a/l/a;

    move-result-object p1

    const-string v0, "AUDIO_TRACK_STREAM_TYPE"

    .line 1
    invoke-virtual {p1, v0}, La/a/a/a/l/a;->i(Ljava/lang/String;)Z

    const-string v0, "STREAM_MUSIC"

    invoke-virtual {p1, v0}, La/a/a/a/l/a;->i(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, La/a/b/n/v$f;->b:La/a/b/n/v;

    invoke-virtual {p1}, Lb/h/b/m;->f()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u9000\u51fa\u5e94\u7528\u91cd\u65b0\u6253\u5f00\u540e\u751f\u6548!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
