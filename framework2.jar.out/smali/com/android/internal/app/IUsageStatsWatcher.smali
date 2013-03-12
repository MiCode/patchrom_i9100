.class public interface abstract Lcom/android/internal/app/IUsageStatsWatcher;
.super Ljava/lang/Object;
.source "IUsageStatsWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IUsageStatsWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract notePauseComponent(Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
