.class public Lb/b/g/i/d$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/b/h/o0;

.field public final b:Lb/b/g/i/g;

.field public final c:I


# direct methods
.method public constructor <init>(Lb/b/h/o0;Lb/b/g/i/g;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/i/d$d;->a:Lb/b/h/o0;

    iput-object p2, p0, Lb/b/g/i/d$d;->b:Lb/b/g/i/g;

    iput p3, p0, Lb/b/g/i/d$d;->c:I

    return-void
.end method
