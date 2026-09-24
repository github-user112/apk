.class public final Lcom/boottask/ExecService$EventTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final this$0:Lcom/boottask/ExecService;

.field private final event:Ljava/lang/String;


.method constructor <init>(Lcom/boottask/ExecService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/boottask/ExecService$EventTask;->this$0:Lcom/boottask/ExecService;

    iput-object p2, p0, Lcom/boottask/ExecService$EventTask;->event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/boottask/ExecService$EventTask;->this$0:Lcom/boottask/ExecService;

    iget-object v1, p0, Lcom/boottask/ExecService$EventTask;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boottask/ExecService;->run(Ljava/lang/String;)V

    return-void
.end method
