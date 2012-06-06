.class Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {p2}, Lcom/android/OriginalSettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/OriginalSettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, batteryStatus:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b053a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, batterySummary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    #getter for: Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    .end local v3           #batterySummary:Ljava/lang/String;
    :cond_0
    return-void
.end method
