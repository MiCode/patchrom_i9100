.class Lcom/android/server/am/MultiWindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 85
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    .line 86
    return-void
.end method
