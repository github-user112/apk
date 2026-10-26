.class public Ld/s/k$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/s/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Ld/s/s;

.field public d:Ld/s/l0;

.field public e:Ld/s/k;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ld/s/k;Ld/s/l0;Ld/s/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/s/k$b;->a:Landroid/view/View;

    iput-object p2, p0, Ld/s/k$b;->b:Ljava/lang/String;

    iput-object p5, p0, Ld/s/k$b;->c:Ld/s/s;

    iput-object p4, p0, Ld/s/k$b;->d:Ld/s/l0;

    iput-object p3, p0, Ld/s/k$b;->e:Ld/s/k;

    return-void
.end method
