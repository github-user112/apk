.class public Ld/g/e/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/g/e/c;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/g/e/c$c;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld/g/e/c$c;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ld/g/e/c$a;->a:Ld/g/e/c$c;

    iput-object p2, p0, Ld/g/e/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ld/g/e/c$a;->a:Ld/g/e/c$c;

    iget-object v1, p0, Ld/g/e/c$a;->b:Ljava/lang/Object;

    iput-object v1, v0, Ld/g/e/c$c;->a:Ljava/lang/Object;

    return-void
.end method
