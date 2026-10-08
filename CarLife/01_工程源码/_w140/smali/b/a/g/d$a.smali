.class public Lb/a/g/d$a;
.super Lb/a/g/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/g/d;->b(Ljava/lang/String;Lb/a/g/g/a;Lb/a/g/b;)Lb/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/g/c<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Lb/a/g/g/a;

.field public final synthetic d:Lb/a/g/d;


# direct methods
.method public constructor <init>(Lb/a/g/d;Ljava/lang/String;ILb/a/g/g/a;)V
    .locals 0

    iput-object p1, p0, Lb/a/g/d$a;->d:Lb/a/g/d;

    iput-object p2, p0, Lb/a/g/d$a;->a:Ljava/lang/String;

    iput p3, p0, Lb/a/g/d$a;->b:I

    iput-object p4, p0, Lb/a/g/d$a;->c:Lb/a/g/g/a;

    invoke-direct {p0}, Lb/a/g/c;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lb/a/g/d$a;->d:Lb/a/g/d;

    iget-object v1, p0, Lb/a/g/d$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/g/d;->c(Ljava/lang/String;)V

    return-void
.end method
