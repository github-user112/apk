.class public Ljavax/jmdns/impl/NameRegister$Factory;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field public static volatile _register:Ljavax/jmdns/impl/NameRegister;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegistry()Ljavax/jmdns/impl/NameRegister;
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;

    invoke-direct {v0}, Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;-><init>()V

    sput-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    return-object v0
.end method

.method public static setRegistry(Ljavax/jmdns/impl/NameRegister;)V
    .locals 1

    sget-object v0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Ljavax/jmdns/impl/NameRegister$Factory;->_register:Ljavax/jmdns/impl/NameRegister;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The register can only be set once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
