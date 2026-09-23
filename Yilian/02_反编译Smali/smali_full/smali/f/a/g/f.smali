.class public final synthetic Lf/a/g/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lf/a/g/j;

.field public final synthetic b:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

.field public final synthetic c:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;


# direct methods
.method public synthetic constructor <init>(Lf/a/g/j;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a/g/f;->a:Lf/a/g/j;

    iput-object p2, p0, Lf/a/g/f;->b:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    iput-object p3, p0, Lf/a/g/f;->c:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lf/a/g/f;->a:Lf/a/g/j;

    iget-object v1, p0, Lf/a/g/f;->b:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;

    iget-object v2, p0, Lf/a/g/f;->c:Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;

    invoke-virtual {v0, v1, v2}, Lf/a/g/j;->h(Lnet/easyconn/ecsdk/ECTypes$ECTouchEventData;Lnet/easyconn/ecsdk/ECTypes$ECTouchEventType;)V

    return-void
.end method
