.class public interface abstract Lcom/samsung/shareshot/Interfaces$FileTransListListener;
.super Ljava/lang/Object;
.source "Interfaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/shareshot/Interfaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FileTransListListener"
.end annotation


# virtual methods
.method public abstract onTaskAdded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
.end method

.method public abstract onTaskEnded(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
.end method

.method public abstract onTaskRemoved(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
.end method

.method public abstract onTaskUpdated(Lcom/samsung/dmc/ux/db/ProcessInfo;)V
.end method
