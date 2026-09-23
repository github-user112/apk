.class public final Lc/i/a;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final synthetic b:Lc/k/a/a;


# direct methods
.method public constructor <init>(Lc/k/a/a;)V
    .locals 0

    iput-object p1, p0, Lc/i/a;->b:Lc/k/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc/i/a;->b:Lc/k/a/a;

    invoke-interface {v0}, Lc/k/a/a;->a()Ljava/lang/Object;

    return-void
.end method
