.class public Ld/s/q$a;
.super Ld/s/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/s/q;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld/s/k;


# direct methods
.method public constructor <init>(Ld/s/q;Ld/s/k;)V
    .locals 0

    iput-object p2, p0, Ld/s/q$a;->a:Ld/s/k;

    invoke-direct {p0}, Ld/s/n;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ld/s/k;)V
    .locals 1

    iget-object v0, p0, Ld/s/q$a;->a:Ld/s/k;

    invoke-virtual {v0}, Ld/s/k;->y()V

    invoke-virtual {p1, p0}, Ld/s/k;->v(Ld/s/k$d;)Ld/s/k;

    return-void
.end method
