.class public Ld/g/j/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/g/j/i;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ld/g/j/c;Ld/g/j/i;I)V
    .locals 0

    iput-object p2, p0, Ld/g/j/b;->a:Ld/g/j/i;

    iput p3, p0, Ld/g/j/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/g/j/b;->a:Ld/g/j/i;

    iget v1, p0, Ld/g/j/b;->b:I

    invoke-virtual {v0, v1}, Ld/g/j/i;->a(I)V

    return-void
.end method
