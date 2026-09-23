.class public Ld/d/a/b;
.super Ld/d/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    new-instance v0, Ld/d/a/b$a;

    invoke-direct {v0, p0}, Ld/d/a/b$a;-><init>(Ld/d/a/b;)V

    sput-object v0, Ld/d/a/h;->h:Ld/d/a/h$a;

    return-void
.end method
