.class Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lguplus/common_api/permission/PermissionsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermsClassLoader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "path"
    .parameter "parent"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
