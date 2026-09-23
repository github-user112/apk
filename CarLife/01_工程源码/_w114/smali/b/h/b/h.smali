.class public Lb/h/b/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/h/b/y0$d;

.field public final synthetic c:Lb/h/b/y0$d;

.field public final synthetic d:Z

.field public final synthetic e:Lb/d/a;


# direct methods
.method public constructor <init>(Lb/h/b/c;Lb/h/b/y0$d;Lb/h/b/y0$d;ZLb/d/a;)V
    .locals 0

    iput-object p2, p0, Lb/h/b/h;->b:Lb/h/b/y0$d;

    iput-object p3, p0, Lb/h/b/h;->c:Lb/h/b/y0$d;

    iput-boolean p4, p0, Lb/h/b/h;->d:Z

    iput-object p5, p0, Lb/h/b/h;->e:Lb/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lb/h/b/h;->b:Lb/h/b/y0$d;

    .line 1
    iget-object v0, v0, Lb/h/b/y0$d;->c:Lb/h/b/m;

    .line 2
    iget-object v1, p0, Lb/h/b/h;->c:Lb/h/b/y0$d;

    .line 3
    iget-object v1, v1, Lb/h/b/y0$d;->c:Lb/h/b/m;

    .line 4
    iget-boolean v2, p0, Lb/h/b/h;->d:Z

    iget-object v3, p0, Lb/h/b/h;->e:Lb/d/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb/h/b/r0;->c(Lb/h/b/m;Lb/h/b/m;ZLb/d/a;Z)V

    return-void
.end method
