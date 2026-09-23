.class public Le/e/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/a$b;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:Ljava/text/SimpleDateFormat;

.field public final c:Le/e/a/f;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/e/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/e/a/a$b;Le/e/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Le/e/a/a$b;->a:Ljava/util/Date;

    iput-object p2, p0, Le/e/a/a;->a:Ljava/util/Date;

    iget-object p2, p1, Le/e/a/a$b;->b:Ljava/text/SimpleDateFormat;

    iput-object p2, p0, Le/e/a/a;->b:Ljava/text/SimpleDateFormat;

    iget-object p2, p1, Le/e/a/a$b;->c:Le/e/a/f;

    iput-object p2, p0, Le/e/a/a;->c:Le/e/a/f;

    iget-object p1, p1, Le/e/a/a$b;->d:Ljava/lang/String;

    iput-object p1, p0, Le/e/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static b()Le/e/a/a$b;
    .locals 2

    new-instance v0, Le/e/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/e/a/a$b;-><init>(Le/e/a/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    .line 2
    iget-object v3, p0, Le/e/a/a;->d:Ljava/lang/String;

    if-ne v3, p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_4

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/e/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    iget-object p2, p0, Le/e/a/a;->d:Ljava/lang/String;

    .line 5
    :goto_3
    iget-object v1, p0, Le/e/a/a;->a:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/e/a/a;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/e/a/a;->b:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Le/e/a/a;->a:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    const-string v3, "UNKNOWN"

    goto :goto_4

    :pswitch_0
    const-string v3, "ASSERT"

    goto :goto_4

    :pswitch_1
    const-string v3, "ERROR"

    goto :goto_4

    :pswitch_2
    const-string v3, "WARN"

    goto :goto_4

    :pswitch_3
    const-string v3, "INFO"

    goto :goto_4

    :pswitch_4
    const-string v3, "DEBUG"

    goto :goto_4

    :pswitch_5
    const-string v3, "VERBOSE"

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Le/e/a/a;->e:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Le/e/a/a;->e:Ljava/lang/String;

    const-string v3, " <br> "

    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Le/e/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/e/a/a;->c:Le/e/a/f;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p2, Le/e/a/c;

    if-eqz p3, :cond_6

    .line 6
    iget-object p2, p2, Le/e/a/c;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 7
    :cond_6
    throw v0

    .line 8
    :cond_7
    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
