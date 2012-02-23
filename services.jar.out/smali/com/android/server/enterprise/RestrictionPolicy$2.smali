.class Lcom/android/server/enterprise/RestrictionPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/RestrictionPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/RestrictionPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 104
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 105
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/RestrictionPolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->access$200(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #getter for: Lcom/android/server/enterprise/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionPolicy;->access$300(Lcom/android/server/enterprise/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 116
    .end local v1           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_1
    return-void

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 112
    :catch_1
    move-exception v2

    .line 113
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
