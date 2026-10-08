.class public Lb/h/b/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/h/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/b/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/h/b/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/b/z<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/b/x;->a:Lb/h/b/z;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/h/b/x;->a:Lb/h/b/z;

    iget-object v0, v0, Lb/h/b/z;->e:Lb/h/b/c0;

    invoke-virtual {v0}, Lb/h/b/c0;->T()V

    return-void
.end method
