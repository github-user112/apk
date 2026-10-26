.class public Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

.field public final synthetic val$argsRef:[Ljava/lang/Object;

.field public final synthetic val$timestampFmt:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;Ljava/text/SimpleDateFormat;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iput-object p2, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$timestampFmt:Ljava/text/SimpleDateFormat;

    iput-object p3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$timestampFmt:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[PendingLog @ "

    const-string v2, "] "

    invoke-static {v1, v0, v2}, Le/a/c/a/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v5, 0x5

    if-eq v1, v5, :cond_2

    const/4 v6, 0x6

    if-eq v1, v6, :cond_1

    const/16 v6, 0xfa1

    if-eq v1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v6, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v6, v4

    check-cast v4, Ljava/lang/String;

    aget-object v3, v6, v3

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v6, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v2, v5

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v3, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v3, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v3, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v3, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v3, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->this$0:Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1;->val$logImp:Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0}, Le/a/c/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/tinker/loader/shareutil/TinkerLogInlineFence$1$1;->val$argsRef:[Ljava/lang/Object;

    aget-object v2, v3, v2

    check-cast v2, [Ljava/lang/Object;

    invoke-interface {v1, v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
