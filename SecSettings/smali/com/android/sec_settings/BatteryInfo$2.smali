.class Lcom/android/sec_settings/BatteryInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/BatteryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/BatteryInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/BatteryInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 85
    .local v3, plugType:I
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mLevel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$100(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mScale:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$200(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "scale"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mVoltage:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$300(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "voltage"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v7, 0x7f090074

    invoke-virtual {v6, v7}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mTemperature:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$500(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const-string v7, "temperature"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    #calls: Lcom/android/sec_settings/BatteryInfo;->tenthsToFixedString(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/sec_settings/BatteryInfo;->access$400(Lcom/android/sec_settings/BatteryInfo;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v7, 0x7f090076

    invoke-virtual {v6, v7}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mTechnology:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$600(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "technology"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mStatus:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$700(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    invoke-virtual {v5}, Lcom/android/sec_settings/BatteryInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/sec_settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    packed-switch v3, :pswitch_data_0

    .line 109
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$800(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v6, 0x7f090086

    invoke-virtual {v5, v6}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_0
    const-string v4, "health"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 115
    .local v1, health:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f090088

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, healthString:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mHealth:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$900(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .end local v1           #health:I
    .end local v2           #healthString:Ljava/lang/String;
    .end local v3           #plugType:I
    :cond_0
    return-void

    .line 97
    .restart local v3       #plugType:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$800(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v6, 0x7f090082

    invoke-virtual {v5, v6}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$800(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v6, 0x7f090083

    invoke-virtual {v5, v6}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$800(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v6, 0x7f090084

    invoke-virtual {v5, v6}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    #getter for: Lcom/android/sec_settings/BatteryInfo;->mPower:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/sec_settings/BatteryInfo;->access$800(Lcom/android/sec_settings/BatteryInfo;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v6, 0x7f090085

    invoke-virtual {v5, v6}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 117
    .restart local v1       #health:I
    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f090089

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_1

    .line 119
    .end local v2           #healthString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_3

    .line 120
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v2           #healthString:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 122
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto :goto_1

    .line 123
    .end local v2           #healthString:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x6

    if-ne v1, v4, :cond_5

    .line 124
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f09008c

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_1

    .line 125
    .end local v2           #healthString:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    .line 126
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f09008d

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_1

    .line 128
    .end local v2           #healthString:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/sec_settings/BatteryInfo$2;->this$0:Lcom/android/sec_settings/BatteryInfo;

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/BatteryInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #healthString:Ljava/lang/String;
    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
