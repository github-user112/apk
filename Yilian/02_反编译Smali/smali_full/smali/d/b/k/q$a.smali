.class public Ld/b/k/q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/g/m/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/b/k/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/b/k/q;


# direct methods
.method public constructor <init>(Ld/b/k/q;)V
    .locals 0

    iput-object p1, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Ld/b/k/q$a;->a:Ld/b/k/q;

    invoke-virtual {v0, p1}, Ld/b/k/q;->c(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
