.class Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/sec_settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/sec_settings/AccessibilitySettings;Lcom/android/sec_settings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1512
    invoke-direct {p0, p1}, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/sec_settings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1516
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1517
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1518
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1523
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1524
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 1528
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1529
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1530
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1535
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1536
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 1541
    const-string v0, "SettingsPackageMonitor"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/sec_settings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    #getter for: Lcom/android/sec_settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/sec_settings/AccessibilitySettings;->access$700(Lcom/android/sec_settings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1545
    :cond_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 1546
    return-void
.end method
