.class Lcom/android/sec_settings/DateTimeSettingsSetupWizard$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeSettingsSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/DateTimeSettingsSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DateTimeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/sec_settings/DateTimeSettingsSetupWizard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/sec_settings/DateTimeSettingsSetupWizard$1;->this$0:Lcom/android/sec_settings/DateTimeSettingsSetupWizard;

    #calls: Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V
    invoke-static {v0}, Lcom/android/sec_settings/DateTimeSettingsSetupWizard;->access$000(Lcom/android/sec_settings/DateTimeSettingsSetupWizard;)V

    .line 402
    return-void
.end method
