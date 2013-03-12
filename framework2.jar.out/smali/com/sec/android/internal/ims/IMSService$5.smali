.class Lcom/sec/android/internal/ims/IMSService$5;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 629
    const/4 v3, 0x0

    .line 630
    .local v3, isNwkConnect:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, action:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside HiddenMenuChangeReceiver onReceive the action intent is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 633
    const-string v8, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 635
    const-string v8, "Enter if onReceive HiddenMenuChangeReceiver"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 636
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v5

    .line 637
    .local v5, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 639
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    .line 640
    .local v6, nwkTypeName:Ljava/lang/String;
    const-string v8, "CDMA - EvDo rev. A"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 642
    const/4 v3, 0x1

    .line 646
    :cond_0
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-boolean v8, v8, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v8, :cond_2

    .line 648
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 740
    .end local v5           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v6           #nwkTypeName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 651
    .restart local v5       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .restart local v6       #nwkTypeName:Ljava/lang/String;
    :cond_2
    iget-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 653
    const-string v8, "myObject.mAlwaysOnVal and myHiddenMenuObject.mAlwaysOnVal are not equal"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 655
    const-string v8, "0"

    iget-object v9, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v9}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v8

    if-nez v8, :cond_7

    .line 657
    const-string v8, "mAlwaysOnVal flag is set from Cancel to Setup.. calling frmwork init"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 659
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v8

    if-nez v8, :cond_3

    .line 661
    const-string v8, "Initing IMS after change from Cancel to Setup"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 664
    invoke-static {v10}, Lcom/sec/android/internal/ims/IMSService;->access$102(Z)Z

    .line 669
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Telephony Manager Network Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 671
    if-ne v3, v10, :cond_3

    .line 673
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 674
    .local v1, dnsFlag:I
    if-ne v1, v10, :cond_5

    .line 676
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iget-object v9, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    #calls: Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Z

    move-result v8

    if-eq v8, v10, :cond_4

    .line 680
    :try_start_0
    iget-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 681
    .local v7, pcscfAddr:Ljava/net/InetAddress;
    const-string v8, "IMS/IMSService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ip address string = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v7}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->access$900(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v7           #pcscfAddr:Ljava/net/InetAddress;
    :goto_1
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 703
    const-string v8, "registering after enabling in hidden app"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 704
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    const-string v9, "MOBILE"

    invoke-virtual {v8, v9}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, localIP:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 707
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v4}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 708
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local IP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 738
    .end local v1           #dnsFlag:I
    .end local v4           #localIP:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto/16 :goto_0

    .line 683
    .restart local v1       #dnsFlag:I
    :catch_0
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "IMS/IMSService"

    const-string v9, "DNS Query Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto/16 :goto_0

    .line 693
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const-string v8, "IMS/IMSService"

    const-string v9, "Invalid DNS name!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto/16 :goto_0

    .line 700
    :cond_5
    const-string v8, "IMS/IMSService"

    const-string v9, " NO DNS Query required- Using IP "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 712
    .restart local v4       #localIP:Ljava/lang/String;
    :cond_6
    const-string v8, "local IP = null"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 719
    .end local v1           #dnsFlag:I
    .end local v4           #localIP:Ljava/lang/String;
    :cond_7
    const-string v8, "mAlwaysOnVal flag is set from Setup to Cancel.. calling frmwork Deinit"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v8

    if-ne v8, v10, :cond_3

    .line 723
    const-string v8, "De-Initing IMS after change from Cancel to Setup"

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 728
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 729
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sec/android/internal/ims/IMSService;->access$102(Z)Z

    goto :goto_2

    .line 736
    :cond_8
    iget-object v8, p0, Lcom/sec/android/internal/ims/IMSService$5;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v8, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    goto :goto_2
.end method
