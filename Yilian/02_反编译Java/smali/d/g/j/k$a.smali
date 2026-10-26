.class public Ld/g/j/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/j/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/g/l/a;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/g/j/k;Ld/g/l/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Ld/g/j/k$a;->a:Ld/g/l/a;

    iput-object p3, p0, Ld/g/j/k$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/g/j/k$a;->a:Ld/g/l/a;

    iget-object v1, p0, Ld/g/j/k$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ld/g/l/a;->accept(Ljava/lang/Object;)V

    return-void
.end method
