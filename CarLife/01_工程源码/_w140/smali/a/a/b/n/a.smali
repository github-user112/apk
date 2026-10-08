.class public final synthetic La/a/b/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic b:La/a/b/n/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/b/n/a;

    invoke-direct {v0}, La/a/b/n/a;-><init>()V

    sput-object v0, La/a/b/n/a;->b:La/a/b/n/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, La/a/b/n/m;->Z:La/a/b/n/m;

    .line 2
    sget-object p1, La/a/b/n/g;->X:La/a/b/n/k;

    .line 3
    sget-object v0, La/a/b/n/f;->Z:La/a/b/n/f;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/n/f;

    invoke-direct {v0}, La/a/b/n/f;-><init>()V

    sput-object v0, La/a/b/n/f;->Z:La/a/b/n/f;

    :cond_0
    sget-object v0, La/a/b/n/f;->Z:La/a/b/n/f;

    .line 4
    invoke-virtual {p1, v0}, La/a/b/n/k;->a(La/a/b/n/g;)V

    return-void
.end method
