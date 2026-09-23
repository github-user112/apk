.class public final synthetic Lj/c0;
.super Ljava/lang/Object;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"

# interfaces
.implements Le4/j;


# instance fields
.field public final synthetic a:Lj/h;


# direct methods
.method public synthetic constructor <init>(Lj/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj/c0;->a:Lj/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/c0;->a:Lj/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj/h;->i(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
