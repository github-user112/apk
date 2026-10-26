.class public Ld/g/m/z$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g/m/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ld/g/m/z;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ld/g/m/z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/g/m/z;-><init>(Ld/g/m/z;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/g/m/z$f;->a:Ld/g/m/z;

    return-void
.end method

.method public constructor <init>(Ld/g/m/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/g/m/z$f;->a:Ld/g/m/z;

    return-void
.end method


# virtual methods
.method public a()Ld/g/m/z;
    .locals 1

    iget-object v0, p0, Ld/g/m/z$f;->a:Ld/g/m/z;

    return-object v0
.end method

.method public b(Ld/g/g/b;)V
    .locals 0

    return-void
.end method

.method public c(Ld/g/g/b;)V
    .locals 0

    return-void
.end method
