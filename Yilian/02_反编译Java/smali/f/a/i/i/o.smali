.class public Lf/a/i/i/o;
.super Landroid/os/Handler;
.source ""


# instance fields
.field public final synthetic a:Lf/a/i/i/q;


# direct methods
.method public constructor <init>(Lf/a/i/i/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lf/a/i/i/o;->a:Lf/a/i/i/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lf/a/i/i/o;->a:Lf/a/i/i/q;

    invoke-virtual {v0, p1}, Lf/a/i/i/q;->d0(Landroid/os/Message;)Z

    return-void
.end method
