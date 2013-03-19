.class Lcom/android/settings/guide/BtSettingsGuider$6;
.super Landroid/content/BroadcastReceiver;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/BtSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/settings/guide/BtSettingsGuider$6;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider$6;->this$0:Lcom/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->fromAction(Ljava/lang/String;)Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;

    move-result-object v2

    #calls: Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    invoke-static {v1, v2, p2}, Lcom/android/settings/guide/BtSettingsGuider;->access$200(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    .line 539
    return-void
.end method
