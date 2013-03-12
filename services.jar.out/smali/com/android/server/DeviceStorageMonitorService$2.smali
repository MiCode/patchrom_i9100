.class Lcom/android/server/DeviceStorageMonitorService$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$402(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 139
    return-void
.end method
