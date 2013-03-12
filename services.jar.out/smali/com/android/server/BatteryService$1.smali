.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 180
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v11, "bootCompleted"

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mBootCompleted:Z
    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;Z)Z

    .line 183
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    .local v1, contentResolver:Landroid/content/ContentResolver;
    iget-object v11, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_switch_onoff"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v11, v8}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 185
    iget-object v11, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v8, "dormant_disable_led_indicator"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_2

    move v8, v9

    :goto_1
    #setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v11, v8}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 186
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v11, "dormant_always"

    invoke-static {v1, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_3

    :goto_2
    #setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 187
    const-string v8, "dormant_start_hour"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 188
    .local v5, dormantStartHour:I
    const-string v8, "dormant_start_min"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 189
    .local v6, dormantStartMinute:I
    const-string v8, "dormant_end_hour"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 190
    .local v2, dormantEndHour:I
    const-string v8, "dormant_end_min"

    invoke-static {v1, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, dormantEndMinute:I
    mul-int/lit8 v8, v5, 0x3c

    add-int v7, v8, v6

    .line 192
    .local v7, dormantStartMinutes:I
    mul-int/lit8 v8, v2, 0x3c

    add-int v4, v8, v3

    .line 193
    .local v4, dormantEndMinutes:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant OnOff Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Disable LED Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant Always Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v10}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dormant time Settings = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ~ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v8, v7, v4}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;II)V

    .line 200
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 214
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #dormantEndHour:I
    .end local v3           #dormantEndMinute:I
    .end local v4           #dormantEndMinutes:I
    .end local v5           #dormantStartHour:I
    .end local v6           #dormantStartMinute:I
    .end local v7           #dormantStartMinutes:I
    :cond_0
    :goto_3
    return-void

    .restart local v1       #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    move v8, v10

    .line 184
    goto/16 :goto_0

    :cond_2
    move v8, v10

    .line 185
    goto/16 :goto_1

    :cond_3
    move v9, v10

    .line 186
    goto/16 :goto_2

    .line 201
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    :cond_4
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v9}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    .line 203
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_3

    .line 204
    :cond_5
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 205
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #setter for: Lcom/android/server/BatteryService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    .line 206
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_3

    .line 207
    :cond_6
    const-string v8, "com.android.server.BatteryService.action.DORMANT_START"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 208
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Dormant mode start"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_3

    .line 210
    :cond_7
    const-string v8, "com.android.server.BatteryService.action.DORMANT_END"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Dormant mode end"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v8, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v8}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    goto :goto_3
.end method
