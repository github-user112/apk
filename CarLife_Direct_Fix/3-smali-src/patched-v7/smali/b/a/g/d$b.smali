.class public Lb/a/g/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lb/a/g/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/g/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Lb/a/g/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/g/g/a<",
            "*TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/g/b;Lb/a/g/g/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/g/b<",
            "TO;>;",
            "Lb/a/g/g/a<",
            "*TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/g/d$b;->a:Lb/a/g/b;

    iput-object p2, p0, Lb/a/g/d$b;->b:Lb/a/g/g/a;

    return-void
.end method
