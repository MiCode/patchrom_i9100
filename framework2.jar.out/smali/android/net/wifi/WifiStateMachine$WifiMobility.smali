.class Landroid/net/wifi/WifiStateMachine$WifiMobility;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiMobility"
.end annotation


# instance fields
.field mAddNextWithoutCheck:Z

.field private mEAPGeneral:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPTemporar:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIgnorableId:Ljava/lang/Integer;

.field private mLastSSID:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 646
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    .line 647
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    .line 648
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    .line 649
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    .line 650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    .line 651
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 652
    return-void
.end method


# virtual methods
.method public addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 5
    .parameter "Id"
    .parameter "code"
    .parameter "lSSID"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 750
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 751
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 752
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 756
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    const-string v0, "WifiMobilityEAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added newnetwork tempor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " general: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 766
    :goto_1
    return v0

    .line 755
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 761
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 763
    :cond_4
    :goto_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network upgraded tempor:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " general: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    .line 766
    goto/16 :goto_1

    .line 762
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method public checkScanResults()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 685
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v6

    .line 686
    .local v6, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 687
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 688
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 689
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 690
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    iget v7, v5, Landroid/net/wifi/ScanResult;->level:I

    sget v8, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    if-ge v7, v8, :cond_3

    .line 691
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 692
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 693
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 694
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v7, :cond_2

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 695
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v7, v10, :cond_2

    .line 696
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 697
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignorable is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " had RSSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disabling it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 688
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 707
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 708
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 709
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 710
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v7, v10, :cond_2

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 711
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    .line 712
    const/4 v7, 0x0

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 713
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 714
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " level is high enough, enabling it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 723
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v6           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_0
    move-exception v2

    .line 724
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method public clearIgnorableId()V
    .locals 1

    .prologue
    .line 661
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 662
    return-void
.end method

.method public deleteEAP(Ljava/lang/Integer;)V
    .locals 4
    .parameter "Id"

    .prologue
    .line 774
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting : gen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 778
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 779
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 780
    return-void
.end method

.method public findEAP(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "lSSID"

    .prologue
    .line 738
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 739
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 740
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 741
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string v2, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found SSID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 747
    .end local v0           #i:I
    :goto_1
    return-object v1

    .line 739
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 747
    .end local v0           #i:I
    :cond_2
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 673
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    const/4 v0, 0x1

    .line 680
    :goto_0
    return v0

    .line 675
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    const/4 v0, 0x2

    goto :goto_0

    .line 677
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    const/4 v0, 0x3

    goto :goto_0

    .line 680
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 664
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 670
    :cond_0
    :goto_0
    return v0

    .line 666
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 668
    goto :goto_0

    .line 670
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public handleEAP(Ljava/lang/String;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 782
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handling message:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v6, "Not subscribed to the requested service"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 784
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 785
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 786
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 787
    .local v2, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 788
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 789
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_0

    .line 793
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 794
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail on SSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_3
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_4
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 800
    :cond_5
    const/4 v0, -0x1

    .line 801
    .local v0, AddEAPcode:I
    const/4 v1, -0x1

    .line 802
    .local v1, EAPdisableCode:I
    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 803
    const/4 v0, 0x1

    .line 804
    const/16 v1, 0x9

    .line 806
    :cond_6
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 807
    const/4 v0, 0x2

    .line 808
    const/16 v1, 0x8

    .line 810
    :cond_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 811
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 812
    .local v5, temp:Ljava/lang/Integer;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->findEAP(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 813
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 814
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 815
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 816
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 817
    .restart local v2       #conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 818
    :cond_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 819
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_1

    .line 822
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    .line 844
    .end local v0           #AddEAPcode:I
    .end local v1           #EAPdisableCode:I
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/lang/Integer;
    :cond_b
    :goto_2
    return-void

    .line 825
    .restart local v0       #AddEAPcode:I
    .restart local v1       #EAPdisableCode:I
    .restart local v5       #temp:Ljava/lang/Integer;
    :cond_c
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 826
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 827
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 828
    .restart local v2       #conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_e

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 829
    :cond_e
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 830
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_f
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 833
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 834
    const-string v6, "WifiMobilityEAP"

    const-string v7, "not subscribed handled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 837
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_10
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    goto :goto_2

    .line 841
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/lang/Integer;
    :cond_11
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 655
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setIgnorableId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "Id"

    .prologue
    .line 658
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 659
    return-void
.end method

.method public setLastSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "lSSID"

    .prologue
    .line 735
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    .line 736
    return-void
.end method

.method public shouldBlock(Ljava/lang/Integer;)Z
    .locals 3
    .parameter "Id"

    .prologue
    const/4 v2, 0x3

    .line 770
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 771
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unLockMobilityByNetID(Ljava/lang/Integer;)V
    .locals 3
    .parameter "snetID"

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    .line 729
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received mnetID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setIgnorableId(Ljava/lang/Integer;)V

    .line 733
    return-void
.end method
