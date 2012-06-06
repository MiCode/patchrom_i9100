.class Lcom/android/OriginalSettings/SecuritySettings$5;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/OriginalSettings/SecuritySettings$5;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings$5;->this$0:Lcom/android/OriginalSettings/SecuritySettings;

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #calls: Lcom/android/OriginalSettings/SecuritySettings;->updateSIMLockEnable(Z)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->access$300(Lcom/android/OriginalSettings/SecuritySettings;Z)V

    .line 653
    return-void
.end method
