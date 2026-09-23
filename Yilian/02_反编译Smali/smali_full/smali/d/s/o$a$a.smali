.class public Ld/s/o$a$a;
.super Ld/s/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/e/a;

.field public final synthetic b:Ld/s/o$a;


# direct methods
.method public constructor <init>(Ld/s/o$a;Ld/e/a;)V
    .locals 0

    iput-object p1, p0, Ld/s/o$a$a;->b:Ld/s/o$a;

    iput-object p2, p0, Ld/s/o$a$a;->a:Ld/e/a;

    invoke-direct {p0}, Ld/s/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/s/k;)V
    .locals 2

    iget-object v0, p0, Ld/s/o$a$a;->a:Ld/e/a;

    iget-object v1, p0, Ld/s/o$a$a;->b:Ld/s/o$a;

    iget-object v1, v1, Ld/s/o$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ld/e/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
