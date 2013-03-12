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
    .line 162
    iput-object p1, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 178
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 179
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

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/RestrictionPolicy;->isStatusBarExpansionAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->enforceStatusBarExpansion(Z)V
    invoke-static {v3, v6}, Lcom/android/server/enterprise/RestrictionPolicy;->access$400(Lcom/android/server/enterprise/RestrictionPolicy;Z)V

    .line 201
    .end local v1           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :goto_1
    return-void

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    #calls: Lcom/android/server/enterprise/RestrictionPolicy;->updateUSBMode()V
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->access$100(Lcom/android/server/enterprise/RestrictionPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 190
    :catch_1
    move-exception v2

    .line 191
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "updateUsbMode failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const-string v3, "android.intent.action.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/RestrictionPolicy$2;->this$0:Lcom/android/server/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Lcom/android/server/enterprise/RestrictionPolicy;->applyBackgroundDataRestriction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 196
    :catch_2
    move-exception v2

    .line 197
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v3, "RestrictionPolicy"

    const-string v4, "Network Policy update failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
