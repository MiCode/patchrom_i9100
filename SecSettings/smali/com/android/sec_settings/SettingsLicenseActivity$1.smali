.class Lcom/android/sec_settings/SettingsLicenseActivity$1;
.super Landroid/os/Handler;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/sec_settings/SettingsLicenseActivity$1;->this$0:Lcom/android/sec_settings/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/sec_settings/SettingsLicenseActivity$1;->this$0:Lcom/android/sec_settings/SettingsLicenseActivity;

    #calls: Lcom/android/sec_settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/sec_settings/SettingsLicenseActivity;->access$000(Lcom/android/sec_settings/SettingsLicenseActivity;Ljava/lang/String;)V

    .line 163
    .end local v0           #text:Ljava/lang/String;
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/SettingsLicenseActivity$1;->this$0:Lcom/android/sec_settings/SettingsLicenseActivity;

    #calls: Lcom/android/sec_settings/SettingsLicenseActivity;->showErrorAndFinish()V
    invoke-static {v1}, Lcom/android/sec_settings/SettingsLicenseActivity;->access$100(Lcom/android/sec_settings/SettingsLicenseActivity;)V

    goto :goto_0
.end method
