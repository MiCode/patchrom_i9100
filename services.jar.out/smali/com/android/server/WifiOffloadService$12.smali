.class Lcom/android/server/WifiOffloadService$12;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1877
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 1880
    const/4 v13, 0x0

    .line 1881
    .local v13, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, -0x1

    .line 1882
    .local v4, uid:I
    const-wide/16 v19, 0x0

    .line 1883
    .local v19, totalDataUsage:J
    const/4 v12, 0x0

    .line 1885
    .local v12, appLaunchCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2, v6}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "WiFi is already connected; return false"

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)V

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1896
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1900(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1897
    iget v0, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1898
    .end local v4           #uid:I
    .local v21, uid:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APP UID == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1901
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v2, v2, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v3, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "data_usage"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1902
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 1903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor count == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1904
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$12;->val$packageName:Ljava/lang/String;

    move/from16 v0, v21

    #calls: Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z
    invoke-static {v2, v0, v6}, Lcom/android/server/WifiOffloadService;->access$2000(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)V

    move/from16 v4, v21

    .line 1909
    .end local v21           #uid:I
    .restart local v4       #uid:I
    goto/16 :goto_0

    .line 1911
    .end local v4           #uid:I
    .restart local v21       #uid:I
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1913
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1914
    const-string v2, "launchcount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launch count in DB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1918
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1926
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LAUNCH COUNT  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v4, v21

    .line 1933
    .end local v21           #uid:I
    .restart local v4       #uid:I
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1934
    .local v3, template:Landroid/net/NetworkTemplate;
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v18

    .line 1936
    .local v18, mStatsService:Landroid/net/INetworkStatsService;
    if-eqz v18, :cond_6

    if-eqz v3, :cond_6

    .line 1938
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-interface/range {v18 .. v18}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    #setter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2, v6}, Lcom/android/server/WifiOffloadService;->access$2202(Lcom/android/server/WifiOffloadService;Landroid/net/INetworkStatsSession;)Landroid/net/INetworkStatsSession;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1943
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 1944
    .local v5, history:Landroid/net/NetworkStatsHistory;
    if-eqz v5, :cond_5

    .line 1945
    const-wide/high16 v6, -0x8000

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 1947
    .local v17, entry:Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v17, :cond_5

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received bytes  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transferred bytes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1951
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v19, v6, v9

    .line 1955
    .end local v17           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TotalDataUsage for this app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Launch count for this app  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1959
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v6, 0x1

    iput v6, v2, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 1960
    const/high16 v2, 0x10

    const-string v6, "persist.offload.datausage.limit"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget v7, v7, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int v15, v2, v6

    .line 1961
    .local v15, dataUsageThreshold:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data Usage as per launch count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v9, v12

    div-long v9, v19, v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1965
    int-to-long v6, v12

    div-long v6, v19, v6

    int-to-long v9, v15

    cmp-long v2, v6, v9

    if-ltz v2, :cond_7

    .line 1966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v6, "canAppOffload exceeds the threshold so Offload"

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2, v6}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1972
    :cond_7
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1973
    .local v8, cv:Landroid/content/ContentValues;
    add-int/lit8 v12, v12, 0x1

    .line 1974
    const-string v2, "launchcount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v2, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v7, v2, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userid = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "data_usage"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1985
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v15           #dataUsageThreshold:I
    .end local v18           #mStatsService:Landroid/net/INetworkStatsService;
    :catch_0
    move-exception v16

    .local v16, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in reading stats "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v2, v6}, Lcom/android/server/WifiOffloadService;->access$1702(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1987
    .end local v16           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$2200(Lcom/android/server/WifiOffloadService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1991
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify here. canOffload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v7}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/WifiOffloadService$12;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$1800(Lcom/android/server/WifiOffloadService;)V

    goto/16 :goto_0

    .line 1922
    .end local v4           #uid:I
    .restart local v21       #uid:I
    :catch_1
    move-exception v16

    .line 1923
    .restart local v16       #e:Ljava/lang/Exception;
    :try_start_8
    const-string v2, "WifiOffloadService"

    const-string v6, "Exception in getDataUsageforUID for dbHelper"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 1929
    .end local v16           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v16

    move/from16 v4, v21

    .end local v21           #uid:I
    .restart local v4       #uid:I
    .restart local v16       #e:Ljava/lang/Exception;
    :goto_4
    const-string v2, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in getting uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1939
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v3       #template:Landroid/net/NetworkTemplate;
    .restart local v18       #mStatsService:Landroid/net/INetworkStatsService;
    :catch_3
    move-exception v16

    .line 1940
    .local v16, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$2300()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runtime ex in opening netstats session"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1989
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v18           #mStatsService:Landroid/net/INetworkStatsService;
    :catch_4
    move-exception v16

    .local v16, e:Ljava/lang/Exception;
    const-string v2, "WifiOffloadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ex in closing mStatsSession "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1929
    .end local v16           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v16

    goto :goto_4
.end method
