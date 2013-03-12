.class Lcom/sec/android/internal/ims/IMSService$14;
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
    .line 2996
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3000
    const-string v1, "vtErrorTableUpdateListener"

    .line 3001
    .local v1, FN_TAG:Ljava/lang/String;
    const-string v15, "FN_TAG Entering ---"

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3003
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3004
    .local v2, action:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "SMSIntentAction = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3005
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    const-string v16, " com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3007
    :cond_0
    const-string v5, "202"

    .line 3008
    .local v5, def_errCode:Ljava/lang/String;
    const-string v15, "IMS_ERROR_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, objErrCode:Ljava/lang/Object;
    move-object v7, v12

    .line 3009
    check-cast v7, Ljava/lang/String;

    .line 3011
    .local v7, errCode:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FN_TAG errCode =  ---"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3013
    const-string v6, "Reg Failure"

    .line 3014
    .local v6, def_errString:Ljava/lang/String;
    const-string v15, "IMS_ERROR_STRING"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .local v13, objErrString:Ljava/lang/Object;
    move-object v10, v13

    .line 3015
    check-cast v10, Ljava/lang/String;

    .line 3017
    .local v10, errString:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FN_TAG ErrorSTring =  ---"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3019
    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 3022
    new-instance v8, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 3023
    .local v8, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    new-instance v9, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;

    invoke-direct {v9}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;-><init>()V

    .line 3024
    .local v9, errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/internal/ims/IMSService$14;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 3026
    .local v14, r1:Landroid/content/ContentResolver;
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v14, :cond_1

    .line 3028
    const-string v15, "FN_TAG DB write started_________"

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3029
    iput-object v7, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 3030
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3031
    .local v4, dateFormat:Ljava/text/DateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 3032
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 3033
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FN_TAG Time STamp =  ---"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3034
    iput-object v10, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 3036
    :try_start_0
    invoke-virtual {v9, v8, v14}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3044
    const-string v15, "FN_TAG Insert Success ---"

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3050
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/DateFormat;
    .end local v8           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v9           #errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    .end local v14           #r1:Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return-void

    .line 3038
    .restart local v3       #date:Ljava/util/Date;
    .restart local v4       #dateFormat:Ljava/text/DateFormat;
    .restart local v8       #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    .restart local v9       #errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    .restart local v14       #r1:Landroid/content/ContentResolver;
    :catch_0
    move-exception v11

    .line 3040
    .local v11, ex:Ljava/lang/Exception;
    const-string v15, "FN_TAG Insert Failed ---"

    invoke-static {v15}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3041
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
