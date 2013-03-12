.class Landroid/server/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .locals 0
    .parameter

    .prologue
    .line 2842
    iput-object p1, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2845
    if-nez p2, :cond_1

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2847
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2848
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2849
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2852
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->isAirplaneModeOn()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2853
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x37

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2855
    :cond_2
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x38

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2857
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_3
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2858
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 2860
    .local v7, state:I
    invoke-static {}, Landroid/server/BluetoothService;->access$600()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received ACTION_DOCK_EVENT with State:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_4
    if-nez v7, :cond_5

    .line 2862
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/server/BluetoothService;->access$902(Ljava/lang/String;)Ljava/lang/String;

    .line 2863
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    #setter for: Landroid/server/BluetoothService;->mDockPin:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/server/BluetoothService;->access$1002(Landroid/server/BluetoothService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2865
    :cond_5
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "bluetooth_service_settings"

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2868
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dock_bluetooth_address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/server/BluetoothService;->access$900()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2869
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2879
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #state:I
    :cond_6
    const-string v8, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2880
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->listConnectionNative()I
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->getBluetoothStateInternal()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    .line 2882
    const-string v8, "BluetoothService"

    const-string v9, "All connections disconnected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mBluetoothState:Landroid/server/BluetoothAdapterStateMachine;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Landroid/server/BluetoothAdapterStateMachine;

    move-result-object v8

    const/16 v9, 0x34

    invoke-virtual {v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 2889
    :cond_7
    const-string v8, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED_CUSTOM"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2890
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2891
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/16 v9, 0x15

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/server/BluetoothService;->setScanMode(II)Z

    goto/16 :goto_0

    .line 2897
    :cond_8
    const-string v8, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2898
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 2899
    .local v5, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intent IT Policy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Tethering IT Policy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isTetheringOn? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v10}, Landroid/server/BluetoothService;->isTetheringOn()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2902
    const/4 v8, 0x0

    invoke-static {v8}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2903
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->disable(Z)Z

    .line 2904
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2914
    :cond_9
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2915
    const-string v8, "BluetoothService"

    const-string v9, "Disable Bluetooth Tethering"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8}, Landroid/server/BluetoothService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2917
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v8, v2}, Landroid/server/BluetoothService;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    .line 2905
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 2906
    const/4 v8, 0x1

    invoke-static {v8}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2907
    const-string/jumbo v8, "service.bt.security.policy.mode"

    const-string v9, "1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 2909
    :cond_b
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 2910
    const/4 v8, 0x2

    invoke-static {v8}, Landroid/server/BluetoothService;->access$202(I)I

    .line 2911
    const-string/jumbo v8, "service.bt.security.policy.mode"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2919
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_c
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->setBluetoothTethering(Z)V

    goto/16 :goto_0

    .line 2923
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_d
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2926
    const-string v8, "BluetoothService"

    const-string v9, " Received BOOT_COMPLETED message"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2930
    :cond_e
    const-string v8, "com.sktelecom.dmc.intent.action.DCMO_BT_SET"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2931
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_BT_SecurityMdmService"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2932
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2933
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    const-string v8, "BLUETOOTH_ON"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2934
    .local v1, controlValue:I
    const-string v8, "bluetooth_on"

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_0

    .line 2935
    const/4 v8, 0x1

    if-ne v1, v8, :cond_f

    .line 2936
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2937
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2939
    :cond_f
    if-nez v1, :cond_0

    .line 2940
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_0

    .line 2946
    .end local v1           #controlValue:I
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_10
    const-string v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2947
    iget-object v8, p0, Landroid/server/BluetoothService$2;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v8}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v8

    const-string/jumbo v9, "phoneinECMState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v8, Landroid/server/BluetoothEventLoop;->mEmergencyCallbackMode:Z

    goto/16 :goto_0
.end method
