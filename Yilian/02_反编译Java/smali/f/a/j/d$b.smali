.class public Lf/a/j/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lf/a/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/j/h<",
            "**>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lf/a/j/b;


# direct methods
.method public constructor <init>(Lf/a/j/h;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/j/h<",
            "**>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/j/d$b;->a:Lf/a/j/h;

    iput p2, p0, Lf/a/j/d$b;->b:I

    new-instance p1, Lf/a/j/b;

    invoke-direct {p1, p0}, Lf/a/j/b;-><init>(Lf/a/j/d$b;)V

    iput-object p1, p0, Lf/a/j/d$b;->c:Lf/a/j/b;

    return-void
.end method
