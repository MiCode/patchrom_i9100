.class Lcom/android/server/enterprise/kioskmode/KioskModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerPackageRemoveReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 490
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-virtual {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, kioskPackage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    .line 494
    .local v1, isAppInstalled:Z
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getApplicationPolicy()Lcom/android/server/enterprise/ApplicationPolicy;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 498
    .local v0, isAppEnabled:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->getDefaultHomeScreen()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 500
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    #calls: Lcom/android/server/enterprise/kioskmode/KioskModeService;->forceTerminateKiosk()V
    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 503
    .end local v0           #isAppEnabled:Z
    .end local v1           #isAppInstalled:Z
    .end local v2           #kioskPackage:Ljava/lang/String;
    :cond_1
    return-void
.end method
