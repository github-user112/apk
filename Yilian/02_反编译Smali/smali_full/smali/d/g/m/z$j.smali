.class public Ld/g/m/z$j;
.super Ld/g/m/z$i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public o:Ld/g/g/b;

.field public p:Ld/g/g/b;

.field public q:Ld/g/g/b;


# direct methods
.method public constructor <init>(Ld/g/m/z;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g/m/z$i;-><init>(Ld/g/m/z;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/g/m/z$j;->o:Ld/g/g/b;

    iput-object p1, p0, Ld/g/m/z$j;->p:Ld/g/g/b;

    iput-object p1, p0, Ld/g/m/z$j;->q:Ld/g/g/b;

    return-void
.end method


# virtual methods
.method public l(Ld/g/g/b;)V
    .locals 0

    return-void
.end method
