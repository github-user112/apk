.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/l/f;


# instance fields
.field public final a:Ld/l/d;


# direct methods
.method public constructor <init>(Ld/l/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/l/d;

    return-void
.end method


# virtual methods
.method public d(Ld/l/h;Ld/l/e$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/l/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Ld/l/d;->a(Ld/l/h;Ld/l/e$a;ZLd/l/l;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Ld/l/d;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Ld/l/d;->a(Ld/l/h;Ld/l/e$a;ZLd/l/l;)V

    return-void
.end method
