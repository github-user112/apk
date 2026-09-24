.class public final La/a/a/a/m/m/d/d$b;
.super Lc/k/b/d;
.source ""

# interfaces
.implements Lc/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/m/m/d/d;-><init>(La/a/a/a/c;La/a/a/a/m/m/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/k/b/d;",
        "Lc/k/a/a<",
        "Landroid/bluetooth/BluetoothAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:La/a/a/a/m/m/d/d;


# direct methods
.method public constructor <init>(La/a/a/a/m/m/d/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/m/m/d/d$b;->b:La/a/a/a/m/m/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/k/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, La/a/a/a/m/m/d/d$b;->b:La/a/a/a/m/m/d/d;

    .line 2
    iget-object v0, v0, La/a/a/a/m/m/d/d;->c:La/a/a/a/c;

    .line 3
    invoke-interface {v0}, La/a/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
