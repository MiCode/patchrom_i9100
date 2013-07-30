.class Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings$1;
.super Landroid/database/ContentObserver;
.source "MenuPowerSavingModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 83
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onChange() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;

    #calls: Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V
    invoke-static {v1}, Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;->access$000(Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings$1;->this$0:Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-virtual {v1}, Lcom/android/sec_settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void
.end method
