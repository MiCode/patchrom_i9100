.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 9
    .parameter "meteredIfaces"

    .prologue
    .line 1888
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1889
    :try_start_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 1890
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1891
    .local v2, iface:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1893
    .end local v2           #iface:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v6

    const/16 v8, 0xb

    aget-object v5, v6, v8

    .line 1894
    .local v5, network:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_1

    .line 1895
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    .line 1896
    .local v4, linkPropertie:Landroid/net/LinkProperties;
    if-eqz v4, :cond_1

    .line 1897
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1898
    .restart local v2       #iface:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1899
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 1901
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V

    .line 1902
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1910
    .end local v2           #iface:Ljava/lang/String;
    .end local v4           #linkPropertie:Landroid/net/LinkProperties;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v7

    .line 1911
    return-void

    .line 1910
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v5           #network:Landroid/net/NetworkStateTracker;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1903
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #iface:Ljava/lang/String;
    .restart local v3       #len$:I
    .restart local v4       #linkPropertie:Landroid/net/LinkProperties;
    .restart local v5       #network:Landroid/net/NetworkStateTracker;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onRestrictBackgroundChanged(Z)V
    .locals 4
    .parameter "restrictBackground"

    .prologue
    .line 1922
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)I

    move-result v1

    .line 1923
    .local v1, networkType:I
    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1924
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v2, v3, v1

    .line 1925
    .local v2, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v2, :cond_0

    .line 1926
    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1927
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1928
    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    invoke-static {v3, v0}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    .line 1932
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v2           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 4
    .parameter "uid"
    .parameter "uidRules"

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1872
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1873
    .local v0, oldRules:I
    if-ne v0, p2, :cond_0

    monitor-exit v2

    .line 1879
    :goto_0
    return-void

    .line 1875
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    monitor-exit v2

    goto :goto_0

    .end local v0           #oldRules:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
