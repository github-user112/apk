.class public Ld/l/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/l/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ld/l/e$b;

.field public b:Ld/l/f;


# direct methods
.method public constructor <init>(Ld/l/g;Ld/l/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld/l/k;->d(Ljava/lang/Object;)Ld/l/f;

    move-result-object p1

    iput-object p1, p0, Ld/l/i$a;->b:Ld/l/f;

    iput-object p2, p0, Ld/l/i$a;->a:Ld/l/e$b;

    return-void
.end method


# virtual methods
.method public a(Ld/l/h;Ld/l/e$a;)V
    .locals 2

    invoke-virtual {p2}, Ld/l/e$a;->a()Ld/l/e$b;

    move-result-object v0

    iget-object v1, p0, Ld/l/i$a;->a:Ld/l/e$b;

    invoke-static {v1, v0}, Ld/l/i;->f(Ld/l/e$b;Ld/l/e$b;)Ld/l/e$b;

    move-result-object v1

    iput-object v1, p0, Ld/l/i$a;->a:Ld/l/e$b;

    iget-object v1, p0, Ld/l/i$a;->b:Ld/l/f;

    invoke-interface {v1, p1, p2}, Ld/l/f;->d(Ld/l/h;Ld/l/e$a;)V

    iput-object v0, p0, Ld/l/i$a;->a:Ld/l/e$b;

    return-void
.end method
