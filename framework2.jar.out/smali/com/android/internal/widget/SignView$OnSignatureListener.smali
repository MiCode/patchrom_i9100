.class public interface abstract Lcom/android/internal/widget/SignView$OnSignatureListener;
.super Ljava/lang/Object;
.source "SignView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SignView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSignatureListener"
.end annotation


# virtual methods
.method public abstract notifySignServiceError()V
.end method

.method public abstract onAddSignFailed(I)V
.end method

.method public abstract onAddSignSucceeded(I)V
.end method

.method public abstract onSignatureCleared()V
.end method

.method public abstract onSignatureDetected()V
.end method

.method public abstract onSignatureInputting()V
.end method

.method public abstract onSignatureStart()V
.end method
