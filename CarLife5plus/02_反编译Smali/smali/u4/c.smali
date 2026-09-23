.class public final Lu4/c;
.super Lu4/b;
.source "r8-map-id-a26c202c91e35551b006c3f2644941f88ea22f473e21aa1876e8058911bd3fe3"


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 6
    sget-object p1, Lu4/a;->b:Lu4/a;

    .line 7
    invoke-direct {p0, p1}, Lu4/c;-><init>(Lu4/b;)V

    return-void
.end method

.method public constructor <init>(Lu4/b;)V
    .locals 1

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lu4/b;->a:Ljava/util/LinkedHashMap;

    .line 2
    invoke-static {p1, v0}, Lg9/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lu4/b;-><init>()V

    .line 4
    iget-object v0, p0, Lu4/b;->a:Ljava/util/LinkedHashMap;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
