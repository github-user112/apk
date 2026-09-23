.class public Lb/e/g/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/e/i/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/e/i/a<",
        "Lb/e/g/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/e/g/c;


# direct methods
.method public constructor <init>(Lb/e/g/c;)V
    .locals 0

    iput-object p1, p0, Lb/e/g/g;->a:Lb/e/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lb/e/g/j$a;

    .line 1
    iget-object v0, p0, Lb/e/g/g;->a:Lb/e/g/c;

    invoke-virtual {v0, p1}, Lb/e/g/c;->a(Lb/e/g/j$a;)V

    return-void
.end method
