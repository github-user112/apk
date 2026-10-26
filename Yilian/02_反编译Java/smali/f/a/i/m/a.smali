.class public final synthetic Lf/a/i/m/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/i/m/a;->a:Landroid/os/Handler;

    iput-wide p2, p0, Lf/a/i/m/a;->b:J

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf/a/i/m/a;->a:Landroid/os/Handler;

    iget-wide v1, p0, Lf/a/i/m/a;->b:J

    invoke-static {v0, v1, v2, p1}, Lf/a/i/m/f;->a(Landroid/os/Handler;JLjava/lang/String;)V

    return-void
.end method
