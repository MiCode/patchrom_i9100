.class final Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoPowerOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v1, "AutoPowerOff"

    #calls: Lcom/android/server/PowerManagerService;->shutdown(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$2000(Lcom/android/server/PowerManagerService;Ljava/lang/String;)V

    .line 623
    return-void
.end method
