.class public interface abstract Lcom/lguplus/common_api/permission/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# virtual methods
.method public abstract afterAdd(Ljava/lang/String;I)V
.end method

.method public abstract beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract checkByUid(ILjava/lang/String;)Z
.end method

.method public abstract del(Ljava/lang/String;)Z
.end method

.method public abstract getGids(Ljava/lang/String;)[I
.end method

.method public abstract isSystemUid(Ljava/lang/String;)Z
.end method
