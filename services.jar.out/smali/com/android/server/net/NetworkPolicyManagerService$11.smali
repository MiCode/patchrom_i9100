.class Lcom/android/server/net/NetworkPolicyManagerService$11;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1790
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 18
    .parameter "msg"

    .prologue
    .line 1793
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1911
    const/16 v16, 0x0

    :goto_0
    return v16

    .line 1795
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 1796
    .local v14, uid:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1797
    .local v15, uidRules:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1798
    .local v4, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 1800
    .local v5, listener:Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_0

    .line 1802
    :try_start_0
    invoke-interface {v5, v14, v15}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1798
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1807
    .end local v5           #listener:Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1808
    const/16 v16, 0x1

    goto :goto_0

    .line 1811
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v14           #uid:I
    .end local v15           #uidRules:I
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Ljava/lang/String;

    move-object/from16 v8, v16

    check-cast v8, [Ljava/lang/String;

    .line 1812
    .local v8, meteredIfaces:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1813
    .restart local v4       #length:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_3

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 1815
    .restart local v5       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_2

    .line 1817
    :try_start_1
    invoke-interface {v5, v8}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1813
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1822
    .end local v5           #listener:Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1823
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1826
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v8           #meteredIfaces:[Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1827
    .local v11, pid:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 1828
    .restart local v14       #uid:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1830
    .local v1, foregroundActivities:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1835
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 1836
    .local v12, pidForeground:Landroid/util/SparseBooleanArray;
    if-nez v12, :cond_4

    .line 1837
    new-instance v12, Landroid/util/SparseBooleanArray;

    .end local v12           #pidForeground:Landroid/util/SparseBooleanArray;
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-direct {v12, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1838
    .restart local v12       #pidForeground:Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1840
    :cond_4
    invoke-virtual {v12, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1842
    monitor-exit v17

    .line 1843
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1842
    .end local v12           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 1846
    .end local v1           #foregroundActivities:Z
    .end local v11           #pid:I
    .end local v14           #uid:I
    :pswitch_3
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1847
    .restart local v11       #pid:I
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    .line 1849
    .restart local v14       #uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1851
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mUidPidForeground:Landroid/util/SparseArray;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    .line 1852
    .restart local v12       #pidForeground:Landroid/util/SparseBooleanArray;
    if-eqz v12, :cond_5

    .line 1853
    invoke-virtual {v12, v11}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->computeUidForegroundLocked(I)V
    invoke-static {v0, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1856
    :cond_5
    monitor-exit v17

    .line 1857
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1856
    .end local v12           #pidForeground:Landroid/util/SparseBooleanArray;
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v16

    .line 1860
    .end local v11           #pid:I
    .end local v14           #uid:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1862
    .local v3, iface:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 1864
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/HashSet;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v16

    if-eqz v16, :cond_6

    .line 1868
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1873
    :goto_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1876
    :cond_6
    monitor-exit v17

    .line 1877
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1876
    :catchall_2
    move-exception v16

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v16

    .line 1880
    .end local v3           #iface:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    if-eqz v16, :cond_8

    const/4 v13, 0x1

    .line 1881
    .local v13, restrictBackground:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1882
    .restart local v4       #length:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_7
    if-ge v2, v4, :cond_9

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 1884
    .restart local v5       #listener:Landroid/net/INetworkPolicyListener;
    if-eqz v5, :cond_7

    .line 1886
    :try_start_7
    invoke-interface {v5, v13}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1882
    :cond_7
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1880
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v5           #listener:Landroid/net/INetworkPolicyListener;
    .end local v13           #restrictBackground:Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    .line 1891
    .restart local v2       #i:I
    .restart local v4       #length:I
    .restart local v13       #restrictBackground:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1892
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1895
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v13           #restrictBackground:Z
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1899
    .local v6, lowestRule:J
    const-wide/16 v16, 0x3e8

    :try_start_8
    div-long v9, v6, v16

    .line 1900
    .local v9, persistThreshold:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v9, v10}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1904
    .end local v9           #persistThreshold:J
    :goto_9
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1907
    .end local v6           #lowestRule:J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v16, v0

    #calls: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static/range {v16 .. v16}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1908
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1803
    .restart local v2       #i:I
    .restart local v4       #length:I
    .restart local v5       #listener:Landroid/net/INetworkPolicyListener;
    .restart local v14       #uid:I
    .restart local v15       #uidRules:I
    :catch_0
    move-exception v16

    goto/16 :goto_2

    .line 1818
    .end local v14           #uid:I
    .end local v15           #uidRules:I
    .restart local v8       #meteredIfaces:[Ljava/lang/String;
    :catch_1
    move-exception v16

    goto/16 :goto_4

    .line 1887
    .end local v8           #meteredIfaces:[Ljava/lang/String;
    .restart local v13       #restrictBackground:Z
    :catch_2
    move-exception v16

    goto :goto_8

    .line 1901
    .end local v2           #i:I
    .end local v4           #length:I
    .end local v5           #listener:Landroid/net/INetworkPolicyListener;
    .end local v13           #restrictBackground:Z
    .restart local v6       #lowestRule:J
    :catch_3
    move-exception v16

    goto :goto_9

    .line 1869
    .end local v6           #lowestRule:J
    .restart local v3       #iface:Ljava/lang/String;
    :catch_4
    move-exception v16

    goto/16 :goto_5

    .line 1793
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
