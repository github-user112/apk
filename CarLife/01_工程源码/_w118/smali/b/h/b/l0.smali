.class public Lb/h/b/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/h/b/r0$a;

.field public final synthetic c:Lb/h/b/m;

.field public final synthetic d:Lb/e/f/a;


# direct methods
.method public constructor <init>(Lb/h/b/r0$a;Lb/h/b/m;Lb/e/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/h/b/l0;->b:Lb/h/b/r0$a;

    iput-object p2, p0, Lb/h/b/l0;->c:Lb/h/b/m;

    iput-object p3, p0, Lb/h/b/l0;->d:Lb/e/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/h/b/l0;->b:Lb/h/b/r0$a;

    iget-object v1, p0, Lb/h/b/l0;->c:Lb/h/b/m;

    iget-object v2, p0, Lb/h/b/l0;->d:Lb/e/f/a;

    check-cast v0, Lb/h/b/c0$d;

    invoke-virtual {v0, v1, v2}, Lb/h/b/c0$d;->a(Lb/h/b/m;Lb/e/f/a;)V

    return-void
.end method
