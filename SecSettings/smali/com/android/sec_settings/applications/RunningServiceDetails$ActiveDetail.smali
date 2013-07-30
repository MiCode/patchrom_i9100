.class Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/sec_settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 122
    new-instance v17, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v17 .. v17}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 123
    .local v17, report:Landroid/app/ApplicationErrorReport;
    const/4 v2, 0x5

    move-object/from16 v0, v17

    iput v2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    iput-wide v2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 130
    new-instance v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v12}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 132
    .local v12, info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v2, v2, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

    iget-wide v4, v4, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 137
    :goto_1
    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v9, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/sec_settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "service_dump.txt"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 140
    .local v11, filename:Ljava/io/File;
    const/4 v15, 0x0

    .line 142
    .local v15, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v15           #output:Ljava/io/FileOutputStream;
    .local v16, output:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v2, "activity"

    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "-a"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "service"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 148
    if-eqz v16, :cond_b

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v15, v16

    .line 150
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    const/4 v13, 0x0

    .line 152
    .local v13, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 153
    .end local v13           #input:Ljava/io/FileInputStream;
    .local v14, input:Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v8, v2, [B

    .line 154
    .local v8, buffer:[B
    invoke-virtual {v14, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 155
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 159
    if-eqz v14, :cond_a

    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-object v13, v14

    .line 161
    .end local v8           #buffer:[B
    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 162
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    move-object/from16 v0, v17

    iput-object v12, v0, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 164
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v18, result:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    const-string v2, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const/high16 v2, 0x1000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/sec_settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 196
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #filename:Ljava/io/File;
    .end local v12           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .end local v17           #report:Landroid/app/ApplicationErrorReport;
    .end local v18           #result:Landroid/content/Intent;
    :goto_4
    return-void

    .line 128
    .restart local v17       #report:Landroid/app/ApplicationErrorReport;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 135
    .restart local v12       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, v12, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_1

    .line 148
    .restart local v9       #comp:Landroid/content/ComponentName;
    .restart local v11       #filename:Ljava/io/File;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 145
    :catch_1
    move-exception v10

    .line 146
    .local v10, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t dump service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 148
    if-eqz v15, :cond_0

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto/16 :goto_2

    .end local v10           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v15, :cond_4

    :try_start_8
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :cond_4
    :goto_7
    throw v2

    .line 159
    .restart local v8       #buffer:[B
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 156
    .end local v8           #buffer:[B
    :catch_4
    move-exception v10

    .line 157
    .restart local v10       #e:Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v2, "RunningServicesDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t read service dump: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 159
    if-eqz v13, :cond_1

    :try_start_a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v2

    goto/16 :goto_3

    .end local v10           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :goto_9
    if-eqz v13, :cond_5

    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_5
    :goto_a
    throw v2

    .line 172
    .end local v9           #comp:Landroid/content/ComponentName;
    .end local v11           #filename:Ljava/io/File;
    .end local v12           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .end local v17           #report:Landroid/app/ApplicationErrorReport;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_7

    .line 174
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/sec_settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1008

    const/high16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    .line 178
    :catch_6
    move-exception v10

    .line 179
    .local v10, e:Landroid/content/IntentSender$SendIntentException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 180
    .end local v10           #e:Landroid/content/IntentSender$SendIntentException;
    :catch_7
    move-exception v10

    .line 181
    .local v10, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 182
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v10

    .line 183
    .local v10, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "RunningServicesDetails"

    invoke-static {v2, v10}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 185
    .end local v10           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_8

    .line 186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto/16 :goto_4

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-boolean v2, v2, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v2, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    #calls: Lcom/android/sec_settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/sec_settings/applications/RunningServiceDetails;->access$100(Lcom/android/sec_settings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 193
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/sec_settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/sec_settings/applications/RunningState$BaseItem;

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    #calls: Lcom/android/sec_settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v2}, Lcom/android/sec_settings/applications/RunningServiceDetails;->access$100(Lcom/android/sec_settings/applications/RunningServiceDetails;)V

    goto/16 :goto_4

    .line 148
    .restart local v9       #comp:Landroid/content/ComponentName;
    .restart local v11       #filename:Ljava/io/File;
    .restart local v12       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    .restart local v17       #report:Landroid/app/ApplicationErrorReport;
    :catch_9
    move-exception v3

    goto/16 :goto_7

    .line 159
    .restart local v13       #input:Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    goto/16 :goto_a

    .end local v13           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 156
    .end local v13           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v10

    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 148
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 145
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v10

    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .restart local v8       #buffer:[B
    .restart local v14       #input:Ljava/io/FileInputStream;
    :cond_a
    move-object v13, v14

    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v13       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v8           #buffer:[B
    .end local v13           #input:Ljava/io/FileInputStream;
    .end local v15           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v15, v16

    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v15       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method stopActiveService(Z)V
    .locals 4
    .parameter "confirmed"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/sec_settings/applications/RunningState$ServiceItem;

    .line 93
    .local v0, si:Lcom/android/sec_settings/applications/RunningState$ServiceItem;
    if-nez p1, :cond_0

    .line 94
    iget-object v1, v0, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v2, v0, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    #calls: Lcom/android/sec_settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V
    invoke-static {v1, v2}, Lcom/android/sec_settings/applications/RunningServiceDetails;->access$000(Lcom/android/sec_settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V

    .line 118
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v0, Lcom/android/sec_settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 100
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/sec_settings/applications/RunningState$MergedItem;

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mState:Lcom/android/sec_settings/applications/RunningState;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mState:Lcom/android/sec_settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/RunningState;->updateNow()V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    #calls: Lcom/android/sec_settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/sec_settings/applications/RunningServiceDetails;->access$100(Lcom/android/sec_settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-boolean v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/sec_settings/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mState:Lcom/android/sec_settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/RunningState;->updateNow()V

    .line 114
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    #calls: Lcom/android/sec_settings/applications/RunningServiceDetails;->finish()V
    invoke-static {v1}, Lcom/android/sec_settings/applications/RunningServiceDetails;->access$100(Lcom/android/sec_settings/applications/RunningServiceDetails;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/sec_settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/sec_settings/applications/RunningServiceDetails;

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningServiceDetails;->mState:Lcom/android/sec_settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/RunningState;->updateNow()V

    goto :goto_0
.end method
