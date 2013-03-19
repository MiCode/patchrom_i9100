.class public Lcom/sec/android/app/camera/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleAdapter;,
        Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 39
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;

    .line 67
    .local v1, listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/sec/android/app/camera/MonitoredActivity;)V

    goto :goto_0

    .line 69
    .end local v1           #listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;

    .line 75
    .local v1, listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/sec/android/app/camera/MonitoredActivity;)V

    goto :goto_0

    .line 77
    .end local v1           #listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;

    .line 83
    .local v1, listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/sec/android/app/camera/MonitoredActivity;)V

    goto :goto_0

    .line 85
    .end local v1           #listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;

    .line 91
    .local v1, listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/sec/android/app/camera/MonitoredActivity;)V

    goto :goto_0

    .line 93
    .end local v1           #listener:Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;
    :cond_0
    return-void
.end method

.method public removeLifeCycleListener(Lcom/sec/android/app/camera/MonitoredActivity$LifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method
