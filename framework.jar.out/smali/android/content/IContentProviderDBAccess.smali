.class public interface abstract Landroid/content/IContentProviderDBAccess;
.super Ljava/lang/Object;
.source "IContentProviderDBAccess.java"


# virtual methods
.method public abstract beginDBTransaction(Ljava/lang/String;)V
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method public abstract endDBTransaction(Z)V
.end method

.method public abstract getMediaDBSynchronizedObject()Ljava/lang/Object;
.end method

.method public abstract setDBTransactionSuccessful()V
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
