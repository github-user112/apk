.class public Ld/g/j/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld/g/j/i;

.field public final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Ld/g/j/c;Ld/g/j/i;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p2, p0, Ld/g/j/a;->a:Ld/g/j/i;

    iput-object p3, p0, Ld/g/j/a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/g/j/a;->a:Ld/g/j/i;

    iget-object v1, p0, Ld/g/j/a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ld/g/j/i;->b(Landroid/graphics/Typeface;)V

    return-void
.end method
