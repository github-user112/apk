.class public abstract Lf/a/i/k/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:J

.field public final b:J

.field public c:J

.field public d:Z

.field public e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/a/i/k/a;->d:Z

    new-instance v0, Lf/a/i/k/a$a;

    invoke-direct {v0, p0}, Lf/a/i/k/a$a;-><init>(Lf/a/i/k/a;)V

    iput-object v0, p0, Lf/a/i/k/a;->e:Landroid/os/Handler;

    iput-wide p1, p0, Lf/a/i/k/a;->a:J

    iput-wide p3, p0, Lf/a/i/k/a;->b:J

    return-void
.end method


# virtual methods
.method public abstract a(J)V
.end method
