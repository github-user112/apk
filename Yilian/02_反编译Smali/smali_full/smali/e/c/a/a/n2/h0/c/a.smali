.class public final synthetic Le/c/a/a/n2/h0/c/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Le/c/a/a/n2/h0/c/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/a/a/n2/h0/c/a;

    invoke-direct {v0}, Le/c/a/a/n2/h0/c/a;-><init>()V

    sput-object v0, Le/c/a/a/n2/h0/c/a;->a:Le/c/a/a/n2/h0/c/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
