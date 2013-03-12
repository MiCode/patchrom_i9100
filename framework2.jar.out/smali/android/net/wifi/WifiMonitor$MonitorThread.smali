.class Landroid/net/wifi/WifiMonitor$MonitorThread;
.super Ljava/lang/Thread;
.source "WifiMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiMonitor;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiMonitor;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    .line 476
    const-string v0, "WifiMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method private connectToSupplicant()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 716
    const/4 v0, 0x0

    .line 719
    .local v0, connectTries:I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 728
    :goto_1
    return v2

    .line 722
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #connectTries:I
    .local v1, connectTries:I
    const/4 v3, 0x5

    if-ge v0, v3, :cond_1

    .line 723
    #calls: Landroid/net/wifi/WifiMonitor;->nap(I)V
    invoke-static {v2}, Landroid/net/wifi/WifiMonitor;->access$500(I)V

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_0

    .line 728
    .end local v0           #connectTries:I
    .restart local v1       #connectTries:I
    :cond_1
    const/4 v2, 0x0

    move v0, v1

    .end local v1           #connectTries:I
    .restart local v0       #connectTries:I
    goto :goto_1
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 732
    if-nez p1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    const-string v0, "HANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400c

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method private handleHostApEvents(Ljava/lang/String;)V
    .locals 4
    .parameter "dataString"

    .prologue
    const/4 v3, 0x0

    .line 940
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, tokens:[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "AP-STA-CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x2402a

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    aget-object v1, v0, v3

    const-string v2, "AP-STA-DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v1}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x24029

    new-instance v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v3, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleP2pEvents(Ljava/lang/String;)V
    .locals 9
    .parameter "dataString"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 870
    const-string v5, "P2P-DEVICE-FOUND"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24015

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    const-string v5, "P2P-DEVICE-LOST"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 873
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24016

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 874
    :cond_2
    const-string v5, "P2P-FIND-STOPPED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 875
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24025

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 876
    :cond_3
    const-string v5, "P2P-GO-NEG-REQUEST"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 877
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24017

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 879
    :cond_4
    const-string v5, "P2P-GO-NEG-SUCCESS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 880
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24019

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 881
    :cond_5
    const-string v5, "P2P-GO-NEG-FAILURE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 882
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 883
    .local v4, tokens:[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v8, :cond_0

    .line 884
    aget-object v5, v4, v7

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, nameValue:[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v8, :cond_0

    .line 886
    const/4 v3, -0x1

    .line 888
    .local v3, status:I
    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 892
    :goto_1
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2401a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "WifiMonitor"

    const-string v6, "Invalid status code"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 893
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #nameValue:[Ljava/lang/String;
    .end local v3           #status:I
    .end local v4           #tokens:[Ljava/lang/String;
    :cond_6
    const-string v5, "P2P-GROUP-FORMATION-SUCCESS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 894
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x2401b

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 895
    :cond_7
    const-string v5, "P2P-GROUP-FORMATION-FAILURE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 896
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x2401c

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 897
    :cond_8
    const-string v5, "P2P-GROUP-STARTED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 898
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x2401d

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 899
    :cond_9
    const-string v5, "P2P-GROUP-REMOVED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 900
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x2401e

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 901
    :cond_a
    const-string v5, "P2P-INVITATION-RECEIVED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 902
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x2401f

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 904
    :cond_b
    const-string v5, "P2P-INVITATION-RESULT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 905
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 906
    .restart local v4       #tokens:[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v8, :cond_0

    .line 907
    aget-object v5, v4, v7

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 908
    .restart local v2       #nameValue:[Ljava/lang/String;
    array-length v5, v2

    if-ne v5, v8, :cond_0

    .line 909
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24020

    aget-object v7, v2, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 910
    .end local v2           #nameValue:[Ljava/lang/String;
    .end local v4           #tokens:[Ljava/lang/String;
    :cond_c
    const-string v5, "P2P-PROV-DISC-PBC-REQ"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 911
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24021

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 913
    :cond_d
    const-string v5, "P2P-PROV-DISC-PBC-RESP"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 914
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24022

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 916
    :cond_e
    const-string v5, "P2P-PROV-DISC-ENTER-PIN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 917
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24023

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 919
    :cond_f
    const-string v5, "P2P-PROV-DISC-SHOW-PIN"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 920
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24024

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;

    invoke-direct {v7, p1}, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 922
    :cond_10
    const-string v5, "P2P-SERV-DISC-RESP"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 923
    invoke-static {p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->newInstance(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 924
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    if-eqz v1, :cond_11

    .line 925
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24026

    invoke-virtual {v5, v6, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 927
    :cond_11
    const-string v5, "WifiMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Null service resp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 929
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;>;"
    :cond_12
    const-string v5, "P2P-BOOSTER-ENABLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 930
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24027

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 931
    :cond_13
    const-string v5, "P2P-BOOSTER-DISABLE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 932
    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const v6, 0x24028

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0
.end method

.method private handleSupplicantStateChange(Ljava/lang/String;)V
    .locals 20
    .parameter "dataString"

    .prologue
    .line 956
    const/4 v3, 0x0

    .line 957
    .local v3, SSID:Ljava/lang/String;
    const-string v17, "SSID="

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 958
    .local v8, index:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    add-int/lit8 v17, v8, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    :cond_0
    const-string v17, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 961
    .local v5, dataTokens:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 962
    .local v2, BSSID:Ljava/lang/String;
    const/4 v11, -0x1

    .line 963
    .local v11, networkId:I
    const/4 v12, -0x1

    .line 964
    .local v12, newState:I
    move-object v4, v5

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v15, v4, v7

    .line 965
    .local v15, token:Ljava/lang/String;
    const-string v17, "="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 966
    .local v10, nameValue:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 964
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 970
    :cond_2
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "BSSID"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 971
    const/16 v17, 0x1

    aget-object v2, v10, v17

    .line 972
    goto :goto_1

    .line 977
    :cond_3
    const/16 v17, 0x1

    :try_start_0
    aget-object v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 982
    .local v16, value:I
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 983
    move/from16 v11, v16

    goto :goto_1

    .line 978
    .end local v16           #value:I
    :catch_0
    move-exception v6

    .line 979
    .local v6, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 984
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v16       #value:I
    :cond_4
    const/16 v17, 0x0

    aget-object v17, v10, v17

    const-string v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 985
    move/from16 v12, v16

    goto :goto_1

    .line 989
    .end local v10           #nameValue:[Ljava/lang/String;
    .end local v15           #token:Ljava/lang/String;
    .end local v16           #value:I
    :cond_5
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_6

    .line 1002
    .end local v4           #arr$:[Ljava/lang/String;
    :goto_2
    return-void

    .line 991
    .restart local v4       #arr$:[Ljava/lang/String;
    :cond_6
    sget-object v13, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 992
    .local v13, newSupplicantState:Landroid/net/wifi/SupplicantState;
    invoke-static {}, Landroid/net/wifi/SupplicantState;->values()[Landroid/net/wifi/SupplicantState;

    move-result-object v4

    .local v4, arr$:[Landroid/net/wifi/SupplicantState;
    array-length v9, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_7

    aget-object v14, v4, v7

    .line 993
    .local v14, state:Landroid/net/wifi/SupplicantState;
    invoke-virtual {v14}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v12, :cond_9

    .line 994
    move-object v13, v14

    .line 998
    .end local v14           #state:Landroid/net/wifi/SupplicantState;
    :cond_7
    sget-object v17, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 999
    const-string v17, "WifiMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Invalid supplicant state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v3, v2, v13}, Landroid/net/wifi/WifiMonitor;->notifySupplicantStateChange(ILjava/lang/String;Ljava/lang/String;Landroid/net/wifi/SupplicantState;)V

    goto :goto_2

    .line 992
    .restart local v14       #state:Landroid/net/wifi/SupplicantState;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method private handleWpsFailEvent(Ljava/lang/String;)V
    .locals 9
    .parameter "dataString"

    .prologue
    const v8, 0x24009

    const/4 v7, 0x0

    .line 830
    const-string v4, "WPS-FAIL msg=\\d+(?: config_error=(\\d+))?(?: reason=(\\d+))?"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 831
    .local v2, p:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 832
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 833
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, cfgErr:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 836
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 837
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 848
    :cond_0
    if-eqz v0, :cond_1

    .line 849
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 862
    .end local v0           #cfgErr:Ljava/lang/String;
    .end local v3           #reason:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    invoke-virtual {v5, v8, v7, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 864
    :goto_0
    return-void

    .line 839
    .restart local v0       #cfgErr:Ljava/lang/String;
    .restart local v3       #reason:Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 843
    :pswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 851
    :sswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 855
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v4}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v5}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 849
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method handleAssocRejectEvent()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400e

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1010
    return-void
.end method

.method handleEvent(ILjava/lang/String;)V
    .locals 3
    .parameter "event"
    .parameter "remainder"

    .prologue
    const/16 v2, 0xc

    .line 747
    sparse-switch p1, :sswitch_data_0

    .line 811
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    if-ne p1, v2, :cond_0

    .line 813
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->notifyShowEapMessageDialog(Ljava/lang/String;)V

    .line 817
    :cond_0
    sget-boolean v0, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_1

    .line 818
    if-ne p1, v2, :cond_2

    .line 819
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->notifyShowEapMessageDialog(Ljava/lang/String;)V

    .line 827
    :cond_1
    :goto_1
    return-void

    .line 749
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Landroid/net/wifi/WifiMonitor;->handleNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiMonitor;->access$600(Landroid/net/wifi/WifiMonitor;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24005

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 761
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x2400d

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 767
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    const v1, 0x24065

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 820
    :cond_2
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 821
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$700()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    const-string v0, "WifiMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set ssid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v0}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiStateMachine;->tryingSSID(Ljava/lang/String;)V

    goto :goto_1

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0xa -> :sswitch_3
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method handleKtNotification(Ljava/lang/String;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x0

    .line 1017
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, dataTokens:[Ljava/lang/String;
    const/4 v2, -0x1

    .line 1019
    .local v2, code:I
    const/4 v0, -0x1

    .line 1021
    .local v0, akaNoti:I
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v8, v1, v5

    .line 1022
    .local v8, token:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1023
    .local v7, nameValue:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 1021
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    const/4 v10, 0x1

    :try_start_0
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1034
    .local v9, value:I
    aget-object v10, v7, v12

    const-string v11, "code"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1035
    move v2, v9

    goto :goto_1

    .line 1030
    .end local v9           #value:I
    :catch_0
    move-exception v4

    .line 1031
    .local v4, e:Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 1036
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v9       #value:I
    :cond_2
    aget-object v10, v7, v12

    const-string v11, "akaNoti"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1037
    move v0, v9

    goto :goto_1

    .line 1041
    .end local v7           #nameValue:[Ljava/lang/String;
    .end local v8           #token:Ljava/lang/String;
    .end local v9           #value:I
    :cond_3
    iget-object v10, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v10}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v10

    iget-object v11, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v11}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v11

    const v12, 0x2406f

    invoke-virtual {v11, v12, v2, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1042
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 481
    invoke-direct {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->connectToSupplicant()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 484
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24001

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 492
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$100(Landroid/net/wifi/WifiMonitor;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->waitForEvent()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, eventStr:Ljava/lang/String;
    const-string v6, "CTRL-EVENT-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 501
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "certificate initialization failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_2

    .line 504
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24010

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 486
    .end local v3           #eventStr:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 713
    :goto_1
    return-void

    .line 507
    .restart local v3       #eventStr:Ljava/lang/String;
    :cond_2
    const-string v6, "WAPI:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "authentication failed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 510
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400f

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 513
    :cond_3
    const-string v6, "WPA:"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "pre-shared key may be incorrect"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 518
    const-string v6, "WPS-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 519
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v6, v3, v9}, Landroid/net/wifi/WifiMonitor;->notifyAuthenticationFailure(Ljava/lang/String;Z)V

    goto :goto_0

    .line 521
    :cond_4
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24007

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 523
    :cond_5
    const-string v6, "WPS-SUCCESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 524
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24008

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 525
    :cond_6
    const-string v6, "WPS-FAIL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 526
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleWpsFailEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 527
    :cond_7
    const-string v6, "WPS-OVERLAP-DETECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 528
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400a

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 529
    :cond_8
    const-string v6, "WPS-TIMEOUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 530
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x2400b

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 531
    :cond_9
    const-string v6, "P2P"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 532
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleP2pEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 533
    :cond_a
    const-string v6, "AP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 534
    invoke-direct {p0, v3}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleHostApEvents(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    :cond_b
    const-string v6, "REQ-PASSPHRASE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 538
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x20118

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 541
    :cond_c
    const-string v6, "KT-NOTIFICATION"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 547
    :cond_d
    invoke-static {}, Landroid/net/wifi/WifiMonitor;->access$200()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, eventName:Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 549
    .local v5, nameEnd:I
    if-eq v5, v8, :cond_e

    .line 550
    invoke-virtual {v2, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 551
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 559
    const-string v6, "CONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 560
    const/4 v0, 0x1

    .line 595
    .local v0, event:I
    :goto_2
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 596
    const-string v6, "EAP-NOTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 597
    const/16 v0, 0xc

    .line 605
    :cond_f
    const-string v6, "ACTION-FRAME-VS-WES"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 606
    const/16 v0, 0x65

    .line 610
    :cond_10
    sget-boolean v6, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v6, :cond_11

    .line 611
    const-string v6, "EAP-NOTIFICATION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 612
    const/16 v0, 0xc

    .line 618
    :cond_11
    :goto_3
    move-object v1, v3

    .line 619
    .local v1, eventData:Ljava/lang/String;
    if-eq v0, v12, :cond_12

    const/4 v6, 0x5

    if-ne v0, v6, :cond_22

    .line 620
    :cond_12
    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v1, v6, v10

    .line 647
    :cond_13
    :goto_4
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mEapMethod:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$300(Landroid/net/wifi/WifiMonitor;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 648
    const/16 v6, 0xc

    if-ne v0, v6, :cond_14

    .line 649
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 650
    .local v4, ind:I
    if-eq v4, v8, :cond_14

    .line 651
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 655
    .end local v4           #ind:I
    :cond_14
    sget-boolean v6, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    if-eqz v6, :cond_15

    .line 656
    const/16 v6, 0xc

    if-ne v0, v6, :cond_28

    .line 657
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 658
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_15

    .line 659
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 669
    .end local v4           #ind:I
    :cond_15
    :goto_5
    if-ne v0, v11, :cond_29

    .line 670
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleSupplicantStateChange(Ljava/lang/String;)V

    .line 711
    :cond_16
    :goto_6
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #setter for: Landroid/net/wifi/WifiMonitor;->mRecvErrors:I
    invoke-static {v6, v9}, Landroid/net/wifi/WifiMonitor;->access$402(Landroid/net/wifi/WifiMonitor;I)I

    goto/16 :goto_0

    .line 561
    .end local v0           #event:I
    .end local v1           #eventData:Ljava/lang/String;
    :cond_17
    const-string v6, "DISCONNECTED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 562
    const/4 v0, 0x2

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 563
    .end local v0           #event:I
    :cond_18
    const-string v6, "STATE-CHANGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 564
    const/4 v0, 0x3

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 565
    .end local v0           #event:I
    :cond_19
    const-string v6, "SCAN-RESULTS"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 566
    const/4 v0, 0x4

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 567
    .end local v0           #event:I
    :cond_1a
    const-string v6, "LINK-SPEED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 568
    const/4 v0, 0x5

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 569
    .end local v0           #event:I
    :cond_1b
    const-string v6, "TERMINATING"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 570
    const/4 v0, 0x6

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 571
    .end local v0           #event:I
    :cond_1c
    const-string v6, "DRIVER-STATE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 572
    const/4 v0, 0x7

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 573
    .end local v0           #event:I
    :cond_1d
    const-string v6, "EAP-FAILURE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 574
    const/16 v0, 0x8

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 575
    .end local v0           #event:I
    :cond_1e
    const-string v6, "NO-CONNECTION"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 576
    const/16 v0, 0xa

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 577
    .end local v0           #event:I
    :cond_1f
    const-string v6, "ASSOC-REJECT"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 578
    const/16 v0, 0xb

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 580
    .end local v0           #event:I
    :cond_20
    const/16 v0, 0x9

    .restart local v0       #event:I
    goto/16 :goto_2

    .line 613
    :cond_21
    const-string v6, "TRYING-ASSOC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 614
    const/16 v0, 0xd

    goto/16 :goto_3

    .line 621
    .restart local v1       #eventData:Ljava/lang/String;
    :cond_22
    if-eq v0, v11, :cond_23

    const/16 v6, 0x8

    if-ne v0, v6, :cond_24

    .line 622
    :cond_23
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 623
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_13

    .line 624
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 626
    .end local v4           #ind:I
    :cond_24
    const/16 v6, 0xa

    if-ne v0, v6, :cond_25

    .line 627
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 629
    :cond_25
    const/16 v6, 0x65

    if-ne v0, v6, :cond_26

    .line 631
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 632
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_13

    .line 633
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 637
    .end local v4           #ind:I
    :cond_26
    const/16 v6, 0xb

    if-ne v0, v6, :cond_27

    .line 638
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 640
    :cond_27
    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 641
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_13

    .line 642
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 661
    .end local v4           #ind:I
    :cond_28
    const/16 v6, 0xd

    if-ne v0, v6, :cond_15

    .line 662
    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 663
    .restart local v4       #ind:I
    if-eq v4, v8, :cond_15

    .line 664
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 671
    .end local v4           #ind:I
    :cond_29
    if-ne v0, v12, :cond_2a

    .line 672
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleDriverEvent(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 673
    :cond_2a
    const/4 v6, 0x6

    if-ne v0, v6, :cond_2c

    .line 678
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24046

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 685
    const-string v6, "recv error"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 686
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$404(Landroid/net/wifi/WifiMonitor;)I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_0

    .line 696
    :cond_2b
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    #getter for: Landroid/net/wifi/WifiMonitor;->mStateMachine:Lcom/android/internal/util/StateMachine;
    invoke-static {v6}, Landroid/net/wifi/WifiMonitor;->access$000(Landroid/net/wifi/WifiMonitor;)Lcom/android/internal/util/StateMachine;

    move-result-object v6

    const v7, 0x24002

    invoke-virtual {v6, v7}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_1

    .line 698
    :cond_2c
    const/16 v6, 0x8

    if-ne v0, v6, :cond_2d

    .line 699
    const-string v6, "EAP authentication failed"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 701
    iget-object v6, p0, Landroid/net/wifi/WifiMonitor$MonitorThread;->this$0:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v6, v3, v10}, Landroid/net/wifi/WifiMonitor;->notifyAuthenticationFailure(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 706
    :cond_2d
    const/16 v6, 0xb

    if-ne v0, v6, :cond_2e

    .line 707
    invoke-virtual {p0}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleAssocRejectEvent()V

    goto/16 :goto_6

    .line 709
    :cond_2e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMonitor$MonitorThread;->handleEvent(ILjava/lang/String;)V

    goto/16 :goto_6
.end method
