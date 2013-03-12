.class Lcom/android/server/BatteryService$DormantSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    .line 238
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 239
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 243
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 245
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "dormant_switch_onoff"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_0

    move v7, v8

    :goto_0
    #setter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v10, v7}, Lcom/android/server/BatteryService;->access$302(Lcom/android/server/BatteryService;Z)Z

    .line 247
    iget-object v10, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v7, "dormant_disable_led_indicator"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_1
    #setter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v10, v7}, Lcom/android/server/BatteryService;->access$402(Lcom/android/server/BatteryService;Z)Z

    .line 248
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string v10, "dormant_always"

    invoke-static {v0, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    :goto_2
    #setter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v7, v8}, Lcom/android/server/BatteryService;->access$502(Lcom/android/server/BatteryService;Z)Z

    .line 249
    const-string v7, "dormant_start_hour"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 250
    .local v4, dormantStartHour:I
    const-string v7, "dormant_start_min"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 251
    .local v5, dormantStartMinute:I
    const-string v7, "dormant_end_hour"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 252
    .local v1, dormantEndHour:I
    const-string v7, "dormant_end_min"

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 253
    .local v2, dormantEndMinute:I
    mul-int/lit8 v7, v4, 0x3c

    add-int v6, v7, v5

    .line 254
    .local v6, dormantStartMinutes:I
    mul-int/lit8 v7, v1, 0x3c

    add-int v3, v7, v2

    .line 255
    .local v3, dormantEndMinutes:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant OnOff Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantOnOff:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Disable LED Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantDisableLED:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant Always Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mDormantAlways:Z
    invoke-static {v9}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dormant time Settings = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ~ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->setDormantAlarm(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;II)V

    .line 262
    iget-object v7, p0, Lcom/android/server/BatteryService$DormantSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v7}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 263
    return-void

    .end local v1           #dormantEndHour:I
    .end local v2           #dormantEndMinute:I
    .end local v3           #dormantEndMinutes:I
    .end local v4           #dormantStartHour:I
    .end local v5           #dormantStartMinute:I
    .end local v6           #dormantStartMinutes:I
    :cond_0
    move v7, v9

    .line 246
    goto/16 :goto_0

    :cond_1
    move v7, v9

    .line 247
    goto/16 :goto_1

    :cond_2
    move v8, v9

    .line 248
    goto/16 :goto_2
.end method
