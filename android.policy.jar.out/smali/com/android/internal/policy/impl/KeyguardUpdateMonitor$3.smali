.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 425
    .local v11, action:Ljava/lang/String;
    const-string v9, "android.intent.action.TIME_TICK"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 428
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x12d

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 430
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v10, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1900(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v10

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonyPlmn:Ljava/lang/CharSequence;
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1802(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 431
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p2

    #calls: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpnFrom(Landroid/content/Intent;)Ljava/lang/CharSequence;
    invoke-static {v10, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2100(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v10

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mTelephonySpn:Ljava/lang/CharSequence;
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2002(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 432
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x12f

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 433
    :cond_3
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 434
    const-string v9, "status"

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 435
    .local v27, status:I
    const-string v9, "plugged"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 436
    .local v24, plugged:I
    const-string v9, "level"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 437
    .local v18, level:I
    const-string v9, "health"

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 438
    .local v15, health:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x12e

    new-instance v29, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    move-object/from16 v0, v29

    invoke-virtual {v9, v10, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .line 440
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 441
    .end local v15           #health:I
    .end local v18           #level:I
    .end local v20           #msg:Landroid/os/Message;
    .end local v24           #plugged:I
    .end local v27           #status:I
    :cond_4
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 446
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x130

    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;

    move-result-object v30

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 448
    :cond_5
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 449
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v26

    .line 451
    .local v26, state:Landroid/telephony/ServiceState;
    if-eqz v26, :cond_6

    .line 452
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsRoaming:Z
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 454
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mIsRoaming:Z
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2202(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 455
    .end local v26           #state:Landroid/telephony/ServiceState;
    :cond_7
    const-string v9, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 456
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x131

    const-string v30, "android.media.EXTRA_RINGER_MODE"

    const/16 v31, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 458
    :cond_8
    const-string v9, "android.intent.action.PHONE_STATE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 459
    const-string v9, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 460
    .local v26, state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x132

    move/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 461
    .end local v26           #state:Ljava/lang/String;
    :cond_9
    const-string v9, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 463
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x135

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 464
    :cond_a
    const-string v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 465
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x136

    const-string v30, "android.intent.extra.user_id"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 469
    :cond_b
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 470
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1600(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 471
    .local v12, airPlaneEnabled:I
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Received  ACTION_AIRPLANE_MODE_CHANGED = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x13e

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v9, v10, v12, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v20

    .line 473
    .restart local v20       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 476
    .end local v12           #airPlaneEnabled:I
    .end local v20           #msg:Landroid/os/Message;
    :cond_c
    const-string v9, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 477
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x139

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 478
    :cond_d
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 479
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x137

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 483
    :cond_e
    const-string v9, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 484
    const-string v9, "simId"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 486
    .local v25, simId:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x143

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v25

    move/from16 v2, v30

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 491
    .end local v25           #simId:I
    :cond_f
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 492
    .local v19, mode:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    const/16 v17, -0x1

    .line 493
    .local v17, isPush:I
    const-string v9, "com.samsung.pen.INSERT"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 494
    const-string v9, "penInsert"

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 495
    .local v22, penInsert:Z
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "receive broadcast : "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v29, ", "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 497
    if-nez v22, :cond_11

    .line 498
    const/16 v17, 0x1

    .line 499
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x1f5

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 606
    .end local v22           #penInsert:Z
    :cond_10
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReceivePeninsertOnBoot:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2400(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    move-object/from16 v0, v19

    if-ne v0, v9, :cond_1

    .line 607
    const-string v9, "KeyguardUpdateMonitor"

    const-string v10, "Skip update shortcut widget of lock screen when boot and receive pen inserted(true)."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v10, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mReceivePeninsertOnBoot:Z
    invoke-static {v9, v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2402(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 501
    .restart local v22       #penInsert:Z
    :cond_11
    const/16 v17, 0x0

    goto :goto_1

    .line 503
    .end local v22           #penInsert:Z
    :cond_12
    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 504
    const-string v9, "state"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    const/16 v16, 0x1

    .line 505
    .local v16, isHeadsetPlugged:Z
    :goto_2
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "receive broadcast : "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v29, ", "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 507
    if-eqz v16, :cond_14

    .line 508
    const/16 v17, 0x1

    goto :goto_1

    .line 504
    .end local v16           #isHeadsetPlugged:Z
    :cond_13
    const/16 v16, 0x0

    goto :goto_2

    .line 513
    .restart local v16       #isHeadsetPlugged:Z
    :cond_14
    const/16 v17, 0x0

    goto :goto_1

    .line 515
    .end local v16           #isHeadsetPlugged:Z
    :cond_15
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 516
    const-string v9, "android.intent.extra.DOCK_STATE"

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 517
    .local v14, dockMode:I
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "receive broadcast : "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v29, ", "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v9, 0x2

    if-ne v14, v9, :cond_17

    .line 519
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 520
    const/16 v17, 0x1

    .line 531
    :goto_3
    const/4 v9, 0x1

    if-eq v14, v9, :cond_16

    const/4 v9, 0x2

    if-eq v14, v9, :cond_16

    const/4 v9, 0x3

    if-eq v14, v9, :cond_16

    const/4 v9, 0x4

    if-eq v14, v9, :cond_16

    const/4 v9, 0x7

    if-eq v14, v9, :cond_16

    const/16 v9, 0x8

    if-ne v14, v9, :cond_10

    .line 537
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x1f5

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 521
    :cond_17
    const/4 v9, 0x1

    if-eq v14, v9, :cond_18

    const/4 v9, 0x3

    if-eq v14, v9, :cond_18

    const/4 v9, 0x4

    if-ne v14, v9, :cond_19

    .line 524
    :cond_18
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 525
    const/16 v17, 0x1

    goto :goto_3

    .line 527
    :cond_19
    sget-object v19, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 528
    const/16 v17, 0x0

    goto :goto_3

    .line 556
    .end local v14           #dockMode:I
    :cond_1a
    const-string v9, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 557
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 559
    .local v13, bundle:Landroid/os/Bundle;
    if-eqz v13, :cond_10

    .line 560
    const-string v9, "Notification"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/app/Notification;

    .line 561
    .local v21, notification:Landroid/app/Notification;
    const-string v9, "pkg"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 562
    .local v23, pkg:Ljava/lang/String;
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive MISSED_EVENT_ARRIVED : notification = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v29, "pkg = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    if-eqz v23, :cond_10

    if-eqz v21, :cond_10

    .line 564
    const-string v9, "com.android.phone"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v9, :cond_1b

    move-object/from16 v0, v21

    iget v9, v0, Landroid/app/Notification;->missedCount:I

    if-lez v9, :cond_1b

    .line 565
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    invoke-direct {v4, v9, v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;J)V

    .line 566
    .local v4, data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x13a

    move/from16 v0, v29

    invoke-virtual {v10, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 567
    .end local v4           #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    :cond_1b
    const-string v9, "com.android.mms"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v9, :cond_10

    move-object/from16 v0, v21

    iget-object v9, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v9, :cond_10

    .line 568
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v21

    iget-wide v7, v0, Landroid/app/Notification;->when:J

    move-object/from16 v0, v21

    iget-wide v9, v0, Landroid/app/Notification;->threadId:J

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 569
    .restart local v4       #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x13b

    move/from16 v0, v29

    invoke-virtual {v10, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 575
    .end local v4           #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    .end local v13           #bundle:Landroid/os/Bundle;
    .end local v21           #notification:Landroid/app/Notification;
    .end local v23           #pkg:Ljava/lang/String;
    :cond_1c
    const-string v9, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 576
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 578
    .restart local v13       #bundle:Landroid/os/Bundle;
    if-eqz v13, :cond_10

    .line 579
    const-string v9, "Notification"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/app/Notification;

    .line 580
    .restart local v21       #notification:Landroid/app/Notification;
    const-string v9, "pkg"

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 581
    .restart local v23       #pkg:Ljava/lang/String;
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive MISSED_EVENT_REMOVED : notification = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v29, "pkg = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v23, :cond_10

    if-eqz v21, :cond_10

    const-string v9, "com.android.phone"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x13c

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 588
    .end local v13           #bundle:Landroid/os/Bundle;
    .end local v21           #notification:Landroid/app/Notification;
    .end local v23           #pkg:Ljava/lang/String;
    :cond_1d
    const-string v9, "android.provider.Telephony.Threads.action.READ_CHANGED_THREAD_ACTION"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 589
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 590
    const-string v9, "threadId"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v29

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v0, v9

    move/from16 v28, v0

    .line 591
    .local v28, threadId:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x13d

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    const-string v9, "KeyguardUpdateMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onReceive MISSED_MSG_REMOVED : threadId = "

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 595
    .end local v28           #threadId:I
    :cond_1e
    const-string v9, "com.sec.mms.intent.action.LOCKSCREEN_HOVER_UNREAD_MSG"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 596
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHoveringUI:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$2300(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 597
    const-string v9, "ThreadId"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v29

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    long-to-int v0, v9

    move/from16 v28, v0

    .line 598
    .restart local v28       #threadId:I
    const-string v9, "Address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 599
    .local v5, address:Ljava/lang/String;
    const-string v9, "Body"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 600
    .local v6, body:Ljava/lang/String;
    const-string v9, "Date"

    const-wide/16 v29, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v29

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 601
    .local v7, date:J
    new-instance v4, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/impl/sec/CircleMissedEventData;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;JJ)V

    .line 602
    .restart local v4       #data:Lcom/android/internal/policy/impl/sec/CircleMissedEventData;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$3;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$1700(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v29, 0x13b

    move/from16 v0, v29

    invoke-virtual {v10, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
