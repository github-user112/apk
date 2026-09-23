.class public Lf/a/k/l0/e3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/k/n0/j$c;


# instance fields
.field public final synthetic a:Lf/a/k/l0/g3;


# direct methods
.method public constructor <init>(Lf/a/k/l0/g3;)V
    .locals 0

    iput-object p1, p0, Lf/a/k/l0/e3;->a:Lf/a/k/l0/g3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object p1, p0, Lf/a/k/l0/e3;->a:Lf/a/k/l0/g3;

    iget-object p1, p1, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    const v0, 0x13880

    const/16 v1, 0x2a

    const-string v2, "EC_ABOUT_OTA_CANCEL"

    invoke-interface {p1, v0, v1, v2}, Lf/a/k/k0/a;->a(IILjava/lang/String;)V

    iget-object p1, p0, Lf/a/k/l0/e3;->a:Lf/a/k/l0/g3;

    iget-object p1, p1, Lf/a/k/l0/g3;->k:Lf/a/k/k0/a;

    invoke-interface {p1}, Lf/a/k/k0/a;->E()V

    return-void
.end method
